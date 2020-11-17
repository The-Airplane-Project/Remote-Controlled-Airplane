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
        cout << "ESP Connected!" << endl;
    const int MSGLEN = 8;
    char command[MSGLEN];
    int count = 0;
    uint8_t receivedMsg[6] = { 0 };
    Gamepad gamepad;
    //while (gamepad.connect() == false) {
    //    Sleep(200);
    //}

    while (1) {
        if (gamepad.Refresh()) {

            //cout << "Controller connected on port " << gamepad.GetPort() << endl;

            //gamepad.encode();

            cout << "Left thumb stick: (" << std::to_string(gamepad.msg[LeftStickX]) << ", " << std::to_string(gamepad.msg[LeftStickY]) << ")   Right thumb stick : (" << std::to_string(gamepad.msg[RightStickY]) << endl;

            cout << "analog trigger: " << std::to_string(gamepad.msg[Rudder]) << "   Buttons: " << std::to_string(gamepad.msg[Buttons]) << " Crc8: "<< std::to_string(gamepad.msg[Crc8]) << endl;
            //Sleep(10);
        }
        
        if (1) {
            //gamepad.encode();
            for (int i = 0; i < MSGLEN; i++) {
                command[i] = i;//(char)gamepad.msg[i];
            }
            
            if (port->WriteData(command, MSGLEN)) {   //write to ESP
                printf("\n(writing success)\n");
            }
            cout << "Sent to ESP: ";
            for (int i = 0; i < MSGLEN; i++) {

                cout << int(command[i]) << " ";
            }
            cout << endl;
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
        //Sleep(50);

    }

    system("pause");
    return 0;
    }
    else { // COM Port not connected
        system("pause");
        return 0;
    }
}
void Gamepad::decode(Serial* port, uint8_t* receivedMessage) {
    static byte ndx = 0;
    static char startMarker = 253;
    static char endMarker = 254;
    static char rc[1] = { 0 };
    static char waste[1] = { 0 };
    static int n;
    //while (port->ReadData(rc, 1) == -1) {}
    receive_new_data = false;
    cout << "decoding" << endl;
    for (int i = 0; i < MSGLEN; i++) {
        receivedMessage[i] = 0;
    }
    //n = port->ReadData(rc, 1);
    while ((receive_new_data == false)) {
        n = (port->ReadData(rc, 1));
                if (n != -1) {

                    if (rc[0] == startMarker) {
                        ndx = 0;
                    }
                    if ((rc[0] != endMarker) && (rc[0] != startMarker)) {

                        receivedMessage[ndx] = rc[0];
                        ndx++;

                        if (ndx >= numChars) {
                            ndx = numChars - 1;
                        }

                    }
                    if (rc[0] == endMarker) {
                        //receivedChars[ndx] = '\0'; // terminate the string
                        ndx = 0;
                        receive_new_data = true;
                    }
                }
    }
    receive_new_data = false;
    for (int i = 0; i < MSGLEN; i++) {
        if (receivedMessage[i] != 0) {
            receive_new_data = true;
            break;
        }
    }

}