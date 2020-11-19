; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude Attitude.msg.html

(cl:defclass <Attitude> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (attitude
    :reader attitude
    :initarg :attitude
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Attitude (<Attitude>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Attitude>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Attitude)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<Attitude> is deprecated: use rosflight_msgs-msg:Attitude instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'attitude-val :lambda-list '(m))
(cl:defmethod attitude-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:attitude-val is deprecated.  Use rosflight_msgs-msg:attitude instead.")
  (attitude m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:angular_velocity-val is deprecated.  Use rosflight_msgs-msg:angular_velocity instead.")
  (angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Attitude>) ostream)
  "Serializes a message object of type '<Attitude>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Attitude>) istream)
  "Deserializes a message object of type '<Attitude>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Attitude>)))
  "Returns string type for a message object of type '<Attitude>"
  "rosflight_msgs/Attitude")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Attitude)))
  "Returns string type for a message object of type 'Attitude"
  "rosflight_msgs/Attitude")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Attitude>)))
  "Returns md5sum for a message object of type '<Attitude>"
  "cedefaed10c2df6e4f13817850ee8bc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Attitude)))
  "Returns md5sum for a message object of type 'Attitude"
  "cedefaed10c2df6e4f13817850ee8bc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Attitude>)))
  "Returns full string definition for message of type '<Attitude>"
  (cl:format cl:nil "# Defines an Euler-Angle Based Attitude Message~%~%Header header~%geometry_msgs/Quaternion attitude~%geometry_msgs/Vector3 angular_velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Attitude)))
  "Returns full string definition for message of type 'Attitude"
  (cl:format cl:nil "# Defines an Euler-Angle Based Attitude Message~%~%Header header~%geometry_msgs/Quaternion attitude~%geometry_msgs/Vector3 angular_velocity~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Attitude>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Attitude>))
  "Converts a ROS message object to a list"
  (cl:list 'Attitude
    (cl:cons ':header (header msg))
    (cl:cons ':attitude (attitude msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
))
