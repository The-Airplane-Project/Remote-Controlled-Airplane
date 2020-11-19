; Auto-generated. Do not edit!


(cl:in-package rosplane_msgs-msg)


;//! \htmlinclude Waypoint.msg.html

(cl:defclass <Waypoint> (roslisp-msg-protocol:ros-message)
  ((w
    :reader w
    :initarg :w
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (chi_d
    :reader chi_d
    :initarg :chi_d
    :type cl:float
    :initform 0.0)
   (chi_valid
    :reader chi_valid
    :initarg :chi_valid
    :type cl:boolean
    :initform cl:nil)
   (Va_d
    :reader Va_d
    :initarg :Va_d
    :type cl:float
    :initform 0.0)
   (set_current
    :reader set_current
    :initarg :set_current
    :type cl:boolean
    :initform cl:nil)
   (clear_wp_list
    :reader clear_wp_list
    :initarg :clear_wp_list
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Waypoint (<Waypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Waypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Waypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosplane_msgs-msg:<Waypoint> is deprecated: use rosplane_msgs-msg:Waypoint instead.")))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <Waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:w-val is deprecated.  Use rosplane_msgs-msg:w instead.")
  (w m))

(cl:ensure-generic-function 'chi_d-val :lambda-list '(m))
(cl:defmethod chi_d-val ((m <Waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:chi_d-val is deprecated.  Use rosplane_msgs-msg:chi_d instead.")
  (chi_d m))

(cl:ensure-generic-function 'chi_valid-val :lambda-list '(m))
(cl:defmethod chi_valid-val ((m <Waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:chi_valid-val is deprecated.  Use rosplane_msgs-msg:chi_valid instead.")
  (chi_valid m))

(cl:ensure-generic-function 'Va_d-val :lambda-list '(m))
(cl:defmethod Va_d-val ((m <Waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:Va_d-val is deprecated.  Use rosplane_msgs-msg:Va_d instead.")
  (Va_d m))

(cl:ensure-generic-function 'set_current-val :lambda-list '(m))
(cl:defmethod set_current-val ((m <Waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:set_current-val is deprecated.  Use rosplane_msgs-msg:set_current instead.")
  (set_current m))

(cl:ensure-generic-function 'clear_wp_list-val :lambda-list '(m))
(cl:defmethod clear_wp_list-val ((m <Waypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:clear_wp_list-val is deprecated.  Use rosplane_msgs-msg:clear_wp_list instead.")
  (clear_wp_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Waypoint>) ostream)
  "Serializes a message object of type '<Waypoint>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'w))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'chi_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'chi_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Va_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_current) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear_wp_list) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Waypoint>) istream)
  "Deserializes a message object of type '<Waypoint>"
  (cl:setf (cl:slot-value msg 'w) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'w)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'chi_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'chi_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Va_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'set_current) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clear_wp_list) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Waypoint>)))
  "Returns string type for a message object of type '<Waypoint>"
  "rosplane_msgs/Waypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Waypoint)))
  "Returns string type for a message object of type 'Waypoint"
  "rosplane_msgs/Waypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Waypoint>)))
  "Returns md5sum for a message object of type '<Waypoint>"
  "6f0d6b83780495e80e302dd0005e1bee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Waypoint)))
  "Returns md5sum for a message object of type 'Waypoint"
  "6f0d6b83780495e80e302dd0005e1bee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Waypoint>)))
  "Returns full string definition for message of type '<Waypoint>"
  (cl:format cl:nil "# New waypoint, input to path manager~%~%# @warning w and Va_d always have to be valid; the chi_d is optional.~%float32[3] w		# Waypoint in local NED (m)~%float32 chi_d		# Desired course at this waypoint (rad)~%bool chi_valid		# Desired course valid (dubin or fillet paths)~%float32 Va_d		# Desired airspeed (m/s)~%bool set_current	# Sets this waypoint to be executed now! Starts a new list~%bool clear_wp_list  # Removes all waypoints and returns to origin.  The rest of~%                    # this message will be ignored~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Waypoint)))
  "Returns full string definition for message of type 'Waypoint"
  (cl:format cl:nil "# New waypoint, input to path manager~%~%# @warning w and Va_d always have to be valid; the chi_d is optional.~%float32[3] w		# Waypoint in local NED (m)~%float32 chi_d		# Desired course at this waypoint (rad)~%bool chi_valid		# Desired course valid (dubin or fillet paths)~%float32 Va_d		# Desired airspeed (m/s)~%bool set_current	# Sets this waypoint to be executed now! Starts a new list~%bool clear_wp_list  # Removes all waypoints and returns to origin.  The rest of~%                    # this message will be ignored~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Waypoint>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'w) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     1
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Waypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'Waypoint
    (cl:cons ':w (w msg))
    (cl:cons ':chi_d (chi_d msg))
    (cl:cons ':chi_valid (chi_valid msg))
    (cl:cons ':Va_d (Va_d msg))
    (cl:cons ':set_current (set_current msg))
    (cl:cons ':clear_wp_list (clear_wp_list msg))
))
