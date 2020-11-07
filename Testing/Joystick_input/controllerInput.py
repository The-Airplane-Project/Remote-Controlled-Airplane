#!/usr/bin/env python3
from inputs import get_gamepad
from math import sqrt
LY = 0.0
LX = 0.0
max_num = 32767.0

while 1:
	events = get_gamepad()
	for event in events:
		name = event.code
		value = event.state
		if (name == "ABS_Y"):
			LY = event.state
		if (name == "ABS_X"):
			LX = event.state
		if (name != "ABS_Y" or name != "ABS_X"):
			continue
	#determine how far the controller is pushed
	#magnitude = sqrt((LX*LX + LY*LY))

	#determine the direction the controller is pushed
	if (LX < 2000 or LX > 3000):
		normalizedLX = LX / max_num
	else:
		normalizedLX = 0.0
	
	if(LY > 2350 or LY < 850):
		normalizedLY = LY / max_num
	else:
		normalizedLY = 0.0

	roll_angle = (normalizedLX*90) + 90
	pitch_angle = (normalizedLY*90) + 90
	#print (normalizedLX)
	#print (normalizedLY)
	print("Roll angle: " + str(roll_angle))
	print("Pitch angle: " + str(pitch_angle))
