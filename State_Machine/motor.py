#By Ayush and Steven
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
        self.pwm_ = pwm
        self.pwm_.set_mode(self.servo, pigpio.OUTPUT)
        self.pwm_.set_PWM_frequency(self.servo, 50)

    def reset(self):
        self.angle = 90
        self.set_angle(self.angle)


    def set_angle (self, request_angle):
        self.angle = request_angle
        self.pwm_.set_servo_pulsewidth(self.servo, self.angle_to_pulse(self.angle))
        #print(self.angle_to_pulse(self.angle))

    def angle_to_pulse(self, angle):
        if (self.angle > 180):
            self.angle = 180
        elif (self.angle < 0):
            self.angle = 0
        self.pulse = (self.angle * 100/9) + 500
        return self.pulse

    def stop(self):
        self.pwm_.set_PWM_dutycycle(self.servo, 0)

    def set_pulse(self, value):
        self.pwm_.set_servo_pulsewidth(self.servo, value)

class ESC:
    def __init__(self, pin, speed, pi):
        self.esc = pin
        self.speed = speed
        self.pi = pi
        self.pi.set_servo_pulsewidth(self.esc, 0) 
        self.max_value = 2000
        self.min_value = 750

    def stop(self):
        self.pi.set_servo_pulsewidth(self.esc, 0)

    def arm(self):
        self.pi.set_servo_pulsewidth(self.esc, 0)
        time.sleep(1)
        self.pi.set_servo_pulsewidth(self.esc, self.max_value)
        time.sleep(1)
        self.pi.set_servo_pulsewidth(self.esc, self.min_value)
        time.sleep(1)

    def set_speed(self, value):
        self.pi.set_servo_pulsewidth(self.esc, value)