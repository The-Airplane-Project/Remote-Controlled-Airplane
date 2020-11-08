import time
class joy_button:
    def __init__(self):
        self.is_pressed = False
        self.trigger_event = False

    def state(self, input):
        if (self.trigger_event):
            self.trigger_event = False
            
        if(self.is_pressed):
            if (input==0):
                self.trigger_event = True
                self.is_pressed = False
            else:
                self.trigger_event = False

        elif(not self.is_pressed): #if not pressed
            if(input==1):
                self.is_pressed = True  
                self.trigger_event = False
            else:
                self.trigger_event = False
        return self.trigger_event


class radio_comm_test:
    def __init__(self):
        #initilaize radio parameters
        self.MAX_PKG_SIZE = 6
        self.error_count = 0
        self.pipes = [[0xE8, 0xE8, 0xF0, 0xF0, 0xE1], [0xF0, 0xF0, 0xF0, 0xF0, 0xE1]]
        
        #self.radio = NRF24(pi, spidev.SpiDev())
        
    
        self.start = time.time()
        self.previous_Msg = [255,255,255,255,255,255]
        self.receivedMessage = [255, 255, 255, 255, 255, 255]
        self.button_event_state = [0, 0, 0, 0, 0, 0, 0, 0]
    
        #initialize buttons
        #bit1 bit2 bit3  bit4   bit5 bit6 bit7 bit8
        #LB   RB   view  selec  X     Y   A    B
    
        self.joy_LB = joy_button()
        self.joy_RB = joy_button()
        self.joy_view = joy_button()
        self.joy_selec = joy_button()
        self.joy_X = joy_button()
        self.joy_Y = joy_button()
        self.joy_A = joy_button()
        self.joy_B = joy_button()
        
        #Arming flags
        self.neg_throttle_flag_1 = False
        self.pos_throttle_flag_2 = False
        self.cen_throttle_flag_3 = False
    
    def decode_message(self):
        #indicies:
            #_LeftStickX = 0
            #_LeftStickY = 1
            #_RightStickY = 2
            #_Rudder = 3
            #_Buttons = 4
        aileron = 0
        elevator = 1
        escValue = 2
        rudder = 3
        # decode message and store to class variables
        # has the logic to determine when the button is pressed or not( pressed --> hold, then release)
        # have to store previous data
        # trim: check buttons, but only output -1, 0, or 1, for detrim, and trim
        
        if self.receivedMessage == [255, 255, 255, 255, 255, 255]:
            return False, []
        
    
        btns_value = int(self.receivedMessage[4])
    
        #saving trigger event states from each button
        self.button_event_state[0] = self.joy_LB.state(btns_value >> 0 & 1)
        self.button_event_state[1] = self.joy_RB.state(btns_value >> 1 & 1)
        self.button_event_state[2] = self.joy_view.state(btns_value >> 2 & 1)
        self.button_event_state[3] = self.joy_selec.state(btns_value >> 3 & 1)
        self.button_event_state[4] = self.joy_X.state(btns_value >> 4 & 1)
        self.button_event_state[5] = self.joy_Y.state(btns_value >> 5 & 1)
        self.button_event_state[6] = self.joy_A.state(btns_value >> 6 & 1)
        self.button_event_state[7] = self.joy_B.state(btns_value >> 7 & 1)
    
        #Determine trim setting
        trim_offset = 0
        if (self.button_event_state[0] and self.button_event_state[1]): # both LB RB buttons are true
            trim_offset = 0
        elif (self.button_event_state[0]): #LB pressed
            trim_offset -= 1
        elif (self.button_event_state[1]): #RB pressed
            trim_offset += 1
    
        #return aileron, rudder, elevator, escValue, trimoffset
        return True, [self.receivedMessage[aileron], self.receivedMessage[rudder], self.receivedMessage[elevator], self.receivedMessage[escValue], trim_offset]

if __name__ == "__main__":
    
    radio_test = radio_comm_test()
    
    #bit1 bit2 bit3  bit4   bit5 bit6 bit7 bit8
    #LB   RB   view  selec  X     Y   A    B
    while True:
        btn_num = int(input("Enter num: "))
        radio_test.receivedMessage = [10, 100, 110, 90, btn_num, 80]
        [radio_valid, x] = radio_test.decode_message()
        
        print(radio_test.button_event_state)
        if (radio_valid):
            print ("test works")
            print (x)
        if(not radio_valid):
            print("False state")
            print (x)