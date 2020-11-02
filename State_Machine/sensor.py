# Sets up gyro, altimeter, and
import sys
import time
import FaBo9Axis_MPU9250
import Adafruit_BMP.BMP085 as BMP085

import csv
from .ahrs import MadgwickAHRS
from datetime import datetime, date



class I2C_sensors:
    def __init__(self):
        #IMU raw values
        self.accel = {}
        self.gyro= {}
        self.mag= {}
        #converted to euler angle with some wicked math
        self.roll = 0
        self.yaw = 0
        self.pitch = 0
        #altimeter angle
        self.altitude = 0
        self.temperature = 0

        #file name for output (will be sequentially generated)
        self.filename = ''

        ahrs = MadgwickAHRS
    #initiate sensors
    def set_up_Sensors(self):
        self.altimeter = BMP085.BMP085()
        self.mpu9250 = FaBo9Axis_MPU9250.MPU9250()

    #read sensor data raw
    def readData(self):
        self.accel = mpu9250.readAccel()
        self.gyro = mpu9250.readGyro()
        self.mag = mpu9250.readMagnet()

        self.altitude = round(altimeter.read_pressure(),2)


    def calibration(selfs):
        #calibrate here

        #calibration complete
        return True

    def createLogFile(self):
        #generate log file based on generation date
        now = datetime.now()
        date_time = now.strftime("%m-%d-%-%H-%M-%S")
        self.filename = str(date_time)+'.csv'
        with open (self.filename, mode='w') as logfile:
            file_writer = csv.writer(logfile, delimiter=',', quotechar = '"', quoting = csv.QUOTE_MINIMAL)
            file_writer.writerow(['time', 'altitude', 'temp','roll', 'pitch', 'yaw'])
            return

    #write current sensor value to file
    #must be called after createLogFIle
    def writeToFile(self):
        now = datetime.now().time()
        with open(self.filename, mode='w') as logfile:
            file_writer = csv.writer(logfile, delimiter=',', quotechar = '"', quoting = csv.QUOTE_MINIMAL)
            file_writer.writerow([now, self.altitude,self.temperature, self.roll, self.pitch, self.yaw])
            return

    def convertSensor(self,ahrs):
        #this function uses AHRS and Kalman filter to convert sensor readings to euler angles
        ahrs.update(a,b,c)
        ahrs.

