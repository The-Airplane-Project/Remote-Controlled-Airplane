#!/usr/bin/python3
import FaBo9Axis_MPU9250
import Adafruit_BMP.BMP085 as BMP085

import time
import sys


mpu9250 = FaBo9Axis_MPU9250.MPU9250()
altimeter = BMP085.BMP085()
try:
    while True:
        accel = mpu9250.readAccel()
        time.sleep(0.01)
        print(" ax = " , ( accel['x'] ))
        print(" ay = " , ( accel['y'] ))
        print(" az = " , ( accel['z'] ))

        gyro = mpu9250.readGyro()
        time.sleep(0.01)
        print(" gx = " , ( gyro['x'] ))
        print(" gy = " , ( gyro['y'] ))
        print(" gz = " , ( gyro['z'] ))

        mag = mpu9250.readMagnet()
        time.sleep(0.01)
        print(" mx = " , ( mag['x'] ))
        print(" my = " , ( mag['y'] ))
        print(" mz = " , ( mag['z'] ))

        print('Temp = {0:0.2f} *C'.format(altimeter.read_temperature()))
        print('Pressure = {0:0.2f} Pa'.format(altimeter.read_pressure()))
        print('Altitude = {0:0.2f} m'.format(altimeter.read_altitude()))
        print('Sealevel Pressure = {0:0.2f} Pa'.format(altimeter.read_sealevel_pressure()))   
        print("\n")
        time.sleep(0.5)

except KeyboardInterrupt:
    sys.exit()
