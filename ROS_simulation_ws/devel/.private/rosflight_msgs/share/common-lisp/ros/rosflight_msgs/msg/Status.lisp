; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude Status.msg.html

(cl:defclass <Status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (armed
    :reader armed
    :initarg :armed
    :type cl:boolean
    :initform cl:nil)
   (failsafe
    :reader failsafe
    :initarg :failsafe
    :type cl:boolean
    :initform cl:nil)
   (rc_override
    :reader rc_override
    :initarg :rc_override
    :type cl:boolean
    :initform cl:nil)
   (offboard
    :reader offboard
    :initarg :offboard
    :type cl:boolean
    :initform cl:nil)
   (control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:fixnum
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (num_errors
    :reader num_errors
    :initarg :num_errors
    :type cl:fixnum
    :initform 0)
   (loop_time_us
    :reader loop_time_us
    :initarg :loop_time_us
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Status (<Status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<Status> is deprecated: use rosflight_msgs-msg:Status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'armed-val :lambda-list '(m))
(cl:defmethod armed-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:armed-val is deprecated.  Use rosflight_msgs-msg:armed instead.")
  (armed m))

(cl:ensure-generic-function 'failsafe-val :lambda-list '(m))
(cl:defmethod failsafe-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:failsafe-val is deprecated.  Use rosflight_msgs-msg:failsafe instead.")
  (failsafe m))

(cl:ensure-generic-function 'rc_override-val :lambda-list '(m))
(cl:defmethod rc_override-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:rc_override-val is deprecated.  Use rosflight_msgs-msg:rc_override instead.")
  (rc_override m))

(cl:ensure-generic-function 'offboard-val :lambda-list '(m))
(cl:defmethod offboard-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:offboard-val is deprecated.  Use rosflight_msgs-msg:offboard instead.")
  (offboard m))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:control_mode-val is deprecated.  Use rosflight_msgs-msg:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:error_code-val is deprecated.  Use rosflight_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'num_errors-val :lambda-list '(m))
(cl:defmethod num_errors-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:num_errors-val is deprecated.  Use rosflight_msgs-msg:num_errors instead.")
  (num_errors m))

(cl:ensure-generic-function 'loop_time_us-val :lambda-list '(m))
(cl:defmethod loop_time_us-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:loop_time_us-val is deprecated.  Use rosflight_msgs-msg:loop_time_us instead.")
  (loop_time_us m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Status>) ostream)
  "Serializes a message object of type '<Status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'armed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'failsafe) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rc_override) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'offboard) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'control_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_errors)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'loop_time_us)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Status>) istream)
  "Deserializes a message object of type '<Status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'armed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'failsafe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rc_override) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'offboard) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_errors) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'loop_time_us) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Status>)))
  "Returns string type for a message object of type '<Status>"
  "rosflight_msgs/Status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Status)))
  "Returns string type for a message object of type 'Status"
  "rosflight_msgs/Status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Status>)))
  "Returns md5sum for a message object of type '<Status>"
  "47d8a47dbe4d0941ff4c84b89a5de11e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Status)))
  "Returns md5sum for a message object of type 'Status"
  "47d8a47dbe4d0941ff4c84b89a5de11e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Status>)))
  "Returns full string definition for message of type '<Status>"
  (cl:format cl:nil "# Flight controller status message~%~%Header header~%~%bool armed         # True if armed~%bool failsafe      # True if in failsafe~%bool rc_override   # True if RC is in control~%bool offboard      # True if offboard control is active~%int8 control_mode  # Onboard control mode~%int8 error_code    # Onboard error code~%int16 num_errors   # Number of errors~%int16 loop_time_us # Loop time in microseconds~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Status)))
  "Returns full string definition for message of type 'Status"
  (cl:format cl:nil "# Flight controller status message~%~%Header header~%~%bool armed         # True if armed~%bool failsafe      # True if in failsafe~%bool rc_override   # True if RC is in control~%bool offboard      # True if offboard control is active~%int8 control_mode  # Onboard control mode~%int8 error_code    # Onboard error code~%int16 num_errors   # Number of errors~%int16 loop_time_us # Loop time in microseconds~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Status>))
  "Converts a ROS message object to a list"
  (cl:list 'Status
    (cl:cons ':header (header msg))
    (cl:cons ':armed (armed msg))
    (cl:cons ':failsafe (failsafe msg))
    (cl:cons ':rc_override (rc_override msg))
    (cl:cons ':offboard (offboard msg))
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':num_errors (num_errors msg))
    (cl:cons ':loop_time_us (loop_time_us msg))
))
