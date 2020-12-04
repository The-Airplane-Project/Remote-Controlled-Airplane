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

SYSTEMTIME st;

string plane_state[8] = {
    "idle",
    "standby",
    "cruise",
    "emergency",
    "level_flight",
    "autonomous_takeoff",
    "autonomous_land",
    "invalid"
};

void send_to_GUI(uint8_t* receivedMessage) {
    //A ROS FUNCTION that packages incoming data and publishes

    /***********************************
    message: roll -- yaw -- pitch-- (Signed + statemachine) --altitude_byte1 -- altitude_byte2
         1 for positive, 0 for negative
         roll yaw pitch - 0 - [State Machine]
         0 idle
         1 standby
         2 cruise
         3 emergency
         4 level flight
         5 autonomous takeoff
         6 autonomous land
    *************************************/
    uint8_t byte4 = receivedMessage[3];
    static int16_t altitude = 0;
    static int vertical_speed = 0;
    static int roll = 0;
    static int pitch = 0;
    static int yaw = 0;
    static uint8_t curr_state = 0;
    //Decode algorithm for altitude
    uint8_t alt_1 = receivedMessage[4];
    uint8_t alt_2 = receivedMessage[5];

    if (alt_2 & (0b1 << 7)) { //if negative number flag checked
        altitude = 0 - (alt_1 | ((alt_2 & 0b1111111) << 8));
    }
    else {//positive number
        altitude = (alt_1 | (alt_2 << 8));
    }

    //Determine positive or negative for roll
    if (byte4 & (1 << 7)) {
        roll = (int)receivedMessage[0];
    }
    else {
        roll = 0 - (int)receivedMessage[0];
    }

    //Determine positive or negative for yaw
    if (byte4 & (1 << 6)) {
        yaw = (int)receivedMessage[1];
    }
    else {
        yaw = 0 - (int)receivedMessage[1];
    }

    //Determine positive or negative for pitch
    if (byte4 & (1 << 5)) {
        pitch = (int)receivedMessage[2];
    }
    else {
        pitch = 0 - (int)receivedMessage[2];
    }

    //Determine State
    curr_state = byte4 & (0b00001111);//get first 4 bits to determine state
    if (curr_state > 7) {
        curr_state = 7;
    }
    cout << "Roll: " << roll << " | Yaw: " << yaw
        << " | Pitch: " << pitch << " | State: " << plane_state[curr_state]
        << " | Altitude: " << altitude << endl;

    //"Vertical Speed: " << vertical_speed << endl;

    //TODO: NEED TO IMPLEMENT Veritcal speed
}
int main() {
    Serial* port = new Serial("COM3");//Entering COM port here does not work right now. Ener COM port in file "Serial.h"
    if (port->IsConnected()){
        cout << "ESP Connected!" << endl;
    const int MSGLEN = 10;
    const int RAW_SERIAL_SIZE = 8;
    const int DATA_SIZE = 6;
    char command[MSGLEN];
    int count = 0;
    uint8_t receivedMsg[RAW_SERIAL_SIZE] = { 0 };
    Gamepad gamepad;
    while (gamepad.connect() == false) {
       Sleep(200);
    }

    while (1) {
        if (gamepad.Refresh()) {

            //cout << "Controller connected on port " << gamepad.GetPort() << endl;

            gamepad.encode();

            cout << "Left thumb stick: (" << std::to_string(gamepad.msg[LeftStickX]) << ", " << std::to_string(gamepad.msg[LeftStickY])
                << ")   Right thumb stick : (" << std::to_string(gamepad.msg[RightStickY]) << endl;
            Sleep(10);
            /*cout << "analog trigger: " << std::to_string(gamepad.msg[Rudder]) << "   Buttons: " 
                << std::to_string(gamepad.msg[Buttons]) << "   DPad: "<< std::to_string(gamepad.msg[Dpads])
                << " Crc8: "<< std::to_string(gamepad.msg[Crc8_1])
                << " "<< std::to_string(gamepad.msg[Crc8_2]) << endl;
            *///Sleep(10);
            if (1) {
                //gamepad.encode();

                for (int i = 0; i < MSGLEN; i++) {
                    command[i] = gamepad.msg[i];
                }

                if (port->WriteData(command, MSGLEN)) {   //write to ESP
                    printf("\n(writing success)\n");
                }
                GetSystemTime(&st);
                printf("The system time is: %02d:%02d:%02d:%02d ", st.wHour, st.wMinute, st.wSecond, st.wMilliseconds);
                cout << count << "Sent to ESP: ";
                for (int i = 0; i < MSGLEN; i++) {
                    cout << (int)(unsigned char)command[i] << " ";
                }
                cout << endl;
            }
		}
        

        //read from arduino output
        
		do {
			gamepad.decode(port, receivedMsg);
		} while (!gamepad.receive_new_data);
            GetSystemTime(&st);
            printf("The system time is: %02d:%02d:%02d:%02d ", st.wHour, st.wMinute, st.wSecond, st.wMilliseconds);
            cout << count << "ESP responds: ";
            
            for (int i = 0; i < RAW_SERIAL_SIZE; i++) {

                cout << int(receivedMsg[i]) << " ";
            }
            cout << endl;
            gamepad.receive_new_data = false;
        
        count++;
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
    static bool stop_loop = false;
    static int n;
    
	//while (port->ReadData(rc, 1) == -1) {}
   // cout << "decoding" << endl;
    for (int i = 0; i < RAW_SERIAL_SIZE; i++) {
        receivedMessage[i] = 0;
    }
    
    while ((stop_loop == false)) {
        n = (port->ReadData(rc, 1));
                if (n != -1) {

                    if (rc[0] == startMarker) {
                        ndx = 0;
                    }
                    if ((rc[0] != endMarker) && (rc[0] != startMarker)) {

                        receivedMessage[ndx] = rc[0];
                        ndx++;

                        if (ndx >= RAW_SERIAL_SIZE) {
                            ndx = RAW_SERIAL_SIZE - 1;
                        }

                    }
                    if (rc[0] == endMarker) {
                        //receivedChars[ndx] = '\0'; // terminate the string
                        ndx = 0;
                        stop_loop = true;
                    }
                }
    }
    stop_loop = false;
    receive_new_data = false;
    for (int i = 0; i < RAW_SERIAL_SIZE; i++) {
        if (receivedMessage[i] != 0) {
            //Do the error checking with crc8 and then copy into GUI here
            if (incoming_serial_valid(receivedMessage)) {
                receive_new_data = true;
                break; 
            }
        }
    }

}
bool Gamepad:: incoming_serial_valid(uint8_t* receivedMessage) {
    uint8_t crc8_test[6] = {0}; //6 = DATA_SIZE
    for (int i = 0; i < DATA_SIZE; i++) {
        crc8_test[i] = receivedMessage[i];
    }
    static uint8_t crc8_total = 0;
    crc8_total = calc_crc8(crc8_test, uint8_t(sizeof(crc8_test)));

    if (crc8_total == (receivedMessage[6] | receivedMessage[7])) {
        return true; //Data is valid and will be sent to gui
    }    
    //Data is invalid so message wont be sent
    return false;
}
