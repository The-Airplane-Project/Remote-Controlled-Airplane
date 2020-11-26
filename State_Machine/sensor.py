# Sets up IMU, altimeter, and file write
# Written by Steven Feng and Ayush Ghosh, Oct 28, 2020
import sys
import time
import FaBo9Axis_MPU9250
import Adafruit_BMP.BMP085 as BMP085
import numpy as np

import csv
from ahrs import MadgwickAHRS
from datetime import datetime, date



class I2C_sensors:
    def __init__(self):
        self.refresh_time = 0.050 #20 hz

        self.logging = False

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
        self.prev_altitude = 0
        self.vertical_speed = 0
        #file name for output (will be sequentially generated)
        self.filename = ''

        self.ahrs = MadgwickAHRS()
    
    
        self.altimeter = BMP085.BMP085()
        x = True
        while(x):
            try:
                self.mpu9250 = FaBo9Axis_MPU9250.MPU9250()
                x = False
            except KeyboardInterrupt:
                x = False
            except:
                pass

        #self.createLogFile()
        #self.calibrate()

    #read sensor data raw
    def readData(self):
        try:
            #a = 1
            self.accel = self.mpu9250.readAccel()
            time.sleep(0.01)
            self.gyro = self.mpu9250.readGyro()
            time.sleep(0.01)
            self.altitude = -2
            self.mag = self.mpu9250.readMagnet()
           
            time.sleep(0.01)
            self.altitude = 32000
            self.altitude = round(self.altimeter.read_altitude(),2)
            time.sleep(0.01)
        except KeyboardInterrupt:
            # quit
            sys.exit()
        
        except:
            print("IOerror passed")
            pass
        #self.vertical_speed = (self.altitude-self.prev_altitude)/self.refresh_time
        #self.prev_altitude = self.altitude

    def calibrate(self):
        #calibrate here
        self.createLogFile()
        #calibration complete
        #return True
        #a = 1

    def createLogFile(self):
        #generate log file based on generation date
        now = datetime.now()
        date_time = now.strftime("%Y-%m-%d-%H-%M-%S")
        self.filename = '/home/pi/Remote-Controlled-Airplane/State_Machine/SensorLog/i2c_sensor'+str(date_time)+'.csv'
        with open (self.filename, mode='w') as logfile:
            file_writer = csv.writer(logfile, delimiter=',', quotechar = '"', quoting = csv.QUOTE_MINIMAL)
            file_writer.writerow(['time', 'altitude', 'temp','roll', 'pitch', 'yaw'])
            return

    #write current sensor value to file
    #must be called after createLogFIle
    def writeToFile(self):
        now = datetime.now().time()
        with open(self.filename, mode='a') as logfile:
            file_writer = csv.writer(logfile, delimiter=',', quotechar = '"', quoting = csv.QUOTE_MINIMAL)
            file_writer.writerow([now, self.altitude,self.temperature, self.roll, self.pitch, self.yaw])
            return

    def convertSensor(self):
        #this function uses AHRS and Kalman filter to convert sensor readings to euler angles
        g = np.array([self.convertToRad(float(self.gyro['x'])),self.convertToRad(float(self.gyro['y'])),self.convertToRad(float(self.gyro['z']))], dtype=float).flatten()
        a = np.array([float(self.accel['x']),float(self.accel['y']),float(self.accel['z'])], dtype=float).flatten()
        m = np.array([float(self.mag['x']),float(self.mag['y']),float(self.mag['z'])], dtype=float).flatten()
        self.ahrs.update(g,a,m)
        [self.roll, self.yaw, self.pitch] = self.ahrs.quaternion.to_euler123()
        self.roll = round(self.convertToDeg(self.roll))
        self.yaw = round(self.convertToDeg(self.yaw))
        self.pitch = round(self.convertToDeg(self.pitch))


    def convertToRad(self, degree):
        pi = 3.141592653589793238462643383279
        return degree*pi/180

    def convertToDeg(self, rad):
        pi = 3.141592653589793238462643383279
        return rad*180/pi
    def write_values(self):
        a = 1
    #sensor thread
    def main(self):
        if self.logging==True:
            sensors.readData()
            sensors.convertSensor()
            sensors.writeToFile()

#test program
if __name__ == '__main__':
    sensors = I2C_sensors()
    
    sensors.calibrate()
    sensors.createLogFile()
    while (1):
        sensors.readData()
        sensors.convertSensor()
        print("yaw: %s" % str(sensors.yaw))
        print("roll: %s" % str(sensors.roll))
        print("pitch: %s" % str(sensors.pitch))
        print("altitude: %s" % str(sensors.altitude))
        sensors.writeToFile()
        time.sleep(0.1)
