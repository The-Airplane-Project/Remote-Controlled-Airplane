; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude OutputRaw.msg.html

(cl:defclass <OutputRaw> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 14 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass OutputRaw (<OutputRaw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OutputRaw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OutputRaw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<OutputRaw> is deprecated: use rosflight_msgs-msg:OutputRaw instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OutputRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <OutputRaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:values-val is deprecated.  Use rosflight_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OutputRaw>) ostream)
  "Serializes a message object of type '<OutputRaw>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OutputRaw>) istream)
  "Deserializes a message object of type '<OutputRaw>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OutputRaw>)))
  "Returns string type for a message object of type '<OutputRaw>"
  "rosflight_msgs/OutputRaw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OutputRaw)))
  "Returns string type for a message object of type 'OutputRaw"
  "rosflight_msgs/OutputRaw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OutputRaw>)))
  "Returns md5sum for a message object of type '<OutputRaw>"
  "86704c636f24b54825756571c5e852f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OutputRaw)))
  "Returns md5sum for a message object of type 'OutputRaw"
  "86704c636f24b54825756571c5e852f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OutputRaw>)))
  "Returns full string definition for message of type '<OutputRaw>"
  (cl:format cl:nil "# raw servo outputs~%~%Header header~%float32[14] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OutputRaw)))
  "Returns full string definition for message of type 'OutputRaw"
  (cl:format cl:nil "# raw servo outputs~%~%Header header~%float32[14] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OutputRaw>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OutputRaw>))
  "Converts a ROS message object to a list"
  (cl:list 'OutputRaw
    (cl:cons ':header (header msg))
    (cl:cons ':values (values msg))
))
