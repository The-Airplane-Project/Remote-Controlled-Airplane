# Software Setup and Operation
This document contains software setup instructions as well as operating procedures.

## Getting Started
There are 3 places where software will need to be installed. In the ground station component, there is the Windows machine and the ESP board. Onboard the airplane, there is the Raspberry Pi.

### Windows Machine

#### Windows Application
1. Make sure the machine is running Windows 10. Some joystick features may not work otherwise.
2. Ensure the most up to date version of Visual Studio is installed.
3. Clone this repository.
4. Navigate to `Joystick_Arduino\joystick_arduino\`
5. Open `joystick_arduino.sln` with Visual Studio.
6. Connect ESP Node-MCU board to the Windows machine.
7. Open Device Manager and note the COM port number of the ESP board (eg. COM5).
8. In the Visual Studio project, navigate to "Serial.cpp". Change the string in CreateFile() to the actual COM port number being used.
9. Plug in the Xbox Controller into the Windows machine.
10. Build the VS project and run from either debugger or navigate to exact executable file and run from there.

If the build is successful proceed to the next section.

#### ESP8266 Node-MCU Board
The ESP board is attached to the Radio Module. The Windows machine uses the ESP board to send radio messages to the Raspberry Pi. However one can choose to use an Arduino as well.
Note: The following instructions can be used to setup an Arduino instead of the ESP board. To setup an Arduino ignore steps 2-3 and 5.

1. Ensure the most up to date version of Arduino IDE is installed on the Windows machine.
2. Follow the instructions in the link to setup the ESP board in the Arduino IDE: https://www.instructables.com/Steps-to-Setup-Arduino-IDE-for-NODEMCU-ESP8266-WiF/
3. From the main directory of the repository, navigate to `NRF24L01\ESPCode\sendRecievePi\`.
4. Open `sendRecievePi.ino` with the Arduino IDE.
5. In the `Tools` menu go to `Boards` and select `NodeMCU 1.0`.
6. Also in the `Tools` menu go to `Port` and select the proper COM port used with the board.
7. Click on the upload button to flash the firmware onto the board.

### Onboard Raspberry Pi
The Raspberry Pi is onboard the airplane and acts as a flight controller.

1. Ensure the latest version of Raspberry Pi OS (formerly known as Raspbian) is installed.
2. Install the Pigpio Library (http://abyz.me.uk/rpi/pigpio/). This is used for controlling all servos and motors using PWM in real-time.
3. Clone this repository.
4. To allow the Raspberry Pi to start the flight control system on every boot up. Open and edit the `/etc/rc.local` script:
```bash
$ sudo nano /etc/rc.local
```
5. Near the end of this script file place the following 2 lines:
```bash
# Runs the Pipgpio daemon
sudo pigpiod 
# Runs the main statemachine for the flight controller!
sudo nohup python3 /home/pi/Remote-Controlled-Airplane/State_Machine/main.py &
```

That's it you are done the setup! Proceed to the Operating Procedures.

## Operating Procedures
This contains the instructions on operating the RC plane.

**Starting a Session**
1. Inspect the airplane and make everything is intact. Do the same for the ground station unit (Windows machine and ESP board).
2. On the airplane, plug in the main battery with the ESC.
3. Power on the Raspberry Pi. The Pi will now run the statemachine triggering the Idle state.
4. On the windows machine, plug in the Xbox Controller.
5. On the windows machine plug in the ESP board (or Arduino).
6. Run the `joystick_arduino` executable (Windows app). 

Now you are ready to fly! Enjoy :)

**Ending a Session**
1. Uses the joystick to switch to the Idle state. You should double check that the airplane is in the Idle state by attempting to command control surfaces. If the plane is in Idle, no motors will be moving.
2. Unplug the main battery from the ESC.
3. Shutdown the Raspberry Pi.
4. Quit the Windows app.
