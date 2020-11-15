#integrated by Steven and Ayush, Nov 1, 2020

import pigpio
import time
from motor import Servo
from motor import ESC
class motorController:
    def __init__(self, ailLeftPin, ailRightPin, elevPin, rudPin, escPin, pwm):
        self.aileronLeft = Servo(ailLeftPin, 0, pwm)
        self.aileronRight = Servo(ailRightPin, 0, pwm)
        self.elevator = Servo(elevPin, 0, pwm)
        self.rudder = Servo(rudPin, 0, pwm)
        self.ESC = ESC(escPin, 0, pwm) ## TODO: double check if I can actually do this

        #trim
        self.trim_offset = 0
        self.trim_offset_MAX =15
        self.trim_offset_MIN = -15

        #ESC values
        self.escMax = 2000
        self.escMin = 700

        #angles
        self.aileronRightAngle = 0
        self.aileronLeftAngle = 0
        self.aileronAngle = 0
        self.rudderAngle = 0
        self.elevatorAngle = 0
        self.escValue = 0

        #settings
        self.elevatorAngleMAX = 30
        self.elevatorAngleMIN = -27
        self.rudderNEUTRAL = 95
        self.aileronNEUTRAL = 90

    #takes in control surface angles and converts to motor angles
    def decode_angle(self, aileronValue_, rudderAngle_, elevatorAngle_ ):
        #figure out elevatorAngle_
        self.elevatorAngle = self.trim_conversion(elevatorAngle_)
        #convert to motor power
        self.elevatorAngle = round(-2.454*self.elevatorAngle + 92.45)
        
        self.rudderAngle = rudderAngle_
        #figure out rudder angle
        if (abs(rudderAngle_) < 2): #if within +-2
            self.rudderAngle = self.rudderNEUTRAL
        elif (rudderAngle_ < 0): #if negative
            self.rudderAngle = round(94.88 + 2.561*self.rudderAngle + 0.07198* self.rudderAngle*self.rudderAngle+ 0.00136*self.rudderAngle*self.rudderAngle*self.rudderAngle)
        else: #if positive
            self.rudderAngle = round(94.97 + 1.299*self.rudderAngle + 0.005383* self.rudderAngle*self.rudderAngle)

        #figure out aileron angle from
        if (abs(aileronValue_)<2): #if within +-2
            self.aileronValue = 90
            self.aileronLeftAngle = self.aileronNEUTRAL
            self.aileronRightAngle = self.aileronNEUTRAL
        elif(aileronValue_<0): #rolling left
            #left aileron angle positive
            self.aileronLeftAngle = abs(aileronValue_)
            self.aileronLeftAngle = round(90.18+2.527*self.aileronLeftAngle - 0.0162*self.aileronLeftAngle*self.aileronLeftAngle)
            #right aileron negatve
            self.aileronRightAngle = -abs(aileronValue_)
            self.aileronRightAngle = round(90.18-1.882*self.aileronRightAngle+0.1203*self.aileronRightAngle*self.aileronRightAngle+0.003837*self.aileronRightAngle*self.aileronRightAngle*self.aileronRightAngle)

        else: #rolling right
            #left aileron angle negative
            self.aileronLeftAngle = -abs(aileronValue_)
            self.aileronLeftAngle = round(90.02+0.6657*self.aileronLeftAngle-0.09074*self.aileronLeftAngle*self.aileronLeftAngle-0.00192*self.aileronLeftAngle*self.aileronLeftAngle*self.aileronLeftAngle)
            #right aileron angle positive
            self.aileronRightAngle = abs(aileronValue_)
            self.aileronRightAngle =round(89.55-1.556*self.aileronRightAngle-0.007206*self.aileronRightAngle*self.aileronRightAngle)

    #assign angles to motor and ESC
    #trim_offset is either -1, 0, or 1, based on LB, RB button press
    #should be filtered at radio


    #ESC value should be written to 750 or less if not operated
    def write_motor(self, aileronValue_, rudderAngle_, elevatorAngle_, escValue_, trimoffset):
        #compute needed motor angles
        #trim
        if (trimoffset!=0):
            if (trimoffset>0 and self.trim_offset+3 <= self.trim_offset_MAX):
                self.trim_offset+=3
            elif (trimoffset<0 and self.trim_offset-3 >=self.trim_offset_MIN):
                self.trim_offset-=3
        self.decode_angle(aileronValue_, rudderAngle_, elevatorAngle_)
        self.escValue = escValue_*5+700 #since esc value is from 0-240 and we want it from 700 - 2000



        #write to servos
        self.aileronLeft.set_angle(self.aileronLeftAngle)
        self.aileronRight.set_angle(self.aileronRightAngle)
        self.elevator.set_angle(self.elevatorAngle)
        self.rudder.set_angle(self.rudderAngle)
        self.ESC.set_speed(self.escValue)




    ##TODO: configure trim configuration code, could consider standard deviation. currently is using offset
    #function: Takes in angle from the controller, combined with trim offsets, to determine a new elevator angle
    #could use std_deviation to calculate, or jsut a hard offset.
    def trim_conversion(self, elevatorAngle_):
        elevatorAngle_ +=self.trim_offset
        if (elevatorAngle_> self.elevatorAngleMAX):
            elevatorAngle_ = self.elevatorAngleMAX
        elif (elevatorAngle_ < self.elevatorAngleMIN):
            elevatorAngle_ = self.elevatorAngleMIN

        #doing an offset here
        return elevatorAngle_

    def stop_all_servos(self):
        self.aileronLeft.stop()
        self.aileronRight.stop()
        self.elevator.stop() 
        self.rudder.stop()

if __name__ == "__main__":
    pwm = pigpio.pi()
    servo = motorController(25, 22, 5, 24, 21, pwm)
    aileronValue_ = 90
    rudderAngle_ = 90
    elevatorAngle_ = 90
    escValue_ = 0
    trimoffset = 0
    servo.write_motor(aileronValue_, rudderAngle_, elevatorAngle_, escValue_, trimoffset)
    print ("lol")
