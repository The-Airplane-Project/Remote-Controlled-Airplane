// CppPrototyping.cpp : This file contains the 'main' function. Program execution begins and ends there.
// Checkout https://github.com/roblambell/XboxOneController/blob/master/Sample%20App/XboxController.cpp

#include <iostream>
#include <Windows.h>
#include <Xinput.h>
#pragma comment (lib, "xinput.lib")
#include <stdlib.h>
// Run program: Ctrl + F5 or Debug > Start Without Debugging menu
// Debug program: F5 or Debug > Start Debugging menu

// Tips for Getting Started: 
//   1. Use the Solution Explorer window to add/manage files
//   2. Use the Team Explorer window to connect to source control
//   3. Use the Output window to see build output and other messages
//   4. Use the Error List window to view errors
//   5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//   6. In the future, to open this project again, go to File > Open > Project and select the .sln file

#ifndef DEFAULT_DEADZONE
#define XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE  7849
#define XINPUT_GAMEPAD_RIGHT_THUMB_DEADZONE 8689
#define XINPUT_GAMEPAD_TRIGGER_THRESHOLD    30
#endif // 



class Gamepad {
private:
    int cId;
    XINPUT_STATE state;

    float deadzoneX;
    float deadzoneY;


public:
    Gamepad() {
        deadzoneX = 0.05f;
        deadzoneY = 0.02f;
    }
    Gamepad(float dzX, float dzY) : deadzoneX(dzX), deadzoneY(dzY) {}
    float leftStickX;
    float leftStickY;
    float rightStickX;
    float rightStickY;
    float leftTrigger;
    float rightTrigger;

    int  GetPort();
    XINPUT_GAMEPAD* GetState();
    bool connect();
    bool Refresh();
    bool IsPressed(WORD);
    void vibrate(int magnitude);
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


#ifndef MAIN

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


        cout << "Left thumb stick: (" << gamepad.leftStickX << ", " << gamepad.leftStickY << ")   Right thumb stick : (" << gamepad.rightStickX << ", " << gamepad.rightStickY << ")" << endl;

        cout << "Left analog trigger: " << gamepad.leftTrigger << "   Right analog trigger: " << gamepad.rightTrigger << endl;

        if (gamepad.IsPressed(XINPUT_GAMEPAD_A)) cout << "(A) button pressed" << endl;
    }
    }



}
#endif // !1
