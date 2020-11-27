#!/usr/bin/python3
#written by Ayush Ghosh and Steven Feng
from statemachine import IdleState, StandbyState, CruiseState, EmergencyState
from multiprocessing import Process
import sys
import time
from airplane_objects import i2c_sensors
#import threading
##Starting point of the function


class airplane:
    def __init__(self):
        self.state = IdleState()
          
    def on_event(self, event):
        self.state = self.state.on_event(event)
        return self.run_state()
    
    def run_state(self):
        return self.state.run()
    
if __name__ == "__main__":
    drone = airplane()
    t=Process(target=i2c_sensors.main)
    t.start()

    state_str = drone.run_state() #Only running idle state
    while True:
        state_str = drone.on_event(state_str)
        
#    if (drone.on_event('EngOnBtn')):
#
#        print("System now waiting to arm motor")
#
#
#    if (drone.on_event('Cruise')):
#        print("System now flying!")
#    else:
#
#    if (drone.on_event('Lost')):
#        print("System")
#    print(drone.state)
#    
#    time.sleep(1)
#    drone.on_event('Signal')
#    print(drone.state)
    