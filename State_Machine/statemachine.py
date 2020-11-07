#!/usr/bin/python3
#By Steven Feng Oct 21, 2020
from .state import State
import time
import sys
#TODO: Implement autonomous states

class IdleState (State):
    def on_event(self, event):
        if (event == 'EngOnBtn'):
            return StandbyState()
        return self
        

    
    def run(self):
        print("IdleState");
        

class StandbyState(State):
    def on_event(self, event):
        if (event == 'Cruise'):
            return CruiseState()
        return self
    def run(self):
        print("StandbyState");

class CruiseState (State):
    def on_event(self, event):
        if (event == "Lost"):
            return EmergencyState()
        elif(event == "EngOffBtn"):
            return StandbyState()
            
        return self
    def run(self):
        print("CruiseState");
        
class EmergencyState (State):
    def on_event(self, event):
        if (event == "Signal"):
            return CruiseState()
        return self
    def run(self):
        print("EmergencyState");        
        
