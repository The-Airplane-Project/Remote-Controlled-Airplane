; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude Error.msg.html

(cl:defclass <Error> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform "")
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (reset_count
    :reader reset_count
    :initarg :reset_count
    :type cl:integer
    :initform 0)
   (rearm
    :reader rearm
    :initarg :rearm
    :type cl:boolean
    :initform cl:nil)
   (pc
    :reader pc
    :initarg :pc
    :type cl:integer
    :initform 0))
)

(cl:defclass Error (<Error>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Error>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Error)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<Error> is deprecated: use rosflight_msgs-msg:Error instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Error>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <Error>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:error_message-val is deprecated.  Use rosflight_msgs-msg:error_message instead.")
  (error_message m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <Error>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:error_code-val is deprecated.  Use rosflight_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'reset_count-val :lambda-list '(m))
(cl:defmethod reset_count-val ((m <Error>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:reset_count-val is deprecated.  Use rosflight_msgs-msg:reset_count instead.")
  (reset_count m))

(cl:ensure-generic-function 'rearm-val :lambda-list '(m))
(cl:defmethod rearm-val ((m <Error>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:rearm-val is deprecated.  Use rosflight_msgs-msg:rearm instead.")
  (rearm m))

(cl:ensure-generic-function 'pc-val :lambda-list '(m))
(cl:defmethod pc-val ((m <Error>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:pc-val is deprecated.  Use rosflight_msgs-msg:pc instead.")
  (pc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Error>) ostream)
  "Serializes a message object of type '<Error>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reset_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reset_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reset_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reset_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rearm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pc)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Error>) istream)
  "Deserializes a message object of type '<Error>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reset_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reset_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reset_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reset_count)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'pc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'pc)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Error>)))
  "Returns string type for a message object of type '<Error>"
  "rosflight_msgs/Error")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Error)))
  "Returns string type for a message object of type 'Error"
  "rosflight_msgs/Error")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Error>)))
  "Returns md5sum for a message object of type '<Error>"
  "54b4d1e0725009401e6c34324c30bd0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Error)))
  "Returns md5sum for a message object of type 'Error"
  "54b4d1e0725009401e6c34324c30bd0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Error>)))
  "Returns full string definition for message of type '<Error>"
  (cl:format cl:nil "#For handling rosflight hard errors~%~%Header header~%string error_message~%uint32 error_code~%uint32 reset_count~%bool rearm~%uint32 pc~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Error)))
  "Returns full string definition for message of type 'Error"
  (cl:format cl:nil "#For handling rosflight hard errors~%~%Header header~%string error_message~%uint32 error_code~%uint32 reset_count~%bool rearm~%uint32 pc~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Error>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'error_message))
     4
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Error>))
  "Converts a ROS message object to a list"
  (cl:list 'Error
    (cl:cons ':header (header msg))
    (cl:cons ':error_message (error_message msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':reset_count (reset_count msg))
    (cl:cons ':rearm (rearm msg))
    (cl:cons ':pc (pc msg))
))
