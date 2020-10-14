#include <Windows.h>
#include <iostream>
#include <Xinput.h>
#pragma comment (lib, "xinput.lib")
//#include <stdlib.h>
//#include <stdio.h>
#include <stdio.h>
#include <tchar.h>
#include "SerialClass.h"
//#include "SerialClass.h"	 // Library described above
//#include "Serial.cpp"


using namespace std;


int main() {
    Serial* port = new Serial("COM6");
    if (port->IsConnected()) cout << "Connected!" << endl;

    char data[4] = "";
    char command[2] = "";
    int datalength = 4;  //length of the data,
    int readResult = 0;
    int n;

    for (int i = 0; i < 4; ++i) { data[i] = 0; } //initial the data array

    //read from user input 
    //this is where I added while loop

    while (1) {
        std::cout << "Enter your command: ";
        std::cin.get(command, 2);     //input command
        std::cin.clear(); // to reset the stream state
        std::cin.ignore(INT_MAX, '\n'); // to read and ignore all characters except 'EOF' 
        int msglen = strlen(command);
        if (port->WriteData(command, msglen)) {   //write to arduino
            printf("\n(writing success)\n");
        }

        //delay
        Sleep(10);

        //read from arduino output
        n = port->ReadData(data, 4);
        if (n != -1) {
            data[n] = 0;
            cout << "arduino: " << data << endl;
        }
    }

    system("pause");
    return 0;
}