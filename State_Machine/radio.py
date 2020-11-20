#by Ayush and Steven Nov 6, 2020
#This class will handle communication between radio, and does proper decoding

from lib_nrf24 import NRF24
import time
import spidev
import pigpio


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

    def get_pressed(self):
        return self.is_pressed

class radio_comm:
    def __init__(self, pi):
        #initilaize radio parameters
        self.pi = pi
        self.MAX_PKG_SIZE = 6
        self.error_count = 0
        self.pipes = [[0xE8, 0xE8, 0xF0, 0xF0, 0xE1], [0xF0, 0xF0, 0xF0, 0xF0, 0xE1]]
        
        self.start = time.time()
        
        self.button_event_state = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

        #initialize buttons
        #bit8 bit7 bit6  bit5   bit4 bit3 bit2 bit1
        #LB   RB   view  selec  X     Y   A    B

        self.joy_LB = joy_button()
        self.joy_RB = joy_button()
        self.joy_view = joy_button()
        self.joy_selec = joy_button()
        self.joy_X = joy_button()
        self.joy_Y = joy_button()
        self.joy_A = joy_button()
        self.joy_B = joy_button()

        self.joy_dpad_left = joy_button()
        self.joy_dpad_right = joy_button()
        self.joy_dpad_up = joy_button()
        self.joy_dpad_down = joy_button()
        #Arming flags
        self.neg_throttle_flag_1 = False
        self.pos_throttle_flag_2 = False
        self.cen_throttle_flag_3 = False


    def start_radio(self):
        self.radio = NRF24(self.pi, spidev.SpiDev())
        self.radio.begin(0, 17)
        self.radio.setPayloadSize(self.MAX_PKG_SIZE)
        self.radio.setChannel(0x76)
        self.radio.setDataRate(NRF24.BR_1MBPS)
        self.radio.setPALevel(NRF24.PA_MIN)
        self.radio.setAutoAck(True)
        self.radio.enableDynamicPayloads()
        self.radio.enableAckPayload()
        self.radio.openWritingPipe(self.pipes[0])
        self.radio.openReadingPipe(1, self.pipes[1])
        self.radio.printDetails()
        self.counting_to_soft_reset = 0

    def read_from_radio(self):
        #Write to arduino first
        #self.send_message("1234")

        #if get stuck in this func for too long, signal emergency --> based on current statemachine implementation, we won't go to emergency unless if we are in cruise
        self.start = time.time()
        self.radio.startListening()
        
        #Wating for incomming message
        while not self.radio.available(0):
            time.sleep(1/100)
            if time.time() - self.start > 2:
                #print("Timed out.")
                self.error_count += 1
                if self.error_count > 2: #it has waited for 4 secs now
                    self.error_count = 0
                    ##SIGNAL EMERGENCY NOW____and perform softreset from emergency state______________________
                    self.radio.stopListening()
                    return False  
                break
        
        self.receivedMessage = []

        #update recievedMessage with radio packet
        self.radio.read(self.receivedMessage, self.radio.getDynamicPayloadSize())
        #print("Received: {}".format(self.receivedMessage))
        self.radio.stopListening()
        time.sleep(0.09)
        if (self.receivedMessage == [0, 0, 0, 0, 0, 0]):
            self.receivedMessage = []
        return True

    def decode_message(self):
        #indicies:
            #_LeftStickX = 0
            #_LeftStickY = 1
            #_RightStickY = 2
            #_Rudder = 3
            #_Buttons = 4
            #Crc8 = 5
        aileron = 0
        elevator = 1
        escValue = 2
        rudder = 3
        # decode message and store to class variables
        # has the logic to determine when the button is pressed or not( pressed --> hold, then release)
        # have to store previous data
        # trim: check buttons, but only output -1, 0, or 1, for detrim, and trim
        
        if self.receivedMessage == [self.receivedMessage[0], self.receivedMessage[0], self.receivedMessage[0], self.receivedMessage[0], self.receivedMessage[0], self.receivedMessage[0]]:
            return False, []
        
        if self.receivedMessage == []:
            self.counting_to_soft_reset += 1
            if (self.counting_to_soft_reset >= 2):
                return False, [] #Softreset now and signal emergency
            else:
                return True, []

        btns_value = 0
        trim_offset = 0

        btns_value = int(self.receivedMessage[4])
        dpad_value = int(self.receivedMessage[5])
        #saving trigger event states from each button
        self.button_event_state[0] = self.joy_B.state(btns_value >> 0 & 1)
        self.button_event_state[1] = self.joy_A.state(btns_value >> 1 & 1)
        self.button_event_state[2] = self.joy_Y.state(btns_value >> 2 & 1)
        self.button_event_state[3] = self.joy_X.state(btns_value >> 3 & 1)
        self.button_event_state[4] = self.joy_selec.state(btns_value >> 4 & 1)
        self.button_event_state[5] = self.joy_view.state(btns_value >> 5 & 1)
        self.button_event_state[6] = self.joy_RB.state(btns_value >> 6 & 1)
        self.button_event_state[7] = self.joy_LB.state(btns_value >> 7 & 1)
        
        self.button_event_state[8] = self.joy_dpad_right.state(dpad_value >> 0 & 1)
        self.button_event_state[9] = self.joy_dpad_left.state(dpad_value >> 1 & 1)
        self.button_event_state[10] = self.joy_dpad_down.state(dpad_value >> 2 & 1)
        self.button_event_state[11] = self.joy_dpad_up.state(dpad_value >> 3 & 1)
        
        
        print(self.receivedMessage)
        #Determine trim setting
        
        if (self.button_event_state[6] and self.button_event_state[7]): # both LB RB buttons are true
            trim_offset = 0
        elif (self.button_event_state[7]): #LB pressed
            trim_offset -= 1
        elif (self.button_event_state[6]): #RB pressed
            trim_offset += 1
    
        #decode to angles first
        self.receivedMessage[aileron] = (self.receivedMessage[aileron] - 100) /2
        self.receivedMessage[rudder] = (self.receivedMessage[rudder] - 100) / 2
        self.receivedMessage[elevator] = (self.receivedMessage[elevator] - 100) /2
        
        
        #return aileron, rudder, elevator, escValue, trimoffset
        return True, [self.receivedMessage[aileron], self.receivedMessage[rudder], self.receivedMessage[elevator], self.receivedMessage[escValue], trim_offset]

    def message_valid(self):

        if (self.calc_crc8(self.receivedMessage[:-1]) == self.receivedMessage[self.MAX_PKG_SIZE-1]):
            return True
        
        return False

    def calc_crc8(self, datagram, initial_value=0):
        crc = 0
        for i in range(len(datagram)):
            byte = int(datagram[i])
            for b in range(8):
                fb_bit = (crc ^ byte) & 0x01
                if fb_bit == 0x01:
                    crc = crc ^ 0x18
                crc = (crc >> 1) & 0x7f
                if fb_bit == 0x01:
                    crc = crc | 0x80
                byte = byte >> 1
        return crc

    def send_message(self, stateEnum, i2c_sensors):
        # grab variables from i2c_sensor, ultrasound, and send
        #message: roll -- yaw -- pitch -- (Signed + statemachine) -- altitude_byte1 -- altitude_byte2
        # 1 for positive, 0 for negative
        # roll yaw pitch - 0 - [ State Machine]
        # 0 idle
        # 1 standby
        # 2 cruise
        # 3 emergency
        # 4 level flight
        # 5 autonomous takeoff
        # 6 autonomous land
        byte4 = 0
        if (i2c_sensors.roll>0):
            byte4+=128 #set bit 7
        if (i2c_sensors.yaw>0):
            byte4+=64 #set bit 6
        if (i2c_sensors.pitch>0):
            byte4+=32 #set bit 5

        altitude = round(i2c_sensors.altitude)

        if altitude < 0:
            altitude = abs(altitude)
            if (altitude > 32767):
                altitude = 32767
            #print (num)
            alt_1 = (altitude & 0b11111111)
            alt_2 = ((altitude>>8) & 0b11111111)
            alt_2 = alt_2 | (0b1<<7)
        else:
            if (altitude > 32767):
                altitude = 32767
            #print(num)
            alt_1 = (altitude & 0b11111111)
            alt_2 = ((altitude>>8) & 0b11111111)
        
        #print ("Number:" , bin(num))
        #print ("Byte 0:", bin(x))
        #print ("Byte 1:", bin(y))
        
        #Decode algorithm for altitude
        #if (y & (0b1 << 7)):
        #    decode_num = 0-(x | ((y&0b1111111)<<8))
        #    print (decode_num)
        #else:
        #    print (x | (y<<8))
        
        byte4+=stateEnum
        message=[abs(round(i2c_sensors.roll)), abs(round(i2c_sensors.yaw)), abs(round(i2c_sensors.pitch)), byte4, alt_1, alt_2]
        
        print("Sending: {}".format(message))
        #while len(message) < self.MAX_PKG_SIZE:
        #    message.append(0)
        self.radio.write(message)

    def soft_reset(self):
        #restart the radio without changing member variables
        #maybe implement this in the emergency state cause its just these following functions
        self.stop_radio()
        self.start_radio()
        self.counting_to_soft_reset = 0
        #self.read_from_radio()

    def stop_radio(self):
        #stops the radio without changing data variables
        self.radio.end()
        return True

if __name__ == "__main__":
    from motorController import motorController
    pi = pigpio.pi()
    motors = motorController(25, 22, 5, 24, 21, pi)

    radio_test = radio_comm(pi)

    #bit8 bit7 bit6  bit5   bit4 bit3 bit2 bit1
    #LB   RB   view  selec  X    Y    A    B
    radio_test.start_radio()
    motors.ESC.arm()
    while True:
        radio_valid = True
        while (radio_valid):
            t = radio_test.read_from_radio()
            #t = radio_test.read_from_radio()
            time.sleep(0.09)

            [radio_valid, x] = radio_test.decode_message()
            
            if (radio_valid):
                print(x)
                if (x != []):
                    #servo.write_motor(aileronValue_, rudderAngle_, elevatorAngle_, escValue_, trimoffset)
                    motors.write_motor(x[0], x[1], x[2], x[3], x[4])

            if (not radio_valid):
                print("Radio not decoded")
    
        #Stop motors
        print("Stopping motors")
        motors.stop_all_servos()
        motors.ESC.stop()
        #performing soft reset
        print ("performing soft reset")
        radio_test.soft_reset()
