// CppPrototyping.cpp : This file contains the 'main' function. Program execution begins and ends there.
// Checkout https://github.com/roblambell/XboxOneController/blob/master/Sample%20App/XboxController.cpp
//#include <Windows.h>

//#ifndef GAMEPAD
//#define GAMEPAD
//#endif
//#include <Windows.h>
//#include <iostream>
//#include <Xinput.h>
//#pragma comment (lib, "xinput.lib")
//#include <cstdlib>
//#include <string>

// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file

//#ifndef DEFAULT_DEADZONE
//#define XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE  7849
//#define XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE 8689
//#define XINPUT_GAMEPAD_TRIGGER_THRESHOLD    30
//#endif
//#include "Serial.h"
class Gamepad {
private:
    int cId;
    XINPUT_STATE state;

    float deadzoneX;
    float deadzoneY;
	const int ROLL_MAX = 45; //maimumm roll before sounding alarm
	const int PITCH_MAX = 30; //maximum pitch before sounding alarm
	int leftVibrationmotor = 0;
	int rightVibrationmotor = 0;
public:
    Gamepad() {
        deadzoneX = 0.05f;
        deadzoneY = 0.05f;
    }
    Gamepad(float dzX, float dzY) : deadzoneX(dzX), deadzoneY(dzY) {}
    float leftStickX;
    float leftStickY;
    float rightStickX;
    float rightStickY;
    float leftTrigger;
    float rightTrigger;
	int eulerX = 0;
	int eulerY = 0;
	int eulerZ = 0;
	
	//Setting up messages
	bool receive_new_data = false;
	const int DATA_SIZE = 6;
	const int RAW_SERIAL_SIZE = 8;
	const int MSGLEN = 10;
	uint8_t msg[10] = { 0 };

    int  GetPort();
    XINPUT_GAMEPAD* GetState();
    bool connect();
    bool Refresh();
    bool IsPressed(WORD);
    void vibrate(int magnitudeLeft, int magnitudeRight);
	void encode();
	void decode(Serial* port, uint8_t* receivedMessage);
	uint8_t calc_crc8(uint8_t datagram[], uint8_t len);
	bool incoming_serial_valid(uint8_t* receivedMessage);
	float controllerCurve(float x);
	void setEulerAngle(int x, int y, int z);
	void hapticFeedback();
};


//parameter: x, y, z are euler angles, -180 to 180
void Gamepad::setEulerAngle(int x, int y, int z) {
	eulerX = x;
	eulerY = y;
	eulerZ = z;
}

//left and right vibrate different amount to give different feedback
void Gamepad::hapticFeedback() {

	if (abs(eulerX) > ROLL_MAX) {
		leftVibrationmotor += 10000;
		rightVibrationmotor += 1000;
	}
	if (abs(eulerY) > ROLL_MAX) {
		rightVibrationmotor += 10000;
		leftVibrationmotor += 1000;
	}
	vibrate(leftVibrationmotor, rightVibrationmotor);
	leftVibrationmotor = 0;
	rightVibrationmotor = 0;
}

int Gamepad::GetPort()
{
    return cId + 1;
}

XINPUT_GAMEPAD* Gamepad::GetState()
{
    return &state.Gamepad;
}

bool Gamepad::connect() {
    DWORD dwResult;
    for (DWORD i = 0; i < XUSER_MAX_COUNT; i++)
    {
        XINPUT_STATE state;
        ZeroMemory(&state, sizeof(XINPUT_STATE));

        // Simply get the state of the controller from XInput.
        dwResult = XInputGetState(i, &state);

        if (dwResult == ERROR_SUCCESS)
        {
            cId = i;
            return true;
        }
        else
        {
            return false;
        }
    }
	return false;
}   

bool Gamepad::Refresh()
{
    if (cId == -1)
        connect();

    if (cId != -1)
    {
        ZeroMemory(&state, sizeof(XINPUT_STATE));
        if (XInputGetState(cId, &state) != ERROR_SUCCESS)
        {
            cId = -1;
            return false;
        }

        float normLX = fmaxf(-1, (float)state.Gamepad.sThumbLX / 32767);
        float normLY = fmaxf(-1, (float)state.Gamepad.sThumbLY / 32767);

        leftStickX = controllerCurve((abs(normLX) < deadzoneX ? 0 : (abs(normLX) - deadzoneX) * (normLX / abs(normLX))));
        leftStickY = controllerCurve((abs(normLY) < deadzoneY ? 0 : (abs(normLY) - deadzoneY) * (normLY / abs(normLY))));

        if (deadzoneX > 0) leftStickX *= 1 / (1 - deadzoneX);
        if (deadzoneY > 0) leftStickY *= 1 / (1 - deadzoneY);

        //float normRX = fmaxf(-1, (float)state.Gamepad.sThumbRX / 32767);
        float normRY = fmaxf(-1, (float)state.Gamepad.sThumbRY / 32767);

        //rightStickX = (abs(normRX) < deadzoneX ? 0 : (abs(normRX) - deadzoneX) * (normRX / abs(normRX)));
        rightStickY = controllerCurve((abs(normRY) < deadzoneY ? 0 : (abs(normRY) - deadzoneY) * (normRY / abs(normRY))));

        //if (deadzoneX > 0) rightStickX *= 1 / (1 - deadzoneX);
        if (deadzoneY > 0) rightStickY *= 1 / (1 - deadzoneY);

        leftTrigger = (float)state.Gamepad.bLeftTrigger / 255;
        rightTrigger = (float)state.Gamepad.bRightTrigger / 255;

        return true;
    }
    return false;
}
enum send_msg_structure {
	Start,
	LeftStickX,
	LeftStickY,
	RightStickY,
	Rudder,
	Buttons,
	Dpads,
	Crc8_1,
	Crc8_2,
	End
};

//This function will give the curve
float Gamepad::controllerCurve(float x) {
	x = 0.4833 * x + 0.5342 * pow(x, 3);

	if (x > 1) {
		x = 1;
	}
	return x;
}

void Gamepad::vibrate(int magnitudeLeft, int magnitudeRight) {
    XINPUT_VIBRATION vibration;
    ZeroMemory(&vibration, sizeof(XINPUT_VIBRATION));
    vibration.wLeftMotorSpeed = magnitudeLeft; // use any value between 0-65535 here
    vibration.wRightMotorSpeed = magnitudeRight; // use any value between 0-65535 here
    XInputSetState(cId, &vibration);
}
   
bool Gamepad::IsPressed(WORD button)
{
    return (state.Gamepad.wButtons & button) != 0;
}

void Gamepad::encode() {
	/// TO DECODE
	/// left x, y, rudder values:
	/// (value - 100)/2


	msg[Start] = 251; //ASCII for 'A' -->Start
	msg[End] = 252;//ASCII for 'S' --> Stop
	//convert magnitude to angle 
	//leftX, aileron, +23 --> -23

	msg[LeftStickX] = uint8_t(leftStickX * 23 * 2 + 100);

	
	//leftY, elevator, +30 --> -27
	if (leftStickY > 0) {
		msg[LeftStickY] = uint8_t(leftStickY * 30 * 2 + 100);
	}
	else {
		msg[LeftStickY] = uint8_t(leftStickY * 27 * 2 + 100);
	}

	// right Y, ESC, 0 to 250
	msg[RightStickY] = uint8_t(rightStickY * 125 + 125); //rightY  0 to 250


	uint8_t rudder = 100;

	//left trigger -- 100 -- right trigger
	

	if (leftTrigger > 0.05 && rightTrigger < 0.05) {
		rudder = uint8_t(-leftTrigger*37 * 2 +100);
	}
	else if (rightTrigger >0.05  && leftTrigger<0.05)
	{
		rudder = uint8_t(rightTrigger*37 * 2 +100);
	}

	msg[Rudder] = rudder;

	//bit8 bit7 bit6  bit5   bit4 bit3 bit2 bit1
	//LB   RB   view  selec  X     Y   A    B
	
	uint8_t buttons = 0;
	//LB
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_LEFT_SHOULDER) != 0)
	{
		buttons += 128;
	}
	//RB
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_RIGHT_SHOULDER) != 0) {
		buttons += 64;
	}
	//view
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_BACK) != 0) {
		buttons += 32;
	}
	//Select
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_START) != 0) {
		buttons += 16;
	}

	//X
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_X) != 0) {
		buttons += 8;
	}
	//Y
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_Y) != 0) {
		buttons += 4;
	}
	//A
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_A) != 0) {
		buttons += 2;
	}
	//B
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_B) != 0) {
		buttons += 1;
	}
	msg[Buttons] = buttons;
 

	uint8_t D_pads = 0;
	//bit4 bit3 bit2 bit1
	//Up   Down Left Right

	//Up
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_UP) != 0) {
		D_pads += 8;
	}
	//Down
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_DOWN) != 0) {
		D_pads += 4;
	}
	//Left
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_LEFT) != 0) {
		D_pads += 2;
	}
	//Right
	if ((state.Gamepad.wButtons & XINPUT_GAMEPAD_DPAD_RIGHT) != 0) {
		D_pads += 1;
	}
	
	msg[Dpads] = D_pads; //TODO: need to implement theh DPAD checker
	
	//Testing only
	msg[Start] = 251;
	msg[LeftStickX] = 90;
	msg[LeftStickY] = 100;
	msg[RightStickY] = 249;
	msg[Rudder] = 220;
	msg[Buttons] = 121;
	msg[Dpads] = 200;//(rand() % (249 - 0 + 1) + 0);
	msg[Crc8_1] = 0;
	msg[Crc8_2] = 0;
	msg[End] = 252;

	// Implement Crc8
	uint8_t crc8_msg[6] = {0};
	for (uint8_t i = LeftStickX; i < Crc8_1; i++) {
		crc8_msg[i-1] = msg[i];
	}
	//uint8_t crc8_total = calc_crc8(crc8_msg, uint8_t(sizeof(crc8_msg)));
	msg[Crc8_1] = 243;//(crc8_total & 0b11110000);
	msg[Crc8_2] = 143;//(crc8_total & 0b00001111);
}

uint8_t Gamepad::calc_crc8(uint8_t datagram[], uint8_t len) {
	uint8_t crc = 0;
	for (uint8_t i = 0; i < len; i++) {
		uint8_t inbyte = datagram[i];
		for (uint8_t j = 0; j < 8; j++) {
			uint8_t mix = (crc ^ inbyte) & 0x01;
			crc >>= 1;
			if (mix)
				crc ^= 0x8C;
			inbyte >>= 1;
		}
	}
	return crc;
}

