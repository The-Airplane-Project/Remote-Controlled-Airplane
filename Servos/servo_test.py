#!/usr/bin/python3

import pigpio
import time
import sys
import tty
import termios 

class Servo:
	def __init__(self, pin, angle, pwm):
		self.servo = pin
		self.angle = angle
		self.pulse = self.angle_to_pulse(self.angle)
		pwm.set_mode(self.servo, pigpio.OUTPUT)
		pwm.set_PWM_frequency(self.servo, 50)

	def reset(self):
		self.angle = 90
		self.set_angle(self.angle)

	def set_angle (self, request_angle):
		self.angle = request_angle
		pwm.set_servo_pulsewidth(self.servo, self.angle_to_pulse(self.angle)) ;
		#print(self.angle_to_pulse(self.angle))

	def angle_to_pulse(self, angle):
		if (self.angle > 180):
			self.angle = 180
		elif (self.angle < 0):
			self.angle = 0
		self.pulse = (self.angle * 100/9) + 500 
		return self.pulse

	def stop(self):
		pwm.set_PWM_dutycycle(self.servo, 0)


if __name__ == "__main__":
	pwm = pigpio.pi() 
	right = Servo(22, 90, pwm)
	left = Servo(17, 90, pwm)
	rudder = Servo(24, 90, pwm)
	elevator = Servo(5, 90, pwm)
	#lol = Servo(16, 90, pwm)
	time.sleep( 1 )
	
	while (1):
		roll_angle = int(input("Enter angle: "))
		right.set_angle(roll_angle)
		left.set_angle(roll_angle)
		rudder.set_angle(roll_angle)
		elevator.set_angle(roll_angle)
		#lol.set_angle(roll_angle)
		time.sleep(0.05)

	right.reset()
	left.reset()
	rudder.reset()
	elevator.reset()
	#lol.reset()
	time.sleep( 0.5 )

	right.stop()
	left.stop()
	rudder.stop()
	elevator.stop()
	#lol.stop()
