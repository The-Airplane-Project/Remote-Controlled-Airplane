from state import state
from stateLogic import stateLogic
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
        print("IdleState");

class CruiseState (State):
    def on_event(self, event):
        if (event == "Lost"):
            return EmergencyState()
        elif(event == "EngOffBtn"):
            return StandbyState()
            
        return self
    def run(self):
        print("IdleState");
class EmergencyStateState (State):
    def on_event(self, event):
        if (event == "Signal"):
            return CruiseState()
        return self
    def run(self):
        print("IdleState");        
        
