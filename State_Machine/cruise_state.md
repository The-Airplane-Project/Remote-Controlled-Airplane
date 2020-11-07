# Cruise State Proposal
Drafted by Steven, Edited by Ayush

Nov 1, 2020

## Airplane Object
* Motor Controller 
  * 4 servos
  * ESC
* Radio
  * NRF24 module
  * Logic for button press (only send button press signal if it's pressed, then released)
  * contains logic for state change
* I2C Sensor
  * Altimeter
  * IMU
  * AHRS algorithm
  * Quaternion
  * csv class
* Ultrasound
  * Ultrasound (with pigpio)
* PiCam
  * PiCam
 
## Cruise State Command Tree
* Radio Class-->main thread
    * radio listen
    * decode message
    * call updatemotor method in motor controller
    * read from sensor (I2C sensor class var)
    * package data to ESP
    * Check for state change

* I2C_Sensor --> thread 2
    * get sensor data, altimeter, IMU (20 Hz)
    * compute sensor data (AHRS), vertical speed
    * log data

* Ultrasound --> thread 3
    * get sensor data: 20hz when within 3m, 1hz when over 3m
    * compute distance
    * log data

* Pi Cam --> thread 4
    * Record

