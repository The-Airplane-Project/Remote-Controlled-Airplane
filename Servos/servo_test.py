#!/usr/bin/python3
import RPi.GPIO as GPIO
import pigpio
import time
import sys
import tty
import termios 

##Controller
from inputs import get_gamepad
#from math import sqrt
LY = 0.0
LX = 0.0
LX = 3500
LY = 3000
max_num = 32767.0
##

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
	right = Servo(23, 90, pwm)
	left = Servo(24, 90, pwm)
	up = Servo(25, 90, pwm)
	down = Servo(12, 90, pwm)
	lol = Servo(16, 90, pwm)
	time.sleep( 1 )
	set_angles = 90 ## Default angle
	roll_angle = 90
	pitch_angle = 90
	prev_roll_angle = 90
	prev_pitch_angle = 90

	while (1):
		##Controller
		events = get_gamepad()
	
		for event in events:
			name = event.code
			if (name == "BTN_TL"):
				LX -= 600 #event.state

			if (name == "BTN_TR"):
				LX += 600#event.state
			if (name != "ABS_Y" or name != "ABS_X"):
				continue
		
		#LX += 400
		#LY += 400

		if (LX < 2000 or LX > 3000):
			normalizedLX = LX / max_num
		else:
			normalizedLX = 0.0
		
		if(LY > 2350 or LY < 850):
			normalizedLY = LY / max_num
		else:
			normalizedLY = 0.0

		req_roll_angle = int((normalizedLX*90) + 90)
		req_pitch_angle = int((normalizedLY*90) + 90)
		
		#roll_angle = int(input("Enter Angle (200 to cancel): "))
		#if (set_angles==200):
		#	break
		if (abs(req_roll_angle - prev_roll_angle) > 0): 
			roll_angle = req_roll_angle
			prev_roll_angle = req_roll_angle

		if (abs(req_pitch_angle - prev_pitch_angle) > 0): 
			pitch_angle = req_pitch_angle
			prev_pitch_angle = req_pitch_angle
		
		right.set_angle(roll_angle)
		left.set_angle(roll_angle)
		up.set_angle(pitch_angle)
		down.set_angle(set_angles)
		lol.set_angle(set_angles)
		time.sleep(0.05)

	right.reset()
	left.reset()
	up.reset()
	down.reset()
	lol.reset()
	time.sleep( 0.5 )

	right.stop()
	left.stop()
	up.stop()
	down.stop()
	lol.stop()
