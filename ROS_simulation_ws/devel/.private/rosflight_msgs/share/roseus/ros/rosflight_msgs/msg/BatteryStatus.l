;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::BatteryStatus)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'BatteryStatus (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::BATTERYSTATUS")
  (make-package "ROSFLIGHT_MSGS::BATTERYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BatteryStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosflight_msgs::BatteryStatus
  :super ros::object
  :slots (_header _voltage _current ))

(defmethod rosflight_msgs::BatteryStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rosflight_msgs::BatteryStatus :md5sum-) "75c8e4b7132acff3b679451f5604f145")
(setf (get rosflight_msgs::BatteryStatus :datatype-) "rosflight_msgs/BatteryStatus")
(setf (get rosflight_msgs::BatteryStatus :definition-)
      "# Simple battery telemetry
# Values may be 0 if not supported

Header header
float32 voltage
float32 current

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



(provide :rosflight_msgs/BatteryStatus "75c8e4b7132acff3b679451f5604f145")


