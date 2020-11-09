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

class Gamepad {
private:
    int cId;
    XINPUT_STATE state;

    float deadzoneX;
    float deadzoneY;


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
	uint8_t msg[5] = { 0 };
    int  GetPort();
    XINPUT_GAMEPAD* GetState();
    bool connect();
    bool Refresh();
    bool IsPressed(WORD);
    void vibrate(int magnitude);
	void encode();
};

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

        leftStickX = (abs(normLX) < deadzoneX ? 0 : (abs(normLX) - deadzoneX) * (normLX / abs(normLX)));
        leftStickY = (abs(normLY) < deadzoneY ? 0 : (abs(normLY) - deadzoneY) * (normLY / abs(normLY)));

        if (deadzoneX > 0) leftStickX *= 1 / (1 - deadzoneX);
        if (deadzoneY > 0) leftStickY *= 1 / (1 - deadzoneY);

        float normRX = fmaxf(-1, (float)state.Gamepad.sThumbRX / 32767);
        float normRY = fmaxf(-1, (float)state.Gamepad.sThumbRY / 32767);

        rightStickX = (abs(normRX) < deadzoneX ? 0 : (abs(normRX) - deadzoneX) * (normRX / abs(normRX)));
        rightStickY = (abs(normRY) < deadzoneY ? 0 : (abs(normRY) - deadzoneY) * (normRY / abs(normRY)));

        if (deadzoneX > 0) rightStickX *= 1 / (1 - deadzoneX);
        if (deadzoneY > 0) rightStickY *= 1 / (1 - deadzoneY);

        leftTrigger = (float)state.Gamepad.bLeftTrigger / 255;
        rightTrigger = (float)state.Gamepad.bRightTrigger / 255;

        return true;
    }
    return false;
}
enum joystick {
    LeftStickX,
    LeftStickY,
    RightStickY,
    Rudder,
    Buttons
};
void Gamepad::vibrate(int magnitude) {
    XINPUT_VIBRATION vibration;
    ZeroMemory(&vibration, sizeof(XINPUT_VIBRATION));
    vibration.wLeftMotorSpeed = magnitude; // use any value between 0-65535 here
    vibration.wRightMotorSpeed = magnitude; // use any value between 0-65535 here
    XInputSetState(cId, &vibration);
}
   
bool Gamepad::IsPressed(WORD button)
{
    return (state.Gamepad.wButtons & button) != 0;
}

void Gamepad::encode() {
	msg[LeftStickX] = uint8_t(leftStickX * 90 + 90); //leftX 0 to 180
	msg[LeftStickY] = uint8_t(leftStickY * 90 + 90); //leftY 0 to 180
	msg[RightStickY] = uint8_t(rightStickY * 120 + 120); //rightY  0 to 240
	uint8_t rudder = 255;

	//left trigger 0 -> 89
	//right trigger 91 --> 180

	if (leftTrigger > 0.05 && rightTrigger < 0.05) {
		rudder = uint8_t(leftTrigger*90);
	}
	else if (rightTrigger >0.05  && leftTrigger<0.05)
	{
		rudder = uint8_t( 90 + rightTrigger * 90);
	}
	else if (rightTrigger < 0.05 && leftTrigger < 0.05)
	{
		rudder = 90;
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
 }

//#ifndef MAIN
/*
using std::cout;
using std::endl;

int main()
{
    std::cout << "Starting...\n";
    Gamepad gamepad;

    
    while (1) {
        while (gamepad.connect() == false) {
            Sleep(200);
        }
        if (gamepad.Refresh()){
            
            cout << "Controller connected on port " << gamepad.GetPort() << endl;

			gamepad.encode();

			cout << "Left thumb stick: (" << std::to_string(gamepad.msg[0]) << ", " << std::to_string(gamepad.msg[1]) << ")   Right thumb stick : (" << std::to_string(gamepad.msg[2])<< endl;

			cout << "analog trigger: " << std::to_string(gamepad.msg[3]) << "   Buttons: " << std::to_string(gamepad.msg[4]) << endl;

			Sleep(200);
		}
    }



}*/
//#endif // !1

