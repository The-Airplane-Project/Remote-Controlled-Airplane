#!/usr/bin/python3
#By Steven Feng and Ayush Ghosh
from state import State
from plane import radio, motors
import time
import sys
#TODO: Implement autonomous states
#Joystick button indexes
LB = 7
RB = 6
motorDisable = 5
motorEnable = 4
X = 3
Y = 2
A = 1
B = 0

ARM_TIME_OUT = 12 # Number of messages before arm sequence resets

#bit8 bit7 bit6  bit5   bit4 bit3 bit2 bit1
#LB   RB   view  selec  X    Y    A    B

class IdleState (State):
    def on_event(self, event):
        if (event == "EngOnBtn"):
            return StandbyState()
        return self
        
    def run(self):
        print("Running IdleState")
        radio.start_radio()
        
        looping = True
        while looping:
            #btn_num = int(input("Enter num: "))
            #radio.receivedMessage = [10, 100, 110, 90, btn_num, 80]

            t = radio.read_from_radio()
            [radio_valid, x] = radio.decode_message()
            
            if (radio_valid):
                print (radio.button_event_state)
                if (radio.button_event_state[motorEnable]):
                    looping = False
                    return "EngOnBtn"

        print ("Its whack that you are here in this spot in IdleState. Something terribly wrong")
        return "Error"


class StandbyState(State):
    def on_event(self, event):
        if (event == "Cruise"):
            return CruiseState()
        if (event == "EngOffBtn"):
            return IdleState()
        return self

    def reset_arm_sequence(self):
        radio.neg_throttle_flag_1 = False
        radio.pos_throttle_flag_2 = False
        radio.cen_throttle_flag_3 = False

    def run(self):
        print("Running StandbyState")
        self.reset_arm_sequence()
        time_out_counter = 0

        while (not radio.cen_throttle_flag_3):
            print (radio.neg_throttle_flag_1)
            print (radio.pos_throttle_flag_2)
            print (radio.cen_throttle_flag_3)
        
            #btn_num = 0 #int(input("Enter num: "))
            #throt_num = int(input("Enter throttle: "))
            #radio.receivedMessage = [10, 100, throt_num, 90, btn_num, 80]
            t = radio.read_from_radio()

            #return aileron, rudder, elevator, escValue, trimoffset
            [success, msg_decode] = radio.decode_message()
            if (success):
                motors.write_motor(msg_decode[0], msg_decode[1], msg_decode[2], 0, msg_decode[4])
                time_out_counter += 1
                if (radio.button_event_state[motorDisable]):
                    return "EngOffBtn"
                
                if time_out_counter >= ARM_TIME_OUT:
                    self.reset_arm_sequence()
                    time_out_counter = 0

                if (not radio.neg_throttle_flag_1):
                    if (msg_decode[3] < 3):
                        radio.neg_throttle_flag_1 = True
                        time_out_counter = 0
                if (radio.neg_throttle_flag_1):
                    if (msg_decode[3] < 3):
                        time_out_counter = 0
                    
                    if (msg_decode[3] > 237):
                        radio.pos_throttle_flag_2 = True
                        time_out_counter = 0
                if (radio.neg_throttle_flag_1 and radio.pos_throttle_flag_2):
                    if (msg_decode[3] < 125 and msg_decode[3] > 115):
                        radio.cen_throttle_flag_3 = True
                        time_out_counter = 0
                        return "Cruise"
        
        print ("Its whack that you are here in this spot in StandbyState. Something terribly wrong")
        return "Error"
class CruiseState (State):
    def on_event(self, event):
        if (event == "Lost"):
            return EmergencyState()
        elif(event == "EngOffBtn"):
            return StandbyState()
            
        return self
    def run(self):
        print("Running CruiseState")
        motors.ESC.arm()
        
        radio_valid = True
        while (radio_valid):
            t = radio.read_from_radio()
            
            #btn_num = int(input("Enter btn num. Entering 400 will eventually start emergency: "))
            #if btn_num == 400:
            #    radio.receivedMessage = []
            #else:
            #    radio.receivedMessage = [10, 100, 150, 90, btn_num, 80]

            [radio_valid, msg_decode] = radio.decode_message()
            
            if (radio_valid):
                if (radio.button_event_state[motorDisable] and msg_decode[3] < 3):
                    return "EngOffBtn"
                
                if (msg_decode != []):
                    #Write The Motors in order: (aileronValue_, rudderAngle_, elevatorAngle_, escValue_, trimoffset)
                    print ("Writing to Motors: Ailerons =", msg_decode[0], "Rudder =", msg_decode[1], "Elevator = ", msg_decode[2], "ESC = ", msg_decode[3], "TrimOffset = ", msg_decode[4])
                    motors.write_motor(msg_decode[0], msg_decode[1], msg_decode[2], msg_decode[3], msg_decode[4])

            else:
                return "Lost"
        
        print ("Its whack that you are here in this spot in CruiseState. Something terribly wrong")
        return "Error"
        
class EmergencyState (State):
    def on_event(self, event):
        if (event == "Signal"):
            return CruiseState()
        return self
    def run(self):
        print("Running EmergencyState")       
        
        radio_valid = False
        while (not radio_valid):
            motors.ESC.stop
            #WRITE MOTOR ANGLES AND HOPE FOR THE BEST
            radio.soft_reset()

            t = radio.read_from_radio()
            [radio_valid, msg_decode] = radio.decode_message()
            if (radio_valid and msg_decode != []):
                return "Signal"

        print ("Its whack that you are here in this spot in EmergencyState. Something terribly wrong")
        return "Error"
