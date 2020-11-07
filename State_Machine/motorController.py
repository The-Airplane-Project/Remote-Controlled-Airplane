#integrated by Steven and Ayush, Nov 1, 2020

import pigpio
import time
from .servo import Servo

class motorController:
    def __init__(self, ailLeftPin, ailRightPin, elevPin, rudPin, escPin, pwm):
        self.aileronLeft = Servo(ailLeftPin, 0, pwm)
        self.aileronRight = Servo(ailRightPin, 0, pwm)
        self.elevator = Servo(elevPin, 0, pwm)
        self.rudder = Servo(rudPin, 0, pwm)
        self.ESC = Servo(escPin, 0, pwm) ## TODO: double check if I can actually do this

        #trim
        self.trim_offset = 0
        self.trim_offset_MAX =15
        self.trim_offset_MIN = -15

        #ESC values
        self.escMax = 2000
        self.escMin = 750

        #angles
        self.aileronRightAngle = 0
        self.aileronLeftAngle = 0
        self.rudderAngle = 0
        self.elevatorAngle = 0
        self.escValue = 0

    #assign angles to motor and ESC
    #trim_offset is either -1, 0, or 1, based on LB, RB button press
    #should be filtered at radio

    #ESC value should be written to 750 or less if not operated
    def write_motor(self, aileronValue, rudderAngle_, elevatorAngle_, escValue_, trimoffset):
        #compute needed motor angles
        [self.aileronLeftAngle, self.aileronRightAngle] = self.aileron_value_to_angle_conversion(aileronValue)
        self.rudderAngle = rudderAngle_
        self.elevatorAngle = self.trim_conversion(self.elevatorAngle)
        self.escValue = escValue_*5+750 #since esc value is from 0-240 and we want it from 750 - 2000

        #trim
        if (trimoffset!=0):
            if (trimoffset>0 and self.trim_offset+3 <= self.trim_offset_MAX):
                self.trim_offset+=3
            elif (trimoffset<0 and self.trim_offset-3 >=self.trim_offset_MIN):
                self.trim_offset-=3

        ##TODO: write to ESC --> double check
        #write to servos
        self.aileronLeft.set_angle(self.aileronLeftAngle)
        self.aileronRight.set_angle(self.aileronRightAngle)
        self.elevator.set_angle(self.elevatorAngle)
        self.rudder.set_angle(self.rudderAngle)
        self.ESC.set_pulse(self.escValue)

    ##TODO: write actual code for value to angle conversion
    # converts left joystick x value to actual angles on the left right aileron
    def aileron_value_to_angle_conversion (self, aileronValue):
        #compute the aileron left and aileron right angles
        aileronleft = +aileronValue  #replace this with actual algorithm
<<<<<<< HEAD
        aileronright = 180 -aileronValue  #replacethis with actual algorithm
=======
        aileronright = -aileronValue  #replacethis with actual algorithm
>>>>>>> 91fa4afd64fa180d0484e924c939a303918dd530

        return aileronleft, aileronright


    ##TODO: configure trim configuration code
    #function: Takes in angle from the controller, combined with trim offsets, to determine a new elevator angle
    #could use std_deviation to calculate, or jsut a hard offset.
    def trim_conversion(self, elevatorAngle_):
        #do some calculations

        return elevatorAngle_

    def arm_ESC(self):
        self.ESC.set_pulse(0)
        time.sleep(1)
        self.ESC.set_pulse(self.escMax)
        time.sleep(1)
        self.ESC.set_pulse(self.escMin)
        time.sleep(1)

    def stop_ESC(self):
        self.ESC.set_pulse(0)