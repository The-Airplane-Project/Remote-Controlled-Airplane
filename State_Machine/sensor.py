# Sets up gyro, altimeter, and
import sys
import time
import FaBo9Axis_MPU9250
import Adafruit_BMP.BMP085 as BMP085

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

    def createLogFile(self,filename):
        #generate random file name

    def writeToFile(self,filename):

    def convertSensor(self):