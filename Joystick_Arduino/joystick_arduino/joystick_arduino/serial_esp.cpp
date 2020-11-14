#include <Windows.h>
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <tchar.h>
#include <string>
#include <iostream>
#include <Xinput.h>
#pragma comment (lib, "xinput.lib")
#include "Serial.h"
//#include <stdlib.h>
//#include <stdio.h>
//#include "gamepad.cpp"

//#include "SerialClass.h"
//#include <string>
//#include "SerialClass.h"	 // Library described above
#include "gamepad.h"

using namespace std;

int main() {
    Serial* port = new Serial("COM3");//Entering COM port here does not work right now. Ener COM port in file "Serial.h"
    if (port->IsConnected()){
        cout << "Connected!" << endl;
    const int MSGLEN = 8;
    char data[32] = "";
    char command[MSGLEN];
    
    int datalength = 32;  //length of the data,
    int readResult = 0;
    int n;
    bool new_data = false;
    
    string message;
    Gamepad gamepad;
    while (gamepad.connect() == false) {
        Sleep(200);
    }
    for (int i = 0; i < 32; ++i) { data[i] = 0; } //initial the data array

    while (1) {
        if (gamepad.Refresh()) {

            //cout << "Controller connected on port " << gamepad.GetPort() << endl;

            gamepad.encode();

            cout << "Left thumb stick: (" << std::to_string(gamepad.msg[LeftStickX]) << ", " << std::to_string(gamepad.msg[LeftStickY]) << ")   Right thumb stick : (" << std::to_string(gamepad.msg[RightStickY]) << endl;

            cout << "analog trigger: " << std::to_string(gamepad.msg[Rudder]) << "   Buttons: " << std::to_string(gamepad.msg[Buttons]) << " Dpads: "<< std::to_string(gamepad.msg[Dpads]) << endl;
            //Sleep(10);
        }
        
        if (1) {
            for (int i = 0; i < MSGLEN; i++) {
                command[i] = (char)gamepad.msg[i];
            }
            //int controller_x = gamepad.msg[LeftStickX];
            //message = to_string(controller_x);
            //strcpy_s(command, message.c_str());
            
            //MSGLEN = strlen(command);
            if (port->WriteData(command, MSGLEN)) {   //write to ESP
                printf("\n(writing success)\n");
            }
            cout << "Sent to ESP: " << (void*)command[0] << endl;
            new_data = false;
        }

        //delay
        Sleep(50);

        //read from arduino output
        n = port->ReadData(data, 31);
        if (n != -1) {
            data[n] = 0;
            //cout << "Current Message: " << command << endl;
            cout << "ESP responds: " << data << endl;
            Sleep(50);
        }
    }

    system("pause");
    return 0;
    }
    else { // COM Port not connected
        system("pause");
        return 0;
    }
}