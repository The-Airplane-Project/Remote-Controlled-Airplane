;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::OutputRaw)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'OutputRaw (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::OUTPUTRAW")
  (make-package "ROSFLIGHT_MSGS::OUTPUTRAW"))

(in-package "ROS")
;;//! \htmlinclude OutputRaw.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosflight_msgs::OutputRaw
  :super ros::object
  :slots (_header _values ))

(defmethod rosflight_msgs::OutputRaw
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:values __values) (make-array 14 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _values __values)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[14] _values
    (* 4    14)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[14] _values
     (dotimes (i 14)
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[14] _values
   (dotimes (i (length _values))
     (setf (elt _values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get rosflight_msgs::OutputRaw :md5sum-) "86704c636f24b54825756571c5e852f0")
(setf (get rosflight_msgs::OutputRaw :datatype-) "rosflight_msgs/OutputRaw")
(setf (get rosflight_msgs::OutputRaw :definition-)
      "# raw servo outputs

Header header
float32[14] values

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



(provide :rosflight_msgs/OutputRaw "86704c636f24b54825756571c5e852f0")


