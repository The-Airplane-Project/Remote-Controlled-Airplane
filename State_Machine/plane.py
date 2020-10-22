from statemmachine import IdleState, StandbyState, CruiseState, EmergencyStateState
import sys
import time

class airplane:
    def __init__(self):
        self.state = IdleState()
    
    def on_event(self, event):
        self.state = self.state.on_event(event)
        self.state.run
        
