#include <Windows.h>
#include <iostream>
#include <Xinput.h>
#pragma comment (lib, "xinput.lib")
//#include <stdlib.h>
//#include <stdio.h>
#include <stdio.h>
#include <tchar.h>
#include "SerialClass.h"
#include <string>
//#include "SerialClass.h"	 // Library described above
//#include "Serial.cpp"


using namespace std;


int main() {
    Serial* port = new Serial("COM4");
    if (port->IsConnected()) cout << "Connected!" << endl;

    char data[32] = "";
    char command[32];
    int datalength = 32;  //length of the data,
    int readResult = 0;
    int n;
    bool new_data = false;
    int wait_gen = 0;
    int msglen = 0;
    int wait_count = 0;
    string message;
    for (int i = 0; i < 32; ++i) { data[i] = 0; } //initial the data array

    //read from user input 
    //this is where I added while loop

    while (1) {
        wait_count++;
        if (wait_count >= wait_gen) {
            new_data = true;
            wait_gen = 0 + (std::rand() % (180 - 0 + 1));//random int between 0 and 180
            wait_count = 0;
        }
        if (new_data) {
            message = to_string(wait_gen);
            strcpy_s(command, message.c_str());
            msglen = strlen(command);
            if (port->WriteData(command, msglen)) {   //write to ESP
                printf("\n(writing success)\n");
            }
            cout << "Sent to ESP: " << command << endl;
            new_data = false;
        }
        /*std::cout << "Enter your command: ";
        std::cin.get(command, 2);     //input command
        std::cin.clear(); // to reset the stream state
        std::cin.ignore(INT_MAX, '\n'); // to read and ignore all characters except 'EOF' 
        int msglen = strlen(command);
        if (port->WriteData(command, msglen)) {   //write to arduino
            printf("\n(writing success)\n");
        }
        */
        //delay
        Sleep(10);

        //read from arduino output
        n = port->ReadData(data, 31);
        if (n != -1) {
            data[n] = 0;
            cout << "ESP responds: " << data << endl;
        }
    }

    system("pause");
    return 0;
}