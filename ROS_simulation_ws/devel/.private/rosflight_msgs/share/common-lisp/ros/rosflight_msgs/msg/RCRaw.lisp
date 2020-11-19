; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude RCRaw.msg.html

(cl:defclass <RCRaw> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass RCRaw (<RCRaw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RCRaw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RCRaw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<RCRaw> is deprecated: use rosflight_msgs-msg:RCRaw instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RCRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <RCRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:values-val is deprecated.  Use rosflight_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RCRaw>) ostream)
  "Serializes a message object of type '<RCRaw>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RCRaw>) istream)
  "Deserializes a message object of type '<RCRaw>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'values) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RCRaw>)))
  "Returns string type for a message object of type '<RCRaw>"
  "rosflight_msgs/RCRaw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RCRaw)))
  "Returns string type for a message object of type 'RCRaw"
  "rosflight_msgs/RCRaw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RCRaw>)))
  "Returns md5sum for a message object of type '<RCRaw>"
  "4e07e0a6c2de8828f77c94cd208f693e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RCRaw)))
  "Returns md5sum for a message object of type 'RCRaw"
  "4e07e0a6c2de8828f77c94cd208f693e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RCRaw>)))
  "Returns full string definition for message of type '<RCRaw>"
  (cl:format cl:nil "# raw servo outputs~%~%Header header~%uint16[8] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RCRaw)))
  "Returns full string definition for message of type 'RCRaw"
  (cl:format cl:nil "# raw servo outputs~%~%Header header~%uint16[8] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RCRaw>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RCRaw>))
  "Converts a ROS message object to a list"
  (cl:list 'RCRaw
    (cl:cons ':header (header msg))
    (cl:cons ':values (values msg))
))
