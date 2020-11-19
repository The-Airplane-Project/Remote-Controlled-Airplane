;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::Status)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'Status (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::STATUS")
  (make-package "ROSFLIGHT_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosflight_msgs::Status
  :super ros::object
  :slots (_header _armed _failsafe _rc_override _offboard _control_mode _error_code _num_errors _loop_time_us ))

(defmethod rosflight_msgs::Status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:armed __armed) nil)
    ((:failsafe __failsafe) nil)
    ((:rc_override __rc_override) nil)
    ((:offboard __offboard) nil)
    ((:control_mode __control_mode) 0)
    ((:error_code __error_code) 0)
    ((:num_errors __num_errors) 0)
    ((:loop_time_us __loop_time_us) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _armed __armed)
   (setq _failsafe __failsafe)
   (setq _rc_override __rc_override)
   (setq _offboard __offboard)
   (setq _control_mode (round __control_mode))
   (setq _error_code (round __error_code))
   (setq _num_errors (round __num_errors))
   (setq _loop_time_us (round __loop_time_us))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:armed
   (&optional __armed)
   (if __armed (setq _armed __armed)) _armed)
  (:failsafe
   (&optional __failsafe)
   (if __failsafe (setq _failsafe __failsafe)) _failsafe)
  (:rc_override
   (&optional __rc_override)
   (if __rc_override (setq _rc_override __rc_override)) _rc_override)
  (:offboard
   (&optional __offboard)
   (if __offboard (setq _offboard __offboard)) _offboard)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:num_errors
   (&optional __num_errors)
   (if __num_errors (setq _num_errors __num_errors)) _num_errors)
  (:loop_time_us
   (&optional __loop_time_us)
   (if __loop_time_us (setq _loop_time_us __loop_time_us)) _loop_time_us)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _armed
    1
    ;; bool _failsafe
    1
    ;; bool _rc_override
    1
    ;; bool _offboard
    1
    ;; int8 _control_mode
    1
    ;; int8 _error_code
    1
    ;; int16 _num_errors
    2
    ;; int16 _loop_time_us
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _armed
       (if _armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _failsafe
       (if _failsafe (write-byte -1 s) (write-byte 0 s))
     ;; bool _rc_override
       (if _rc_override (write-byte -1 s) (write-byte 0 s))
     ;; bool _offboard
       (if _offboard (write-byte -1 s) (write-byte 0 s))
     ;; int8 _control_mode
       (write-byte _control_mode s)
     ;; int8 _error_code
       (write-byte _error_code s)
     ;; int16 _num_errors
       (write-word _num_errors s)
     ;; int16 _loop_time_us
       (write-word _loop_time_us s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _armed
     (setq _armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _failsafe
     (setq _failsafe (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rc_override
     (setq _rc_override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _offboard
     (setq _offboard (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _control_mode 127) (setq _control_mode (- _control_mode 256)))
   ;; int8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error_code 127) (setq _error_code (- _error_code 256)))
   ;; int16 _num_errors
     (setq _num_errors (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _loop_time_us
     (setq _loop_time_us (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rosflight_msgs::Status :md5sum-) "47d8a47dbe4d0941ff4c84b89a5de11e")
(setf (get rosflight_msgs::Status :datatype-) "rosflight_msgs/Status")
(setf (get rosflight_msgs::Status :definition-)
      "# Flight controller status message

Header header

bool armed         # True if armed
bool failsafe      # True if in failsafe
bool rc_override   # True if RC is in control
bool offboard      # True if offboard control is active
int8 control_mode  # Onboard control mode
int8 error_code    # Onboard error code
int16 num_errors   # Number of errors
int16 loop_time_us # Loop time in microseconds

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



(provide :rosflight_msgs/Status "47d8a47dbe4d0941ff4c84b89a5de11e")


