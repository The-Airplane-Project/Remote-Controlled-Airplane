# Communication Pipelines Overview
The overall system is divided into 2 major pipelines: Control and Feedback pipelines.

After timing the system we are able to achieve an average roundtrip communication time of 100 ms. For our purposes, a roundtrip is defined as the time it takes for one cycle of data exchange: Send joystick inputs to the airplane (through the control pipeline) followed by immediately receiving the sensor data on the ground station (through the feedback pipeline).

## Control Pipeline
![Motor Pipeline](/Assets/Control_Pipeline.png)
The chain of communication in the Control pipeline is shown in the diagram above.

At first, input data is gathered from the Xbox controller using the XInput library. The Windows based C++ console app that has been developed reads these inputs and packages them into data which can be read by the ESP8266 Node MCU board with the attached radio module. The NRF24L01+ radio module can be used with a ESP board or an Arduino. Thus the Windows app receives the Xbox controller inputs and sends them to the ESP board over a Serial line.

Once the ESP board receives the Serial message, it verifys the validity of the message before extracting the joystick input data and packaging it into a radio packet to be sent over the radio module to the Raspberry Pi onboard the airplane.

The Raspberry Pi decodes the radio packet and performs certain actions depending on the joystick inputs. These actions can include modifying servo motor positions, RPM for main motor (propeller), changing states in statemachine, enabling sensor data collections, etc.

## Feedback Pipeline
![Feedback Pipeline](/Assets/Feedback_Pipeline.png)
The chain of communication in the Feedback pipeline is shown in the diagram above.

At first, the raspberry Pi onboard the airplane will wait to establish valid contact with the ground station (Windows Laptop and ESP board) before sending sensor data back to the ground station. Once connection is established, the data from the onboard sensors (Altimeter, IMU, Ultrasound) are collected. The current state in the statemachine is also recorded. After that, the sensor data and state machine info is packaged into a radio packet to be sent over to the ground station via the NRF24L01+ radio module.

Once the data is received on the ground station, more specifically the ESP Board, it is then sent to the Windows machine via the Serial line.

The Windows machine then verifys the validity of the the serial message before displaying the feedback data and depending on certain cases, triggering haptic feedback on the Xbox controller.

## Windows Application
The Windows app acts as a central hub for ground station activites. It uses the XInput Library to communicate with the attached Xbox Controller. It also sends and receives data from the ESP board (containing the radio module) via Serial.

In the Control Pipeline, the Windows app receives the Xbox controller inputs and sends them to the ESP board over a Serial line.

In the Feedback Pipeline, the Windows app receives airplane feedback data (containing airplane sensor and statemachine data) from the ESP board via the Serial line. Once it verifys the validity of the message it displays the data in the console. Depending on certain cases of data that is received, vibration/haptic feedback is triggered on the Xbox controller as well.

### Joystick input data message structure:
From the XBox Controller we gather the inputs and package them into 6 bytes of raw data to be sent to the ESP board.
|Byte 0|Byte 1|Byte 2|Byte 3|Byte 4|Byte 5|
|---|---|---|---|---|---|
|LeftStickX|LeftStickY|RightStickY|Rudder|Buttons|Dpads|
|Value (0-250)|Value (0-250)|Value (0-250)|Value (0-250)|Value (0-250)|Value (0-15)|

#### Buttons Byte (Byte 4)
The **Buttons** Byte can be further divided into individual bits representing buttons pressed.

**Buttons Byte:**
|Bit 7|Bit 6|Bit 5|Bit 4|Bit 3|Bit 2|Bit 1|Bit 0|
|---|---|---|---|---|---|---|---|
|LB|RB|View|Select|X|Y|A|B|
|Value (ON: 1, OFF 0)|Value (ON: 1, OFF 0)|Value (ON: 1, OFF 0)|Value (ON: 1, OFF 0)|Value (ON: 1, OFF 0)|Value (ON: 1, OFF 0)|Value (ON: 1, OFF 0)|Value (ON: 1, OFF 0)|

#### DPads Byte (Byte 5)
The **DPads** Byte can be further divided into individual bits representing DPad buttons pressed. Bits 4 - 7 are not used.

**DPads Byte:**
|Bit 7|Bit 6|Bit 5|Bit 4|Bit 3|Bit 2|Bit 1|Bit 0|
|---|---|---|---|---|---|---|---|
|-|-|-|-|Up|Down|Left|Right|
|-|-|-|-|Value (ON: 1, OFF: 0)|Value (ON: 1, OFF: 0)|Value (ON: 1, OFF: 0)|Value (ON: 1, OFF: 0)|

## Onboard Raspberry Pi
The Raspberry Pi onboard the ariplane is essentially the flight controller which commands all of the airplane's control surfaces: 4 servos controlling ailerons, rudder and elevator, ESC motor controller which powers the main motor (propeller). It also gathers data from all the onboard sensors. It stores all sensor data with high detail onboard. Some of the flight critical sensor data as well current situation info is sent back to the ground station. The following section explains the airplane feedback data message structure.

### Airplane feedback data message structure:
The airplane feedback data is 6 bytes and is arranged as such:

|Byte 0|Byte 1|Byte 2|Byte 3|Byte 4|Byte 5|
|---|---|---|---|---|---|
|Roll Angle|Yaw Angle|Pitch Angle|(Signs + States)|Altitude_byte1|Altitude_byte2|
|Value (0-255)|Value (0-255)|Value (0-255)|Value (0-255)|Value (0-255)|Value (0-255)|

#### Altitude Bytes (Byte 4 and Byte 5)
The actual altitude we receive from the altimeter sensor is in the form of a signed 16-bit integer. So the minimum and maximum altitudes that we can get is −32,768 to 32,767. However in order to send this data back over the radio we would need to split this 16-bit integer into 2 8-bit integers.

Thus the Altitude is broken into 2 bytes as shown:

**Altitude(Bits 0-7) -> Altitude_byte1**

**Altitude(Bits 8-15) -> Altitude_byte2**

#### Signs + States Byte (Byte 3)
The **(Signs + States)** Byte can be further divided into individual bits representing the signs (+/-) of the roll/pitch/yaw angles, as well as the current state of the statemachine onboard the airplane.

**(Signs + States) Byte:**
|Bit 7|Bit 6|Bit 5|Bit 4|Bit 3|Bit 2|Bit 1|Bit 0|
|---|---|---|---|---|---|---|---|
|Roll Sign|Yaw Sign|Pitch Sign| Unused |State bit 3|State bit 2|State bit 1|State bit 0|
|Value (-ve: 0, +ve: 1)|Value (-ve: 0, +ve: 1)|Value (-ve: 0, +ve: 1)| - |Value (ON: 1, OFF: 0)|Value (ON: 1, OFF: 0)|Value (ON: 1, OFF: 0)|Value (ON: 1, OFF: 0)|

As shown above the Roll/Pitch/Yaw sign bits indicate whether the corresponding angles in the message are negative or positive.

The Bits 0-3 are looked at together as a 4 bit integer to determine the current state onboard the airplane. 
The States are numbered as such:
|State Name|State Number|
|--|--|
|Idle| 0|
|Standby| 1|
|Cruise|2|
|Emergency|3|
|* Autonomous level flight|4|
|* Autonomous takeoff|5|
|* Autonomous land|6|

The states marked with an asterisk are Autonomous states and will be implemented in the future.

## Serial Communication
Initially, we faced issues with byte synchronization when using the Serial line where the ESP board would either skip over some bytes and send wrong inputs to the Raspberry Pi onboard the airplane. To counteract this issue we implemented Start and End characters which would wrap around each Serial message.

These characters would have these values in the **Control Pipeline -> Start: 251** and **End: 252**   
These characters would have these values in the **Feedback Pipeline -> Start: 253** and **End: 254**   

Additionally, a Cyclic Redundancy Check - 8 bits (CRC8) has been implemented. The CRC8 algorithm generates a check value between 0-255 based on the remainder of a polynomial division of contents in a list. This check value is extremely useful as the message receiver will be able to verify that each byte in the message is exact as well as in the correct order. The CRC8 value is generated by the 6 byte list of Joystick input data (explained above). However since the Stop and End characters can range between 251 - 254, this can cause confusion whether it is a CRC8 value or one of the Start/End characters. To mitigate this problem, the CRC8 value was broken into 2 bytes: **CRC8_1** and **CRC8_2**.

**CRC8(Bits 0-3) -> CRC8_1**

**CRC8(Bits 4-7) -> CRC8_2** 

#### Serial Message Data In Control Pipeline
The Serial message consists a total of 10 bytes. The broad overview of Serial message sent over the serial line to the ESP board in the control pipeline is arranged as such:
| Start Char | Joystick Input Data | CRC8_1 | CRC8_2 | End Char |
|---|---|---|---|---|

In further detail:
|Byte 0|Byte 1|Byte 2|Byte 3|Byte 4|Byte 5|Byte 6|Byte 7|Byte 8|Byte 9|
|---|---|---|---|---|---|---|---|---|---|
|Start Char|LeftStickX|LeftStickY|RightStickY|Rudder|Buttons|Dpads|CRC8_1|CRC8_2|End Char|
|Value (251)|Value (0-250)|Value (0-250)|Value (0-250)|Value (0-250)|Value (0-250)|Value (0-15)|Value (0-15)|Value (0-15)|Value (252)|

#### Serial Message Data In Feedback Pipeline
The Serial message consists a total of 10 bytes. The broad overview of Serial message sent over the serial line to Windows machine in the Feedback pipeline is arranged as such:
| Start Char | Airplane Feedback Data | CRC8_1 | CRC8_2 | End Char |
|---|---|---|---|---|

In further detail:
|Byte 0|Byte 1|Byte 2|Byte 3|Byte 4|Byte 5|Byte 6|Byte 7|Byte 8|Byte 9|
|---|---|---|---|---|---|---|---|---|---|
|Start Char|Roll Angle|Yaw Angle|Pitch Angle|(Signs + States)|Altitude_byte1|Altitude_byte2|CRC8_1|CRC8_2|End Char|
|Value (252)|Value (0-255)|Value (0-255)|Value (0-255)|Value (0-255)|Value (0-255)|Value (0-255)|Value (0-15)|Value (0-15)|Value (254)|

## NRF24L01+ Radio Module
The main payload for each radio message is 6 bytes. 

For the Control pipeline, the payload is made-up entirely of joystick inputs as shown below. This data originated from the Xbox Controller and sent over serial to the ESP board which then sends the following payload via radio to the airplane:
|Byte 0|Byte 1|Byte 2|Byte 3|Byte 4|Byte 5|
|---|---|---|---|---|---|
|LeftStickX|LeftStickY|RightStickY|Rudder|Buttons|Dpads|
|Value (0-250)|Value (0-250)|Value (0-250)|Value (0-250)|Value (0-250)|Value (0-15)|


For the Feedback pipeline, the payload is made-up entirely of airplane feedback data as shown below. This data originated from the the onboard Raspberry Pi and sent over to the ground station via radio:
|Byte 0|Byte 1|Byte 2|Byte 3|Byte 4|Byte 5|
|---|---|---|---|---|---|
|Roll Angle|Yaw Angle|Pitch Angle|(Signs + States)|Altitude_byte1|Altitude_byte2|
|Value (0-255)|Value (0-255)|Value (0-255)|Value (0-255)|Value (0-255)|Value (0-255)|
