# Sets up IMU, altimeter, and file write
# Written by Steven Feng and Ayush Ghosh, Oct 28, 2020
import os
import sys
import time
import smbus

from imusensor.MPU9250 import MPU9250
from imusensor.filters import madgwick

import Adafruit_BMP.BMP085 as BMP085


import csv

from datetime import datetime, date
from multiprocessing import Array


class I2C_sensors:
    def __init__(self):
        self.refresh_time = 0.050 #20 hz

        self.logging = True

        #altimeter angle
        self.altitude = 0
        self.temperature = 0
        self.prev_altitude = 0
        self.vertical_speed = 0
        #file name for output (will be sequentially generated)
        self.filename = ''

        self.sensorfusion = madgwick.Madgwick(0.5)

        address = 0x68
        bus = smbus.SMBus(1)
        self.imu = MPU9250.MPU9250(bus, address)
        self.imu.begin()
        
        self.altimeter = BMP085.BMP085()

        #self.createLogFile()
        #self.calibrate()

        self.sensor_data = Array('d', [0.0, 0.0, 0.0, 0.0, 0.0])
    
    #read sensor data raw
    def readData(self):
        try:
            currTime = time.time()
            self.imu.readSensor()
            for i in range(10):
                newTime = time.time()
                dt = newTime - currTime
                currTime = newTime
                self.sensorfusion.updateRollPitchYaw(self.imu.AccelVals[0], self.imu.AccelVals[1], self.imu.AccelVals[2], self.imu.GyroVals[0], self.imu.GyroVals[1], self.imu.GyroVals[2], self.imu.MagVals[0], self.imu.MagVals[1], self.imu.MagVals[2], dt)

            self.altitude = 32000
            self.altitude = round(self.altimeter.read_altitude(),2)
            print("Altitude: ", self.altitude)
            print ("mad roll: {0} ; mad pitch : {1} ; mad yaw : {2}".format(self.sensorfusion.roll, self.sensorfusion.pitch, self.sensorfusion.yaw))
            time.sleep(0.01)
        except KeyboardInterrupt:
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
            file_writer.writerow([now, self.altitude,self.temperature, self.sensorfusion.roll, self.sensorfusion.pitch, self.sensorfusion.yaw])
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
    
    def write_shared_data(self):
        try:
            self.sensor_data.acquire()
            self.sensor_data[0] = self.altitude
            self.sensor_data[1] = self.temperature
            self.sensor_data[2] = self.sensorfusion.roll
            self.sensor_data[3] = self.sensorfusion.pitch
            self.sensor_data[4] = self.sensorfusion.yaw
            self.sensor_data.release()
        except Exception as e:
            print (e)
            self.sensor_data.release()

    def read_shared_data(self):
        try:
            self.sensor_data.acquire()
            x = self.sensor_data[:]
            self.sensor_data.release()
            return x
        except Exception as e:
            print (e)
            self.sensor_data.release()
        
    #sensor thread
    def main(self):
        time_wait = time.time() + 0.2
        while (True):
            if self.logging==True:
                self.readData()
                #sensors.convertSensor()
                if (time.time() >= time_wait):
                    self.writeToFile()
                    self.write_shared_data()
                    time_wait = time.time() + 0.2

#test program
if __name__ == '__main__':
    sensors = I2C_sensors()
    
    sensors.calibrate()

    sensors.logging=True
    sensors.main()
        #sensors.readData()
        #sensors.convertSensor()
        #print("yaw: %s" % str(sensors.yaw))
        #print("roll: %s" % str(sensors.roll))
        #print("pitch: %s" % str(sensors.pitch))
        #print("altitude: %s" % str(sensors.altitude))
        #sensors.writeToFile()
        #time.sleep(0.1)
