from thread_test import Servo
import time
import threading

if __name__ == "__main__":
#    drone = airplane()
    i2c_sensor = Servo()
    t=threading.Thread(target=i2c_sensor.main)
    t.start()
    time.sleep(0.5)
    turn_true = 0
 #   state_str = drone.run_state() #Only running idle state
    while True:
        if turn_true==5:
            i2c_sensor.logging = True
        print("Running Main Thread")
        time.sleep(1)
        turn_true = turn_true + 1
        #state_str = drone.on_event(state_str)
