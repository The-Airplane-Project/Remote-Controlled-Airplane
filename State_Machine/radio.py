#by Ayush and Steven Nov 6, 2020
#This class will handle communication between radio, and does proper decoding

from datetime import datetime, date
#import motor controller class, sensor class, statemachine class, ultrasound class, plane.py




class radio:
    def __init__(self):
        #initilaize radio parameters

    def read_from_radio(self):
        #line 52 - 68
        #if get stuck in this func for too long, signal emergency --> based on current statemachine implementation, we won't go to emergency unless if we are in cruise



    def decode_message(self):
    # decode message and store to class variables
    # has the logic to determine when the button is pressed or not( pressed --> hold, then release)
    # have to store previous data
    # trim: check buttons, but only output -1, 0, or 1, for detrim, and trim

    def write_to_motor(self):
    #call th ewrite to motor method to write

    def send_message(self):
     # grab variables from i2c_sensor, ultrasound, and send

    def checkShouldArm(self):
        #checks right joystick values to determine if we should

    def checkStateChange(self):
    #look at button values to determine if we need to change state, send out the state change flags accordingly

    def soft_reset(self):
        #restart the radio without changing member variables

    def radio_stop(self):
        #stops the radio without changing data variables

