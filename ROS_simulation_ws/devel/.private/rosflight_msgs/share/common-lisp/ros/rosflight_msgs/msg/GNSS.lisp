; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude GNSS.msg.html

(cl:defclass <GNSS> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fix
    :reader fix
    :initarg :fix
    :type cl:fixnum
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (horizontal_accuracy
    :reader horizontal_accuracy
    :initarg :horizontal_accuracy
    :type cl:float
    :initform 0.0)
   (vertical_accuracy
    :reader vertical_accuracy
    :initarg :vertical_accuracy
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (speed_accuracy
    :reader speed_accuracy
    :initarg :speed_accuracy
    :type cl:float
    :initform 0.0))
)

(cl:defclass GNSS (<GNSS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GNSS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GNSS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<GNSS> is deprecated: use rosflight_msgs-msg:GNSS instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fix-val :lambda-list '(m))
(cl:defmethod fix-val ((m <GNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:fix-val is deprecated.  Use rosflight_msgs-msg:fix instead.")
  (fix m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <GNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:time-val is deprecated.  Use rosflight_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:position-val is deprecated.  Use rosflight_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'horizontal_accuracy-val :lambda-list '(m))
(cl:defmethod horizontal_accuracy-val ((m <GNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:horizontal_accuracy-val is deprecated.  Use rosflight_msgs-msg:horizontal_accuracy instead.")
  (horizontal_accuracy m))

(cl:ensure-generic-function 'vertical_accuracy-val :lambda-list '(m))
(cl:defmethod vertical_accuracy-val ((m <GNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:vertical_accuracy-val is deprecated.  Use rosflight_msgs-msg:vertical_accuracy instead.")
  (vertical_accuracy m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <GNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:velocity-val is deprecated.  Use rosflight_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'speed_accuracy-val :lambda-list '(m))
(cl:defmethod speed_accuracy-val ((m <GNSS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:speed_accuracy-val is deprecated.  Use rosflight_msgs-msg:speed_accuracy instead.")
  (speed_accuracy m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GNSS>)))
    "Constants for message type '<GNSS>"
  '((:FIX_TYPE_NO_FIX . 0)
    (:FIX_TYPE_FIX . 1)
    (:FIX_TYPE_RTK_FLOAT . 2)
    (:FIX_TYPE_RTK_FIXED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GNSS)))
    "Constants for message type 'GNSS"
  '((:FIX_TYPE_NO_FIX . 0)
    (:FIX_TYPE_FIX . 1)
    (:FIX_TYPE_RTK_FLOAT . 2)
    (:FIX_TYPE_RTK_FIXED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GNSS>) ostream)
  "Serializes a message object of type '<GNSS>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'horizontal_accuracy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vertical_accuracy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'velocity))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_accuracy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GNSS>) istream)
  "Deserializes a message object of type '<GNSS>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontal_accuracy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vertical_accuracy) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_accuracy) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GNSS>)))
  "Returns string type for a message object of type '<GNSS>"
  "rosflight_msgs/GNSS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GNSS)))
  "Returns string type for a message object of type 'GNSS"
  "rosflight_msgs/GNSS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GNSS>)))
  "Returns md5sum for a message object of type '<GNSS>"
  "ce071f3e09875340cd897d6a0fd5714f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GNSS)))
  "Returns md5sum for a message object of type 'GNSS"
  "ce071f3e09875340cd897d6a0fd5714f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GNSS>)))
  "Returns full string definition for message of type '<GNSS>"
  (cl:format cl:nil "Header header # Estimated ROS time at moment of measurement~%uint8 fix # fix type, enums defined below~%time time # GPS time at moment of measurement~%float64[3] position # m, ECEF frame~%float64 horizontal_accuracy # m~%float64 vertical_accuracy # m~%float64[3] velocity # m/s, ECEF frame~%float64 speed_accuracy # m/s~%~%uint8 FIX_TYPE_NO_FIX = 0 ~%uint8 FIX_TYPE_FIX = 1~%uint8 FIX_TYPE_RTK_FLOAT = 2~%uint8 FIX_TYPE_RTK_FIXED = 3 ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GNSS)))
  "Returns full string definition for message of type 'GNSS"
  (cl:format cl:nil "Header header # Estimated ROS time at moment of measurement~%uint8 fix # fix type, enums defined below~%time time # GPS time at moment of measurement~%float64[3] position # m, ECEF frame~%float64 horizontal_accuracy # m~%float64 vertical_accuracy # m~%float64[3] velocity # m/s, ECEF frame~%float64 speed_accuracy # m/s~%~%uint8 FIX_TYPE_NO_FIX = 0 ~%uint8 FIX_TYPE_FIX = 1~%uint8 FIX_TYPE_RTK_FLOAT = 2~%uint8 FIX_TYPE_RTK_FIXED = 3 ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GNSS>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GNSS>))
  "Converts a ROS message object to a list"
  (cl:list 'GNSS
    (cl:cons ':header (header msg))
    (cl:cons ':fix (fix msg))
    (cl:cons ':time (time msg))
    (cl:cons ':position (position msg))
    (cl:cons ':horizontal_accuracy (horizontal_accuracy msg))
    (cl:cons ':vertical_accuracy (vertical_accuracy msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':speed_accuracy (speed_accuracy msg))
))
