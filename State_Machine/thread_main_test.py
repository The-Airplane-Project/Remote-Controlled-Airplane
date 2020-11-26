from thread_test import Servo
import time
from multiprocessing import Process

if __name__ == "__main__":
#    drone = airplane()
    i2c_sensor = Servo()
    t=Process(target=i2c_sensor.main)
    t.start()
    #time.sleep(1)
    turn_true = 0
    status = False
 #   state_str = drone.run_state() #Only running idle state
    while True:
            #i2c_sensor.logging.acquire() #acquire the Lock, forbidding access to other processes.
        y = i2c_sensor.read_value() # read the value
            #i2c_sensor.logging.value=50 # modify the value
            #i2c_sensor.logging.release() # don't forget to release the lock, or else you will block everything.
        
        if status == False:
            print("Logging False main")
            status = True
            print(y)
            #i2c_sensor.logging = True
        #print("Running Main Thread")
        elif status == True:
            print("Logging True main")
            status = False
            print(y)
        time.sleep(0.1)
        #turn_true = turn_true + 1
        #state_str = drone.on_event(state_str)
