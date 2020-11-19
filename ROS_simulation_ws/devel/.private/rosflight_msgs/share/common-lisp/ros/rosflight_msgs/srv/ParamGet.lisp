; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-srv)


;//! \htmlinclude ParamGet-request.msg.html

(cl:defclass <ParamGet-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass ParamGet-request (<ParamGet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamGet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamGet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-srv:<ParamGet-request> is deprecated: use rosflight_msgs-srv:ParamGet-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ParamGet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-srv:name-val is deprecated.  Use rosflight_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamGet-request>) ostream)
  "Serializes a message object of type '<ParamGet-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamGet-request>) istream)
  "Deserializes a message object of type '<ParamGet-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamGet-request>)))
  "Returns string type for a service object of type '<ParamGet-request>"
  "rosflight_msgs/ParamGetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGet-request)))
  "Returns string type for a service object of type 'ParamGet-request"
  "rosflight_msgs/ParamGetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamGet-request>)))
  "Returns md5sum for a message object of type '<ParamGet-request>"
  "084c270cbd1d72e2f34b8b8b23df1ede")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamGet-request)))
  "Returns md5sum for a message object of type 'ParamGet-request"
  "084c270cbd1d72e2f34b8b8b23df1ede")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamGet-request>)))
  "Returns full string definition for message of type '<ParamGet-request>"
  (cl:format cl:nil "# Request a parameter value~%~%string name # the name of the parameter value to retrieve~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamGet-request)))
  "Returns full string definition for message of type 'ParamGet-request"
  (cl:format cl:nil "# Request a parameter value~%~%string name # the name of the parameter value to retrieve~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamGet-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamGet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamGet-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude ParamGet-response.msg.html

(cl:defclass <ParamGet-response> (roslisp-msg-protocol:ros-message)
  ((exists
    :reader exists
    :initarg :exists
    :type cl:boolean
    :initform cl:nil)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass ParamGet-response (<ParamGet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamGet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamGet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-srv:<ParamGet-response> is deprecated: use rosflight_msgs-srv:ParamGet-response instead.")))

(cl:ensure-generic-function 'exists-val :lambda-list '(m))
(cl:defmethod exists-val ((m <ParamGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-srv:exists-val is deprecated.  Use rosflight_msgs-srv:exists instead.")
  (exists m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParamGet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-srv:value-val is deprecated.  Use rosflight_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamGet-response>) ostream)
  "Serializes a message object of type '<ParamGet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'exists) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamGet-response>) istream)
  "Deserializes a message object of type '<ParamGet-response>"
    (cl:setf (cl:slot-value msg 'exists) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamGet-response>)))
  "Returns string type for a service object of type '<ParamGet-response>"
  "rosflight_msgs/ParamGetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGet-response)))
  "Returns string type for a service object of type 'ParamGet-response"
  "rosflight_msgs/ParamGetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamGet-response>)))
  "Returns md5sum for a message object of type '<ParamGet-response>"
  "084c270cbd1d72e2f34b8b8b23df1ede")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamGet-response)))
  "Returns md5sum for a message object of type 'ParamGet-response"
  "084c270cbd1d72e2f34b8b8b23df1ede")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamGet-response>)))
  "Returns full string definition for message of type '<ParamGet-response>"
  (cl:format cl:nil "bool exists # whether the request parameter exists~%float64 value # the value of the requested parameter~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamGet-response)))
  "Returns full string definition for message of type 'ParamGet-response"
  (cl:format cl:nil "bool exists # whether the request parameter exists~%float64 value # the value of the requested parameter~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamGet-response>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamGet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamGet-response
    (cl:cons ':exists (exists msg))
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamGet)))
  'ParamGet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamGet)))
  'ParamGet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamGet)))
  "Returns string type for a service object of type '<ParamGet>"
  "rosflight_msgs/ParamGet")