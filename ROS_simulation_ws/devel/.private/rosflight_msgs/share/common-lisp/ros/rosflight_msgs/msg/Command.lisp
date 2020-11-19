; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude Command.msg.html

(cl:defclass <Command> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (ignore
    :reader ignore
    :initarg :ignore
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (F
    :reader F
    :initarg :F
    :type cl:float
    :initform 0.0))
)

(cl:defclass Command (<Command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<Command> is deprecated: use rosflight_msgs-msg:Command instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:mode-val is deprecated.  Use rosflight_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'ignore-val :lambda-list '(m))
(cl:defmethod ignore-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:ignore-val is deprecated.  Use rosflight_msgs-msg:ignore instead.")
  (ignore m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:x-val is deprecated.  Use rosflight_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:y-val is deprecated.  Use rosflight_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:z-val is deprecated.  Use rosflight_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'F-val :lambda-list '(m))
(cl:defmethod F-val ((m <Command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:F-val is deprecated.  Use rosflight_msgs-msg:F instead.")
  (F m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Command>)))
    "Constants for message type '<Command>"
  '((:MODE_PASS_THROUGH . 0)
    (:MODE_ROLLRATE_PITCHRATE_YAWRATE_THROTTLE . 1)
    (:MODE_ROLL_PITCH_YAWRATE_THROTTLE . 2)
    (:MODE_ROLL_PITCH_YAWRATE_ALTITUDE . 3)
    (:MODE_XPOS_YPOS_YAW_ALTITUDE . 4)
    (:MODE_XVEL_YVEL_YAWRATE_ALTITUDE . 5)
    (:MODE_XACC_YACC_YAWRATE_AZ . 6)
    (:IGNORE_NONE . 0)
    (:IGNORE_X . 1)
    (:IGNORE_Y . 2)
    (:IGNORE_Z . 4)
    (:IGNORE_F . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Command)))
    "Constants for message type 'Command"
  '((:MODE_PASS_THROUGH . 0)
    (:MODE_ROLLRATE_PITCHRATE_YAWRATE_THROTTLE . 1)
    (:MODE_ROLL_PITCH_YAWRATE_THROTTLE . 2)
    (:MODE_ROLL_PITCH_YAWRATE_ALTITUDE . 3)
    (:MODE_XPOS_YPOS_YAW_ALTITUDE . 4)
    (:MODE_XVEL_YVEL_YAWRATE_ALTITUDE . 5)
    (:MODE_XACC_YACC_YAWRATE_AZ . 6)
    (:IGNORE_NONE . 0)
    (:IGNORE_X . 1)
    (:IGNORE_Y . 2)
    (:IGNORE_Z . 4)
    (:IGNORE_F . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Command>) ostream)
  "Serializes a message object of type '<Command>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ignore)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'F))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Command>) istream)
  "Deserializes a message object of type '<Command>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ignore)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'F) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Command>)))
  "Returns string type for a message object of type '<Command>"
  "rosflight_msgs/Command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Command)))
  "Returns string type for a message object of type 'Command"
  "rosflight_msgs/Command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Command>)))
  "Returns md5sum for a message object of type '<Command>"
  "5ccd6b6ac2f57a7aa47a3c8ac1a0b174")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Command)))
  "Returns md5sum for a message object of type 'Command"
  "5ccd6b6ac2f57a7aa47a3c8ac1a0b174")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Command>)))
  "Returns full string definition for message of type '<Command>"
  (cl:format cl:nil "# Offboard control command message~%~%# control mode flags~%uint8 MODE_PASS_THROUGH = 0~%uint8 MODE_ROLLRATE_PITCHRATE_YAWRATE_THROTTLE = 1~%uint8 MODE_ROLL_PITCH_YAWRATE_THROTTLE = 2~%uint8 MODE_ROLL_PITCH_YAWRATE_ALTITUDE = 3~%uint8 MODE_XPOS_YPOS_YAW_ALTITUDE = 4~%uint8 MODE_XVEL_YVEL_YAWRATE_ALTITUDE = 5~%uint8 MODE_XACC_YACC_YAWRATE_AZ = 6~%~%# ignore field bitmasks~%uint8 IGNORE_NONE = 0~%uint8 IGNORE_X = 1~%uint8 IGNORE_Y = 2~%uint8 IGNORE_Z = 4~%uint8 IGNORE_F = 8~%~%Header header~%uint8 mode # offboard control mode for interpreting value fields~%uint8 ignore # bitmask for ignore specific setpoint values~%float32 x~%float32 y~%float32 z~%float32 F~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Command)))
  "Returns full string definition for message of type 'Command"
  (cl:format cl:nil "# Offboard control command message~%~%# control mode flags~%uint8 MODE_PASS_THROUGH = 0~%uint8 MODE_ROLLRATE_PITCHRATE_YAWRATE_THROTTLE = 1~%uint8 MODE_ROLL_PITCH_YAWRATE_THROTTLE = 2~%uint8 MODE_ROLL_PITCH_YAWRATE_ALTITUDE = 3~%uint8 MODE_XPOS_YPOS_YAW_ALTITUDE = 4~%uint8 MODE_XVEL_YVEL_YAWRATE_ALTITUDE = 5~%uint8 MODE_XACC_YACC_YAWRATE_AZ = 6~%~%# ignore field bitmasks~%uint8 IGNORE_NONE = 0~%uint8 IGNORE_X = 1~%uint8 IGNORE_Y = 2~%uint8 IGNORE_Z = 4~%uint8 IGNORE_F = 8~%~%Header header~%uint8 mode # offboard control mode for interpreting value fields~%uint8 ignore # bitmask for ignore specific setpoint values~%float32 x~%float32 y~%float32 z~%float32 F~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Command>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Command>))
  "Converts a ROS message object to a list"
  (cl:list 'Command
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':ignore (ignore msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':F (F msg))
))
