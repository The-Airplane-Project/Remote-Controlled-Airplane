; Auto-generated. Do not edit!


(cl:in-package rosplane_msgs-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (Va
    :reader Va
    :initarg :Va
    :type cl:float
    :initform 0.0)
   (alpha
    :reader alpha
    :initarg :alpha
    :type cl:float
    :initform 0.0)
   (beta
    :reader beta
    :initarg :beta
    :type cl:float
    :initform 0.0)
   (phi
    :reader phi
    :initarg :phi
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (psi
    :reader psi
    :initarg :psi
    :type cl:float
    :initform 0.0)
   (chi
    :reader chi
    :initarg :chi
    :type cl:float
    :initform 0.0)
   (p
    :reader p
    :initarg :p
    :type cl:float
    :initform 0.0)
   (q
    :reader q
    :initarg :q
    :type cl:float
    :initform 0.0)
   (r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0)
   (Vg
    :reader Vg
    :initarg :Vg
    :type cl:float
    :initform 0.0)
   (wn
    :reader wn
    :initarg :wn
    :type cl:float
    :initform 0.0)
   (we
    :reader we
    :initarg :we
    :type cl:float
    :initform 0.0)
   (quat
    :reader quat
    :initarg :quat
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (quat_valid
    :reader quat_valid
    :initarg :quat_valid
    :type cl:boolean
    :initform cl:nil)
   (chi_deg
    :reader chi_deg
    :initarg :chi_deg
    :type cl:float
    :initform 0.0)
   (psi_deg
    :reader psi_deg
    :initarg :psi_deg
    :type cl:float
    :initform 0.0)
   (initial_lat
    :reader initial_lat
    :initarg :initial_lat
    :type cl:float
    :initform 0.0)
   (initial_lon
    :reader initial_lon
    :initarg :initial_lon
    :type cl:float
    :initform 0.0)
   (initial_alt
    :reader initial_alt
    :initarg :initial_alt
    :type cl:float
    :initform 0.0))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosplane_msgs-msg:<State> is deprecated: use rosplane_msgs-msg:State instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:header-val is deprecated.  Use rosplane_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:position-val is deprecated.  Use rosplane_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'Va-val :lambda-list '(m))
(cl:defmethod Va-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:Va-val is deprecated.  Use rosplane_msgs-msg:Va instead.")
  (Va m))

(cl:ensure-generic-function 'alpha-val :lambda-list '(m))
(cl:defmethod alpha-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:alpha-val is deprecated.  Use rosplane_msgs-msg:alpha instead.")
  (alpha m))

(cl:ensure-generic-function 'beta-val :lambda-list '(m))
(cl:defmethod beta-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:beta-val is deprecated.  Use rosplane_msgs-msg:beta instead.")
  (beta m))

(cl:ensure-generic-function 'phi-val :lambda-list '(m))
(cl:defmethod phi-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:phi-val is deprecated.  Use rosplane_msgs-msg:phi instead.")
  (phi m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:theta-val is deprecated.  Use rosplane_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'psi-val :lambda-list '(m))
(cl:defmethod psi-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:psi-val is deprecated.  Use rosplane_msgs-msg:psi instead.")
  (psi m))

(cl:ensure-generic-function 'chi-val :lambda-list '(m))
(cl:defmethod chi-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:chi-val is deprecated.  Use rosplane_msgs-msg:chi instead.")
  (chi m))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:p-val is deprecated.  Use rosplane_msgs-msg:p instead.")
  (p m))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:q-val is deprecated.  Use rosplane_msgs-msg:q instead.")
  (q m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:r-val is deprecated.  Use rosplane_msgs-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'Vg-val :lambda-list '(m))
(cl:defmethod Vg-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:Vg-val is deprecated.  Use rosplane_msgs-msg:Vg instead.")
  (Vg m))

(cl:ensure-generic-function 'wn-val :lambda-list '(m))
(cl:defmethod wn-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:wn-val is deprecated.  Use rosplane_msgs-msg:wn instead.")
  (wn m))

(cl:ensure-generic-function 'we-val :lambda-list '(m))
(cl:defmethod we-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:we-val is deprecated.  Use rosplane_msgs-msg:we instead.")
  (we m))

(cl:ensure-generic-function 'quat-val :lambda-list '(m))
(cl:defmethod quat-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:quat-val is deprecated.  Use rosplane_msgs-msg:quat instead.")
  (quat m))

(cl:ensure-generic-function 'quat_valid-val :lambda-list '(m))
(cl:defmethod quat_valid-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:quat_valid-val is deprecated.  Use rosplane_msgs-msg:quat_valid instead.")
  (quat_valid m))

(cl:ensure-generic-function 'chi_deg-val :lambda-list '(m))
(cl:defmethod chi_deg-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:chi_deg-val is deprecated.  Use rosplane_msgs-msg:chi_deg instead.")
  (chi_deg m))

(cl:ensure-generic-function 'psi_deg-val :lambda-list '(m))
(cl:defmethod psi_deg-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:psi_deg-val is deprecated.  Use rosplane_msgs-msg:psi_deg instead.")
  (psi_deg m))

(cl:ensure-generic-function 'initial_lat-val :lambda-list '(m))
(cl:defmethod initial_lat-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:initial_lat-val is deprecated.  Use rosplane_msgs-msg:initial_lat instead.")
  (initial_lat m))

(cl:ensure-generic-function 'initial_lon-val :lambda-list '(m))
(cl:defmethod initial_lon-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:initial_lon-val is deprecated.  Use rosplane_msgs-msg:initial_lon instead.")
  (initial_lon m))

(cl:ensure-generic-function 'initial_alt-val :lambda-list '(m))
(cl:defmethod initial_alt-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosplane_msgs-msg:initial_alt-val is deprecated.  Use rosplane_msgs-msg:initial_alt instead.")
  (initial_alt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Va))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'alpha))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'beta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'psi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'chi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'q))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Vg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'we))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'quat))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'quat_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'chi_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'psi_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'initial_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'initial_lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'initial_alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'position)))
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
    (cl:setf (cl:slot-value msg 'Va) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alpha) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'beta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'chi) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Vg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wn) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'we) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'quat) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'quat)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:slot-value msg 'quat_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'chi_deg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psi_deg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'initial_lat) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'initial_lon) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'initial_alt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "rosplane_msgs/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "rosplane_msgs/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "57224b7ced1a3b169bed04d7cbeefdfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "57224b7ced1a3b169bed04d7cbeefdfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "# Vehicle state 'x_hat' output from the estimator or from simulator ~%~%Header header~%~%# Original States~%# @warning roll, pitch and yaw have always to be valid, the quaternion is optional~%float32[3] position	# north, east, down (m)~%float32 Va		# Airspeed (m/s)~%float32 alpha		# Angle of attack (rad)~%float32 beta		# Slide slip angle (rad)~%float32 phi		# Roll angle (rad)~%float32 theta		# Pitch angle (rad)~%float32 psi		# Yaw angle (rad)~%float32 chi		# Course angle (rad)~%float32 p		# Body frame rollrate (rad/s)~%float32 q		# Body frame pitchrate (rad/s)~%float32 r		# Body frame yawrate (rad/s)~%float32 Vg		# Groundspeed (m/s)~%float32 wn		# Windspeed north component (m/s)~%float32 we		# Windspeed east component (m/s)~%~%# Additional States for convenience~%float32[4] quat		# Quaternion (wxyz, NED)~%bool quat_valid		# Quaternion valid~%float32 chi_deg		# Wrapped course angle (deg)~%float32 psi_deg		# Wrapped yaw angle (deg)~%float32 initial_lat 	# Initial/origin latitude (lat. deg)~%float32 initial_lon 	# Initial/origin longitude (lon. deg) ~%float32 initial_alt 	# Initial/origin altitude (m) ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "# Vehicle state 'x_hat' output from the estimator or from simulator ~%~%Header header~%~%# Original States~%# @warning roll, pitch and yaw have always to be valid, the quaternion is optional~%float32[3] position	# north, east, down (m)~%float32 Va		# Airspeed (m/s)~%float32 alpha		# Angle of attack (rad)~%float32 beta		# Slide slip angle (rad)~%float32 phi		# Roll angle (rad)~%float32 theta		# Pitch angle (rad)~%float32 psi		# Yaw angle (rad)~%float32 chi		# Course angle (rad)~%float32 p		# Body frame rollrate (rad/s)~%float32 q		# Body frame pitchrate (rad/s)~%float32 r		# Body frame yawrate (rad/s)~%float32 Vg		# Groundspeed (m/s)~%float32 wn		# Windspeed north component (m/s)~%float32 we		# Windspeed east component (m/s)~%~%# Additional States for convenience~%float32[4] quat		# Quaternion (wxyz, NED)~%bool quat_valid		# Quaternion valid~%float32 chi_deg		# Wrapped course angle (deg)~%float32 psi_deg		# Wrapped yaw angle (deg)~%float32 initial_lat 	# Initial/origin latitude (lat. deg)~%float32 initial_lon 	# Initial/origin longitude (lon. deg) ~%float32 initial_alt 	# Initial/origin altitude (m) ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'quat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':Va (Va msg))
    (cl:cons ':alpha (alpha msg))
    (cl:cons ':beta (beta msg))
    (cl:cons ':phi (phi msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':psi (psi msg))
    (cl:cons ':chi (chi msg))
    (cl:cons ':p (p msg))
    (cl:cons ':q (q msg))
    (cl:cons ':r (r msg))
    (cl:cons ':Vg (Vg msg))
    (cl:cons ':wn (wn msg))
    (cl:cons ':we (we msg))
    (cl:cons ':quat (quat msg))
    (cl:cons ':quat_valid (quat_valid msg))
    (cl:cons ':chi_deg (chi_deg msg))
    (cl:cons ':psi_deg (psi_deg msg))
    (cl:cons ':initial_lat (initial_lat msg))
    (cl:cons ':initial_lon (initial_lon msg))
    (cl:cons ':initial_alt (initial_alt msg))
))
