;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::Error)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'Error (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::ERROR")
  (make-package "ROSFLIGHT_MSGS::ERROR"))

(in-package "ROS")
;;//! \htmlinclude Error.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosflight_msgs::Error
  :super ros::object
  :slots (_header _error_message _error_code _reset_count _rearm _pc ))

(defmethod rosflight_msgs::Error
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:error_message __error_message) "")
    ((:error_code __error_code) 0)
    ((:reset_count __reset_count) 0)
    ((:rearm __rearm) nil)
    ((:pc __pc) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _error_message (string __error_message))
   (setq _error_code (round __error_code))
   (setq _reset_count (round __reset_count))
   (setq _rearm __rearm)
   (setq _pc (round __pc))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:reset_count
   (&optional __reset_count)
   (if __reset_count (setq _reset_count __reset_count)) _reset_count)
  (:rearm
   (&optional __rearm)
   (if __rearm (setq _rearm __rearm)) _rearm)
  (:pc
   (&optional __pc)
   (if __pc (setq _pc __pc)) _pc)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _error_message
    4 (length _error_message)
    ;; uint32 _error_code
    4
    ;; uint32 _reset_count
    4
    ;; bool _rearm
    1
    ;; uint32 _pc
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;; uint32 _error_code
       (write-long _error_code s)
     ;; uint32 _reset_count
       (write-long _reset_count s)
     ;; bool _rearm
       (if _rearm (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _pc
       (write-long _pc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _reset_count
     (setq _reset_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _rearm
     (setq _rearm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _pc
     (setq _pc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rosflight_msgs::Error :md5sum-) "54b4d1e0725009401e6c34324c30bd0f")
(setf (get rosflight_msgs::Error :datatype-) "rosflight_msgs/Error")
(setf (get rosflight_msgs::Error :definition-)
      "#For handling rosflight hard errors

Header header
string error_message
uint32 error_code
uint32 reset_count
bool rearm
uint32 pc


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



(provide :rosflight_msgs/Error "54b4d1e0725009401e6c34324c30bd0f")


