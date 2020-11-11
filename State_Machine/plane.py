#from radio_class_test_only import radio_comm_test
from motorController import motorController
from radio import radio_comm

pi = pigpio.pi()

motors = motorController(25, 22, 5, 24, 21, pi)

#radio = radio_comm_test()
radio = radio_comm(pi)
