# Remote-Controlled-Airplane
By Ayush Ghosh and Steven Feng

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://github.com/The-Airplane-Project/Remote-Controlled-Airplane)

In the Remote-Controlled-Airplane project, we aim to create a remote controlled airplane with video streaming and autonomous control capabilities using solely open source standards.


### Mechanical Parts:
*** To be released on GrabCAD ***

### Hardware
A list of our hardware used in this project:
* Brushless Motor 2550KV
* 4 Miuzei SG90 9G Servo Motors
* HC-SR04 Ultrasonic Sonar Distance Sensor
* MPU-9250 GY-9250 9 Axis Sensor Module I2C
* BMP180 Barometric Pressure/Temperature/Altitude Sensor
* NRF24L01+PA+LNA RF Transceiver Modules (radio communication)
* Raspberry Pi Model B 3+ to be used as a **Onboard flight controller**
* NodeMCU ESP8266 to be used as a **Ground radio relay**
* Laptop with Windows 10 to be used as a **Ground base station**
* Xbox Wireless Controller (Compatible with Xinput)

## In this repo
This repository includes all parts of Remote-Controlled-Aiplane project. This includes:
* The flight control state machine for the onboard flight controller on RPi (`/State_Machine`)
* Serial and Radio bridge for the ground radio relay on the NodeMCU ESP8266 (`/NRF24L01/ESPCode`)
* Ground station app for sending joystick inputs and receiving sensor data from the ground radio relay via serial communication (`/Joystick_Arduino`)

# System Overview
The overall communication system is divided into 2 major pipelines: Control and Feedback pipelines.

A Windows based app has been developed for the ground base station which sends joystick commands over to the onboard flight controller.

The onboard flight controller runs a state machine based in Python 3.
### Joystick Control
For this project an Xbox controller (compatible with Xinput) is used. The following controls are currently immplemented:
| Action | Joystick Input |
| --- | --- |
| Roll | Left joystick x axis |
| Pitch| Left joystick y axis |
| Yaw| Left, and right (LT, BT) |
| Throttle| Full power (up position), cruise power (neutral position), idle (down position) |
| Engine start| Screen switch button (to prevent the engine from accidentally starting) |
| Engine stop| Option button |
| Elevator trim Up| RB button (2 deg per press, max 10 deg) |
| Elevator trim Down| LB button (2 deg per press, max 10 deg) |

### Control Pipeline Overview
For more detailed information, please refer to <strong>[pipeline_overview.md](pipeline_overview.md)</strong> 
![Motor Pipeline](/Control_Pipeline.png)


### Feedback Pipeline Overview
For more detailed information, please refer to <strong>[pipeline_overview.md](pipeline_overview.md)</strong>
![Feedback Pipeline](/Feedback_Pipeline.png)


### State Machine Flight Control Overview
For more detailed information, please refer to <strong>[state_machine.md](State_Machine/state_machine.md)</strong>
![State_machine Diagram](/Statemachine_Diagram.png)
### Getting Started
Refer to the [Setup and Operations guide](setup_operations.md) for  setup instructions.


### Features coming up!
 - Implementing Autonomous Flight control
 - Improve feeback visualizations
