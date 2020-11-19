; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-srv)


;//! \htmlinclude ParamFile-request.msg.html

(cl:defclass <ParamFile-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass ParamFile-request (<ParamFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-srv:<ParamFile-request> is deprecated: use rosflight_msgs-srv:ParamFile-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <ParamFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-srv:filename-val is deprecated.  Use rosflight_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamFile-request>) ostream)
  "Serializes a message object of type '<ParamFile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamFile-request>) istream)
  "Deserializes a message object of type '<ParamFile-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamFile-request>)))
  "Returns string type for a service object of type '<ParamFile-request>"
  "rosflight_msgs/ParamFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamFile-request)))
  "Returns string type for a service object of type 'ParamFile-request"
  "rosflight_msgs/ParamFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamFile-request>)))
  "Returns md5sum for a message object of type '<ParamFile-request>"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamFile-request)))
  "Returns md5sum for a message object of type 'ParamFile-request"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamFile-request>)))
  "Returns full string definition for message of type '<ParamFile-request>"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamFile-request)))
  "Returns full string definition for message of type 'ParamFile-request"
  (cl:format cl:nil "string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamFile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamFile-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude ParamFile-response.msg.html

(cl:defclass <ParamFile-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ParamFile-response (<ParamFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParamFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParamFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-srv:<ParamFile-response> is deprecated: use rosflight_msgs-srv:ParamFile-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ParamFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-srv:success-val is deprecated.  Use rosflight_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParamFile-response>) ostream)
  "Serializes a message object of type '<ParamFile-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParamFile-response>) istream)
  "Deserializes a message object of type '<ParamFile-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParamFile-response>)))
  "Returns string type for a service object of type '<ParamFile-response>"
  "rosflight_msgs/ParamFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamFile-response)))
  "Returns string type for a service object of type 'ParamFile-response"
  "rosflight_msgs/ParamFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParamFile-response>)))
  "Returns md5sum for a message object of type '<ParamFile-response>"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParamFile-response)))
  "Returns md5sum for a message object of type 'ParamFile-response"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParamFile-response>)))
  "Returns full string definition for message of type '<ParamFile-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParamFile-response)))
  "Returns full string definition for message of type 'ParamFile-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParamFile-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParamFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ParamFile-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ParamFile)))
  'ParamFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ParamFile)))
  'ParamFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParamFile)))
  "Returns string type for a service object of type '<ParamFile>"
  "rosflight_msgs/ParamFile")