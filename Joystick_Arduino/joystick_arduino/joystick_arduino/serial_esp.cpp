#include <Windows.h>
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <tchar.h>
#include <string>
#include <iostream>
#include <Xinput.h>
#pragma comment (lib, "xinput.lib")
//#include "Serial.h"
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
        cout << "ESP Connected!" << endl;
    const int MSGLEN = 8;
    char command[MSGLEN];
    int count = 0;
    uint8_t receivedMsg[6] = { 0 };
    Gamepad gamepad;
    while (gamepad.connect() == false) {
        Sleep(200);
    }

    while (1) {
        if (gamepad.Refresh()) {

            //cout << "Controller connected on port " << gamepad.GetPort() << endl;

            gamepad.encode();

            cout << "Left thumb stick: (" << std::to_string(gamepad.msg[LeftStickX]) << ", " << std::to_string(gamepad.msg[LeftStickY]) << ")   Right thumb stick : (" << std::to_string(gamepad.msg[RightStickY]) << endl;

            cout << "analog trigger: " << std::to_string(gamepad.msg[Rudder]) << "   Buttons: " << std::to_string(gamepad.msg[Buttons]) << " Crc8: "<< std::to_string(gamepad.msg[Crc8]) << endl;
            //Sleep(10);
        }
        
        if (1) {
            for (int i = 0; i < MSGLEN; i++) {
                command[i] = (char)gamepad.msg[i];
            }
            
            if (port->WriteData(command, MSGLEN)) {   //write to ESP
                printf("\n(writing success)\n");
            }
            cout << "Sent to ESP: " << (void*)command[0] << endl;
        }

        //delay
        Sleep(50);

        //read from arduino output
        

        gamepad.decode(port, receivedMsg);
        if (gamepad.receive_new_data) {
            cout << count << " ESP responds: ";
            count++;
            for (int i = 0; i < 6; i++) {

                cout << int(receivedMsg[i]) << " ";
            }
            cout << endl;
            gamepad.receive_new_data = false;
        }
        //delay
        Sleep(50);

    }

    system("pause");
    return 0;
    }
    else { // COM Port not connected
        system("pause");
        return 0;
    }
}