;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::Command)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'Command (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::COMMAND")
  (make-package "ROSFLIGHT_MSGS::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_PASS_THROUGH*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*MODE_PASS_THROUGH* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*MODE_PASS_THROUGH* 0)
(intern "*MODE_ROLLRATE_PITCHRATE_YAWRATE_THROTTLE*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*MODE_ROLLRATE_PITCHRATE_YAWRATE_THROTTLE* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*MODE_ROLLRATE_PITCHRATE_YAWRATE_THROTTLE* 1)
(intern "*MODE_ROLL_PITCH_YAWRATE_THROTTLE*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*MODE_ROLL_PITCH_YAWRATE_THROTTLE* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*MODE_ROLL_PITCH_YAWRATE_THROTTLE* 2)
(intern "*MODE_ROLL_PITCH_YAWRATE_ALTITUDE*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*MODE_ROLL_PITCH_YAWRATE_ALTITUDE* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*MODE_ROLL_PITCH_YAWRATE_ALTITUDE* 3)
(intern "*MODE_XPOS_YPOS_YAW_ALTITUDE*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*MODE_XPOS_YPOS_YAW_ALTITUDE* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*MODE_XPOS_YPOS_YAW_ALTITUDE* 4)
(intern "*MODE_XVEL_YVEL_YAWRATE_ALTITUDE*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*MODE_XVEL_YVEL_YAWRATE_ALTITUDE* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*MODE_XVEL_YVEL_YAWRATE_ALTITUDE* 5)
(intern "*MODE_XACC_YACC_YAWRATE_AZ*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*MODE_XACC_YACC_YAWRATE_AZ* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*MODE_XACC_YACC_YAWRATE_AZ* 6)
(intern "*IGNORE_NONE*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*IGNORE_NONE* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*IGNORE_NONE* 0)
(intern "*IGNORE_X*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*IGNORE_X* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*IGNORE_X* 1)
(intern "*IGNORE_Y*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*IGNORE_Y* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*IGNORE_Y* 2)
(intern "*IGNORE_Z*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*IGNORE_Z* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*IGNORE_Z* 4)
(intern "*IGNORE_F*" (find-package "ROSFLIGHT_MSGS::COMMAND"))
(shadow '*IGNORE_F* (find-package "ROSFLIGHT_MSGS::COMMAND"))
(defconstant rosflight_msgs::Command::*IGNORE_F* 8)
(defclass rosflight_msgs::Command
  :super ros::object
  :slots (_header _mode _ignore _x _y _z _F ))

(defmethod rosflight_msgs::Command
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:ignore __ignore) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:F __F) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _ignore (round __ignore))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _F (float __F))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:ignore
   (&optional __ignore)
   (if __ignore (setq _ignore __ignore)) _ignore)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:F
   (&optional __F)
   (if __F (setq _F __F)) _F)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ;; uint8 _ignore
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _F
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _ignore
       (write-byte _ignore s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _F
       (sys::poke _F (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ignore
     (setq _ignore (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _F
     (setq _F (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rosflight_msgs::Command :md5sum-) "5ccd6b6ac2f57a7aa47a3c8ac1a0b174")
(setf (get rosflight_msgs::Command :datatype-) "rosflight_msgs/Command")
(setf (get rosflight_msgs::Command :definition-)
      "# Offboard control command message

# control mode flags
uint8 MODE_PASS_THROUGH = 0
uint8 MODE_ROLLRATE_PITCHRATE_YAWRATE_THROTTLE = 1
uint8 MODE_ROLL_PITCH_YAWRATE_THROTTLE = 2
uint8 MODE_ROLL_PITCH_YAWRATE_ALTITUDE = 3
uint8 MODE_XPOS_YPOS_YAW_ALTITUDE = 4
uint8 MODE_XVEL_YVEL_YAWRATE_ALTITUDE = 5
uint8 MODE_XACC_YACC_YAWRATE_AZ = 6

# ignore field bitmasks
uint8 IGNORE_NONE = 0
uint8 IGNORE_X = 1
uint8 IGNORE_Y = 2
uint8 IGNORE_Z = 4
uint8 IGNORE_F = 8

Header header
uint8 mode # offboard control mode for interpreting value fields
uint8 ignore # bitmask for ignore specific setpoint values
float32 x
float32 y
float32 z
float32 F

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rosflight_msgs/Command "5ccd6b6ac2f57a7aa47a3c8ac1a0b174")


