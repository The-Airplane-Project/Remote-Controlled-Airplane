; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude AuxCommand.msg.html

(cl:defclass <AuxCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type_array
    :reader type_array
    :initarg :type_array
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 14 :element-type 'cl:fixnum :initial-element 0))
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 14 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AuxCommand (<AuxCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuxCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuxCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<AuxCommand> is deprecated: use rosflight_msgs-msg:AuxCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AuxCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type_array-val :lambda-list '(m))
(cl:defmethod type_array-val ((m <AuxCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:type_array-val is deprecated.  Use rosflight_msgs-msg:type_array instead.")
  (type_array m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <AuxCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:values-val is deprecated.  Use rosflight_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AuxCommand>)))
    "Constants for message type '<AuxCommand>"
  '((:AUX_COMMAND_DISABLED . 0)
    (:AUX_COMMAND_SERVO . 1)
    (:AUX_COMMAND_MOTOR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AuxCommand)))
    "Constants for message type 'AuxCommand"
  '((:AUX_COMMAND_DISABLED . 0)
    (:AUX_COMMAND_SERVO . 1)
    (:AUX_COMMAND_MOTOR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuxCommand>) ostream)
  "Serializes a message object of type '<AuxCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'type_array))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuxCommand>) istream)
  "Deserializes a message object of type '<AuxCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'type_array) (cl:make-array 14))
  (cl:let ((vals (cl:slot-value msg 'type_array)))
    (cl:dotimes (i 14)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array 14))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i 14)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuxCommand>)))
  "Returns string type for a message object of type '<AuxCommand>"
  "rosflight_msgs/AuxCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuxCommand)))
  "Returns string type for a message object of type 'AuxCommand"
  "rosflight_msgs/AuxCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuxCommand>)))
  "Returns md5sum for a message object of type '<AuxCommand>"
  "dc9d592da23d69af5c42eecb1cedcb4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuxCommand)))
  "Returns md5sum for a message object of type 'AuxCommand"
  "dc9d592da23d69af5c42eecb1cedcb4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuxCommand>)))
  "Returns full string definition for message of type '<AuxCommand>"
  (cl:format cl:nil "# Auxilliary Override Command Message~%~%# Command Types~%uint8 AUX_COMMAND_DISABLED = 0~%uint8 AUX_COMMAND_SERVO = 1~%uint8 AUX_COMMAND_MOTOR = 2~%~%Header header~%uint8[14] type_array~%float32[14] values~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuxCommand)))
  "Returns full string definition for message of type 'AuxCommand"
  (cl:format cl:nil "# Auxilliary Override Command Message~%~%# Command Types~%uint8 AUX_COMMAND_DISABLED = 0~%uint8 AUX_COMMAND_SERVO = 1~%uint8 AUX_COMMAND_MOTOR = 2~%~%Header header~%uint8[14] type_array~%float32[14] values~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuxCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'type_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuxCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'AuxCommand
    (cl:cons ':header (header msg))
    (cl:cons ':type_array (type_array msg))
    (cl:cons ':values (values msg))
))
