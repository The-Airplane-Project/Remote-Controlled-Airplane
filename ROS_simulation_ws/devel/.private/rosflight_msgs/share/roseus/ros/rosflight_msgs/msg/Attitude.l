;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::Attitude)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'Attitude (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::ATTITUDE")
  (make-package "ROSFLIGHT_MSGS::ATTITUDE"))

(in-package "ROS")
;;//! \htmlinclude Attitude.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosflight_msgs::Attitude
  :super ros::object
  :slots (_header _attitude _angular_velocity ))

(defmethod rosflight_msgs::Attitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:attitude __attitude) (instance geometry_msgs::Quaternion :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _attitude __attitude)
   (setq _angular_velocity __angular_velocity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:attitude
   (&rest __attitude)
   (if (keywordp (car __attitude))
       (send* _attitude __attitude)
     (progn
       (if __attitude (setq _attitude (car __attitude)))
       _attitude)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Quaternion _attitude
    (send _attitude :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Quaternion _attitude
       (send _attitude :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Quaternion _attitude
     (send _attitude :deserialize buf ptr-) (incf ptr- (send _attitude :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;;
   self)
  )

(setf (get rosflight_msgs::Attitude :md5sum-) "cedefaed10c2df6e4f13817850ee8bc6")
(setf (get rosflight_msgs::Attitude :datatype-) "rosflight_msgs/Attitude")
(setf (get rosflight_msgs::Attitude :definition-)
      "# Defines an Euler-Angle Based Attitude Message

Header header
geometry_msgs/Quaternion attitude
geometry_msgs/Vector3 angular_velocity

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

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rosflight_msgs/Attitude "cedefaed10c2df6e4f13817850ee8bc6")


