#from radio_class_test_only import radio_comm_test
import pigpio
from motorController import motorController
from radio import radio_comm
from sensor import I2C_sensors

pi = pigpio.pi()

motors = motorController(25, 22, 13, 24, 21, pi)
#i2c_sensors = I2C_sensors()
#i2c_sensors.calibrate()
#radio = radio_comm_test()
radio = radio_comm(pi)

