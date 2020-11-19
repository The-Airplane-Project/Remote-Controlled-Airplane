; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude Barometer.msg.html

(cl:defclass <Barometer> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass Barometer (<Barometer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Barometer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Barometer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<Barometer> is deprecated: use rosflight_msgs-msg:Barometer instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:altitude-val is deprecated.  Use rosflight_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:pressure-val is deprecated.  Use rosflight_msgs-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <Barometer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:temperature-val is deprecated.  Use rosflight_msgs-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Barometer>) ostream)
  "Serializes a message object of type '<Barometer>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pressure))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Barometer>) istream)
  "Deserializes a message object of type '<Barometer>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Barometer>)))
  "Returns string type for a message object of type '<Barometer>"
  "rosflight_msgs/Barometer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Barometer)))
  "Returns string type for a message object of type 'Barometer"
  "rosflight_msgs/Barometer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Barometer>)))
  "Returns md5sum for a message object of type '<Barometer>"
  "8f7934988670983d230d20b43f141575")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Barometer)))
  "Returns md5sum for a message object of type 'Barometer"
  "8f7934988670983d230d20b43f141575")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Barometer>)))
  "Returns full string definition for message of type '<Barometer>"
  (cl:format cl:nil "Header header~%float32 altitude~%float32 pressure~%float32 temperature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Barometer)))
  "Returns full string definition for message of type 'Barometer"
  (cl:format cl:nil "Header header~%float32 altitude~%float32 pressure~%float32 temperature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Barometer>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Barometer>))
  "Converts a ROS message object to a list"
  (cl:list 'Barometer
    (cl:cons ':header (header msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':temperature (temperature msg))
))
