; Auto-generated. Do not edit!


(cl:in-package rosplane_msgs-msg)


;//! \htmlinclude Controller_Internals.msg.html

(cl:defclass <Controller_Internals> (roslisp-msg-protocol:ros-message)
  ((theta_c
    :reader theta_c
    :initarg :theta_c
    :type cl:float
    :initform 0.0)
   (phi_c
    :reader phi_c
    :initarg :phi_c
    :type cl:float
    :initform 0.0)
   (alt_zone
    :reader alt_zone
    :initarg :alt_zone
    :type cl:fixnum
    :initform 0)
   (aux
    :reader aux
    :initarg :aux
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (aux_valid
    :reader aux_valid
    :initarg :aux_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Controller_Internals (<Controller_Internals>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Controller_Internals>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Controller_Internals)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosplane_msgs-msg:<Controller_Internals> is deprecated: use rosplane_msgs-msg:Controller_Internals instead.")))

(cl:ensure-generic-function 'theta_c-val :lambda-list '(m))
(cl:defmethod theta_c-val ((m <Controller_Internals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:theta_c-val is deprecated.  Use rosplane_msgs-msg:theta_c instead.")
  (theta_c m))

(cl:ensure-generic-function 'phi_c-val :lambda-list '(m))
(cl:defmethod phi_c-val ((m <Controller_Internals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:phi_c-val is deprecated.  Use rosplane_msgs-msg:phi_c instead.")
  (phi_c m))

(cl:ensure-generic-function 'alt_zone-val :lambda-list '(m))
(cl:defmethod alt_zone-val ((m <Controller_Internals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:alt_zone-val is deprecated.  Use rosplane_msgs-msg:alt_zone instead.")
  (alt_zone m))

(cl:ensure-generic-function 'aux-val :lambda-list '(m))
(cl:defmethod aux-val ((m <Controller_Internals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:aux-val is deprecated.  Use rosplane_msgs-msg:aux instead.")
  (aux m))

(cl:ensure-generic-function 'aux_valid-val :lambda-list '(m))
(cl:defmethod aux_valid-val ((m <Controller_Internals>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:aux_valid-val is deprecated.  Use rosplane_msgs-msg:aux_valid instead.")
  (aux_valid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Controller_Internals>)))
    "Constants for message type '<Controller_Internals>"
  '((:ZONE_TAKE_OFF . 0)
    (:ZONE_CLIMB . 1)
    (:ZONE_DESEND . 2)
    (:ZONE_ALTITUDE_HOLD . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Controller_Internals)))
    "Constants for message type 'Controller_Internals"
  '((:ZONE_TAKE_OFF . 0)
    (:ZONE_CLIMB . 1)
    (:ZONE_DESEND . 2)
    (:ZONE_ALTITUDE_HOLD . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Controller_Internals>) ostream)
  "Serializes a message object of type '<Controller_Internals>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phi_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alt_zone)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'aux))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'aux_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Controller_Internals>) istream)
  "Deserializes a message object of type '<Controller_Internals>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_c) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi_c) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alt_zone)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'aux) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'aux)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:slot-value msg 'aux_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Controller_Internals>)))
  "Returns string type for a message object of type '<Controller_Internals>"
  "rosplane_msgs/Controller_Internals")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Controller_Internals)))
  "Returns string type for a message object of type 'Controller_Internals"
  "rosplane_msgs/Controller_Internals")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Controller_Internals>)))
  "Returns md5sum for a message object of type '<Controller_Internals>"
  "1d7fa61846cd31497d4b102451fa214b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Controller_Internals)))
  "Returns md5sum for a message object of type 'Controller_Internals"
  "1d7fa61846cd31497d4b102451fa214b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Controller_Internals>)))
  "Returns full string definition for message of type '<Controller_Internals>"
  (cl:format cl:nil "# Controller internals (inner loops, states) output from the autopilot controller, for now just for debuging and ploting~%~%# @warning theta_c, phi_c and alt_zone have always to be valid, the aux array is optional~%float32 theta_c		# Commanded pitch (rad)~%float32 phi_c		# Commanded roll (rad)~%uint8 alt_zone		# Zone in the altitude state machine~%float32[4] aux		# Optional auxiliary commands~%bool aux_valid		# Auxiliary commands valid~%~%uint8 ZONE_TAKE_OFF = 0~%uint8 ZONE_CLIMB = 1~%uint8 ZONE_DESEND = 2~%uint8 ZONE_ALTITUDE_HOLD = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Controller_Internals)))
  "Returns full string definition for message of type 'Controller_Internals"
  (cl:format cl:nil "# Controller internals (inner loops, states) output from the autopilot controller, for now just for debuging and ploting~%~%# @warning theta_c, phi_c and alt_zone have always to be valid, the aux array is optional~%float32 theta_c		# Commanded pitch (rad)~%float32 phi_c		# Commanded roll (rad)~%uint8 alt_zone		# Zone in the altitude state machine~%float32[4] aux		# Optional auxiliary commands~%bool aux_valid		# Auxiliary commands valid~%~%uint8 ZONE_TAKE_OFF = 0~%uint8 ZONE_CLIMB = 1~%uint8 ZONE_DESEND = 2~%uint8 ZONE_ALTITUDE_HOLD = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Controller_Internals>))
  (cl:+ 0
     4
     4
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'aux) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Controller_Internals>))
  "Converts a ROS message object to a list"
  (cl:list 'Controller_Internals
    (cl:cons ':theta_c (theta_c msg))
    (cl:cons ':phi_c (phi_c msg))
    (cl:cons ':alt_zone (alt_zone msg))
    (cl:cons ':aux (aux msg))
    (cl:cons ':aux_valid (aux_valid msg))
))
