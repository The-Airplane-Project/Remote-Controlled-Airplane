import time
from multiprocessing import Array
class Servo:
    def __init__(self):
        #self.logging = True
        self.logging = Array('d', [0.0, 0.0, 0.0, 0.0, 0.0])
        self.logging.acquire()
        for i in range(len(self.logging)):
            self.logging[i] = self.logging[i] + i
        self.logging.release()
    #def get_status(self):
    #    if self.logging == True:
    #        return True
    #    else:
    #        return False
    def write_value(self, num):
        try:
            self.logging.acquire()
            for i in range(len(num)):
                self.logging[i] = num[i]
            self.logging.release()
        except Exception as e:
            print (e)
            self.logging.release()
    def read_value(self):
        try:
            self.logging.acquire()
            x = self.logging[:]
            self.logging.release()
            return x
        except Exception as e:
            print (e)
            self.logging.release()
        

    def main(self):
        state = 0
        y = [1.0, 2.1, 3.1, -12.0, 134.7]
        while True:
            if state==True:
                print("Logging now", flush=True)
                y[1] += 1
                self.write_value(y)
                state = 0
                time.sleep(1)
            else:
                print("Not logging", flush=True)
                y[2] += 1
                self.write_value(y)
                state =1 
                time.sleep(1)
