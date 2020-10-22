#States for state machine, initalize properties for states. Inherited by drone_states.py
#By Steven Feng Oct 21, 2020

class State(object):


    def __init__(self):
        print ('Processing current state:', str(self))

    def on_event(self, event):
        """
        Handle events that are delegated to this State.
        """
        pass

    def __repr__(self):
        """
        Leverages the __str__ method to describe the State.
        """
        return self.__str__()

    def __str__(self):
        """
        Returns the name of the State.
        """
        return self.__class__.__name__