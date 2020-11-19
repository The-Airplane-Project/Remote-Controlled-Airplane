# Remote-Controlled-Airplane
in this project, we aim to create a remote controlled airplane with video streaming capabilities using solely opensource standards

## Controls
Roll: left joystick x axis\
Pitch: left joystick y axis\
Yaw: left, and right (LT, BT) --> need to resolve conflict if both are pressed. (maybe pick the bigger value, if the values are equal, return 0?)\
Throttle: full power (up position), cruise power (neutral position), idle (down position)\
Engine start: screen switch button (to prevent the engine from accidentally starting and hurting people)\
Engine stop: option button \
Elevator trim Up: RB button (2 deg per press, max 10 deg)\
Elevator trim Down: LB button (2 deg per press, max 10 deg)\

## To run ROS
in catkin_ws/devel, run the following commands:
setup.bat
call local_setup.bat

Launch ros_node and rviz (will integrate to a roslaunch file in the future), use rviz setting stored in src of the_professional folder
