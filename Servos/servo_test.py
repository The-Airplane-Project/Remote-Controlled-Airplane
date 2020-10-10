#!/usr/bin/python3
import RPi.GPIO as GPIO
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
		print(self.angle_to_pulse(self.angle))

	def angle_to_pulse(self, angle):
		if (self.angle > 180):
			self.angle = 180
		elif (self.angle < 0):
			self.angle = 0
		self.pulse = (self.angle * 100/9) + 500 
		return self.pulse

	def stop(self):
		pwm.set_PWM_dutycycle(self.servo, 0)
# more info at http://abyz.me.uk/rpi/pigpio/python.html#set_servo_pulsewidth


#pwm.set_mode(servo, pigpio.OUTPUT)
#pwm.set_mode(servo1, pigpio.OUTPUT)
 
#pwm.set_PWM_frequency( servo, 50 )
#pwm.set_PWM_frequency( servo1, 50 )

#while True:
#    char = getch()
#
#   print("          " + char)
#
#    if char == "w":
#        angle += 5
#        if angle >= 180
#    elif char == "s":
#        angle -= 5
#    elif char == "a":
#        
#    elif char == "d":
#        
#    elif char == "x":
#        print("STOPPED")
#        
#        time.sleep(1)
#        pwm.set_servo_pulsewidth(s, 0)
#        break

if __name__ == "__main__":
	pwm = pigpio.pi() 
	right = Servo(23, 90, pwm)
	left = Servo(24, 90, pwm)
	up = Servo(25, 90, pwm)
	down = Servo(12, 90, pwm)
	lol = Servo(16, 90, pwm)
	time.sleep( 1 )
	
	while (True):

		set_angles = int(input("Enter Angle (200 to cancel): "))
		if (set_angles==200):
			break
		right.set_angle(set_angles)
		left.set_angle(set_angles)
		up.set_angle(set_angles)
		down.set_angle(set_angles)
		lol.set_angle(set_angles)
		time.sleep( 0.05 )

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
