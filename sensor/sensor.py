#!/usr/bin/python3

import os
import sys
import time
import smbus

from imusensor.MPU9250 import MPU9250
from imusensor.filters import madgwick

import Adafruit_BMP.BMP085 as BMP085
altimeter = BMP085.BMP085()
sensorfusion = madgwick.Madgwick(0.5)

address = 0x68
bus = smbus.SMBus(1)
imu = MPU9250.MPU9250(bus, address)
imu.begin()

currTime = time.time()
print_count = 0
try:
    while True:
        imu.readSensor()
        for i in range(10):
            newTime = time.time()
            dt = newTime - currTime
            currTime = newTime
    
            sensorfusion.updateRollPitchYaw(imu.AccelVals[0], imu.AccelVals[1], imu.AccelVals[2], imu.GyroVals[0], imu.GyroVals[1], imu.GyroVals[2], imu.MagVals[0], imu.MagVals[1], imu.MagVals[2], dt)

        print('Temp = {0:0.2f} *C'.format(altimeter.read_temperature()))
        print('Pressure = {0:0.2f} Pa'.format(altimeter.read_pressure()))
        print('Altitude = {0:0.2f} m'.format(altimeter.read_altitude()))
        print('Sealevel Pressure = {0:0.2f} Pa'.format(altimeter.read_sealevel_pressure()))   
        print ("mad roll: {0} ; mad pitch : {1} ; mad yaw : {2}".format(sensorfusion.roll, sensorfusion.pitch, sensorfusion.yaw))
        
        print("\n")
        time.sleep(0.01)

except KeyboardInterrupt:
    sys.exit()
