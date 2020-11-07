# Windows10 Serial to ESP8266 Node-MCU
###### Ayush Ghosh (Oct 17, 2020)

## Running Serial between Node-MCU
Connect Node-MCU to a Windows10 laptop.
Open Device Manager and check the COM port number (eg. COM5).
Open `joystick_arduino.sln` with Visual Studio. 
In VS navigate to "Serial.cpp". Change the string in CreateFile() to the actual COM port number.
Rebuild the project and run from either debugger or navigate to exact executable file and run from there.
