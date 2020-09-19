#Steven 09/19/2020
from inputs import get_gamepad

while 1:
    events = get_gamepad()
    for event in events:
        #print ("event type: %s"%event.ev_type)
        name = event.code
        value = event.state
        if (name == "SYN_REPORT"):
            continue
        print ("event code: %s"%name) #event(button name), need to ignore SYN_REPORT
        print ("event state: %s"%value) #the button output, analog or digital
        
