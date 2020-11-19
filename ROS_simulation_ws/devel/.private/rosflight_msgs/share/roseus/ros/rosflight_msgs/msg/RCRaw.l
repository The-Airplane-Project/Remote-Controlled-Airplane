;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::RCRaw)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'RCRaw (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::RCRAW")
  (make-package "ROSFLIGHT_MSGS::RCRAW"))

(in-package "ROS")
;;//! \htmlinclude RCRaw.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosflight_msgs::RCRaw
  :super ros::object
  :slots (_header _values ))

(defmethod rosflight_msgs::RCRaw
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:values __values) (make-array 8 :initial-element 0 :element-type :integer))
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
    ;; uint16[8] _values
    (* 2    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16[8] _values
     (dotimes (i 8)
       (write-word (elt _values i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16[8] _values
   (dotimes (i (length _values))
     (setf (elt _values i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get rosflight_msgs::RCRaw :md5sum-) "4e07e0a6c2de8828f77c94cd208f693e")
(setf (get rosflight_msgs::RCRaw :datatype-) "rosflight_msgs/RCRaw")
(setf (get rosflight_msgs::RCRaw :definition-)
      "# raw servo outputs

Header header
uint16[8] values

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



(provide :rosflight_msgs/RCRaw "4e07e0a6c2de8828f77c94cd208f693e")


