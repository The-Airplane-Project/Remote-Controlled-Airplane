; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude Airspeed.msg.html

(cl:defclass <Airspeed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (differential_pressure
    :reader differential_pressure
    :initarg :differential_pressure
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass Airspeed (<Airspeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Airspeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Airspeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<Airspeed> is deprecated: use rosflight_msgs-msg:Airspeed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Airspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Airspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:velocity-val is deprecated.  Use rosflight_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'differential_pressure-val :lambda-list '(m))
(cl:defmethod differential_pressure-val ((m <Airspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:differential_pressure-val is deprecated.  Use rosflight_msgs-msg:differential_pressure instead.")
  (differential_pressure m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <Airspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:temperature-val is deprecated.  Use rosflight_msgs-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Airspeed>) ostream)
  "Serializes a message object of type '<Airspeed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'differential_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Airspeed>) istream)
  "Deserializes a message object of type '<Airspeed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'differential_pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Airspeed>)))
  "Returns string type for a message object of type '<Airspeed>"
  "rosflight_msgs/Airspeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Airspeed)))
  "Returns string type for a message object of type 'Airspeed"
  "rosflight_msgs/Airspeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Airspeed>)))
  "Returns md5sum for a message object of type '<Airspeed>"
  "2d085b3a5f8eeedfe9115165a08be6e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Airspeed)))
  "Returns md5sum for a message object of type 'Airspeed"
  "2d085b3a5f8eeedfe9115165a08be6e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Airspeed>)))
  "Returns full string definition for message of type '<Airspeed>"
  (cl:format cl:nil "Header header~%float32 velocity # m/s~%float32 differential_pressure # Pa~%float32 temperature # K~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Airspeed)))
  "Returns full string definition for message of type 'Airspeed"
  (cl:format cl:nil "Header header~%float32 velocity # m/s~%float32 differential_pressure # Pa~%float32 temperature # K~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Airspeed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Airspeed>))
  "Converts a ROS message object to a list"
  (cl:list 'Airspeed
    (cl:cons ':header (header msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':differential_pressure (differential_pressure msg))
    (cl:cons ':temperature (temperature msg))
))
