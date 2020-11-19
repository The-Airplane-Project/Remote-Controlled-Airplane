; Auto-generated. Do not edit!


(cl:in-package rosflight_msgs-msg)


;//! \htmlinclude GNSSFull.msg.html

(cl:defclass <GNSSFull> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_of_week
    :reader time_of_week
    :initarg :time_of_week
    :type cl:integer
    :initform 0)
   (year
    :reader year
    :initarg :year
    :type cl:fixnum
    :initform 0)
   (month
    :reader month
    :initarg :month
    :type cl:fixnum
    :initform 0)
   (day
    :reader day
    :initarg :day
    :type cl:fixnum
    :initform 0)
   (hour
    :reader hour
    :initarg :hour
    :type cl:fixnum
    :initform 0)
   (min
    :reader min
    :initarg :min
    :type cl:fixnum
    :initform 0)
   (sec
    :reader sec
    :initarg :sec
    :type cl:fixnum
    :initform 0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:fixnum
    :initform 0)
   (t_acc
    :reader t_acc
    :initarg :t_acc
    :type cl:integer
    :initform 0)
   (nano
    :reader nano
    :initarg :nano
    :type cl:integer
    :initform 0)
   (fix_type
    :reader fix_type
    :initarg :fix_type
    :type cl:fixnum
    :initform 0)
   (num_sat
    :reader num_sat
    :initarg :num_sat
    :type cl:fixnum
    :initform 0)
   (lon
    :reader lon
    :initarg :lon
    :type cl:integer
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (height_msl
    :reader height_msl
    :initarg :height_msl
    :type cl:integer
    :initform 0)
   (h_acc
    :reader h_acc
    :initarg :h_acc
    :type cl:integer
    :initform 0)
   (v_acc
    :reader v_acc
    :initarg :v_acc
    :type cl:integer
    :initform 0)
   (vel_n
    :reader vel_n
    :initarg :vel_n
    :type cl:integer
    :initform 0)
   (vel_e
    :reader vel_e
    :initarg :vel_e
    :type cl:integer
    :initform 0)
   (vel_d
    :reader vel_d
    :initarg :vel_d
    :type cl:integer
    :initform 0)
   (g_speed
    :reader g_speed
    :initarg :g_speed
    :type cl:integer
    :initform 0)
   (head_mot
    :reader head_mot
    :initarg :head_mot
    :type cl:integer
    :initform 0)
   (s_acc
    :reader s_acc
    :initarg :s_acc
    :type cl:integer
    :initform 0)
   (head_acc
    :reader head_acc
    :initarg :head_acc
    :type cl:integer
    :initform 0)
   (p_dop
    :reader p_dop
    :initarg :p_dop
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GNSSFull (<GNSSFull>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GNSSFull>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GNSSFull)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosflight_msgs-msg:<GNSSFull> is deprecated: use rosflight_msgs-msg:GNSSFull instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:header-val is deprecated.  Use rosflight_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_of_week-val :lambda-list '(m))
(cl:defmethod time_of_week-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:time_of_week-val is deprecated.  Use rosflight_msgs-msg:time_of_week instead.")
  (time_of_week m))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:year-val is deprecated.  Use rosflight_msgs-msg:year instead.")
  (year m))

(cl:ensure-generic-function 'month-val :lambda-list '(m))
(cl:defmethod month-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:month-val is deprecated.  Use rosflight_msgs-msg:month instead.")
  (month m))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:day-val is deprecated.  Use rosflight_msgs-msg:day instead.")
  (day m))

(cl:ensure-generic-function 'hour-val :lambda-list '(m))
(cl:defmethod hour-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:hour-val is deprecated.  Use rosflight_msgs-msg:hour instead.")
  (hour m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:min-val is deprecated.  Use rosflight_msgs-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'sec-val :lambda-list '(m))
(cl:defmethod sec-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:sec-val is deprecated.  Use rosflight_msgs-msg:sec instead.")
  (sec m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:valid-val is deprecated.  Use rosflight_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 't_acc-val :lambda-list '(m))
(cl:defmethod t_acc-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:t_acc-val is deprecated.  Use rosflight_msgs-msg:t_acc instead.")
  (t_acc m))

(cl:ensure-generic-function 'nano-val :lambda-list '(m))
(cl:defmethod nano-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:nano-val is deprecated.  Use rosflight_msgs-msg:nano instead.")
  (nano m))

(cl:ensure-generic-function 'fix_type-val :lambda-list '(m))
(cl:defmethod fix_type-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:fix_type-val is deprecated.  Use rosflight_msgs-msg:fix_type instead.")
  (fix_type m))

(cl:ensure-generic-function 'num_sat-val :lambda-list '(m))
(cl:defmethod num_sat-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:num_sat-val is deprecated.  Use rosflight_msgs-msg:num_sat instead.")
  (num_sat m))

(cl:ensure-generic-function 'lon-val :lambda-list '(m))
(cl:defmethod lon-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:lon-val is deprecated.  Use rosflight_msgs-msg:lon instead.")
  (lon m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:lat-val is deprecated.  Use rosflight_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:height-val is deprecated.  Use rosflight_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'height_msl-val :lambda-list '(m))
(cl:defmethod height_msl-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:height_msl-val is deprecated.  Use rosflight_msgs-msg:height_msl instead.")
  (height_msl m))

(cl:ensure-generic-function 'h_acc-val :lambda-list '(m))
(cl:defmethod h_acc-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:h_acc-val is deprecated.  Use rosflight_msgs-msg:h_acc instead.")
  (h_acc m))

(cl:ensure-generic-function 'v_acc-val :lambda-list '(m))
(cl:defmethod v_acc-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:v_acc-val is deprecated.  Use rosflight_msgs-msg:v_acc instead.")
  (v_acc m))

(cl:ensure-generic-function 'vel_n-val :lambda-list '(m))
(cl:defmethod vel_n-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:vel_n-val is deprecated.  Use rosflight_msgs-msg:vel_n instead.")
  (vel_n m))

(cl:ensure-generic-function 'vel_e-val :lambda-list '(m))
(cl:defmethod vel_e-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:vel_e-val is deprecated.  Use rosflight_msgs-msg:vel_e instead.")
  (vel_e m))

(cl:ensure-generic-function 'vel_d-val :lambda-list '(m))
(cl:defmethod vel_d-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:vel_d-val is deprecated.  Use rosflight_msgs-msg:vel_d instead.")
  (vel_d m))

(cl:ensure-generic-function 'g_speed-val :lambda-list '(m))
(cl:defmethod g_speed-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:g_speed-val is deprecated.  Use rosflight_msgs-msg:g_speed instead.")
  (g_speed m))

(cl:ensure-generic-function 'head_mot-val :lambda-list '(m))
(cl:defmethod head_mot-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:head_mot-val is deprecated.  Use rosflight_msgs-msg:head_mot instead.")
  (head_mot m))

(cl:ensure-generic-function 's_acc-val :lambda-list '(m))
(cl:defmethod s_acc-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:s_acc-val is deprecated.  Use rosflight_msgs-msg:s_acc instead.")
  (s_acc m))

(cl:ensure-generic-function 'head_acc-val :lambda-list '(m))
(cl:defmethod head_acc-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:head_acc-val is deprecated.  Use rosflight_msgs-msg:head_acc instead.")
  (head_acc m))

(cl:ensure-generic-function 'p_dop-val :lambda-list '(m))
(cl:defmethod p_dop-val ((m <GNSSFull>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosflight_msgs-msg:p_dop-val is deprecated.  Use rosflight_msgs-msg:p_dop instead.")
  (p_dop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GNSSFull>) ostream)
  "Serializes a message object of type '<GNSSFull>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_of_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_of_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_of_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_of_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_of_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_of_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_of_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_of_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 't_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 't_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 't_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 't_acc)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'nano)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sat)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lon)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height_msl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'h_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'h_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'h_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'h_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'v_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'v_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'v_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'v_acc)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'vel_n)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vel_e)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vel_d)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'g_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'head_mot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 's_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 's_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 's_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'head_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'head_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'head_acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'p_dop)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'p_dop)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GNSSFull>) istream)
  "Deserializes a message object of type '<GNSSFull>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_of_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_of_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_of_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_of_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_of_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_of_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_of_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_of_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'valid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 't_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 't_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 't_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 't_acc)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nano) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fix_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_sat)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lon) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height_msl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'h_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'h_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'h_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'h_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'v_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'v_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'v_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'v_acc)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vel_n) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vel_e) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vel_d) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'g_speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'head_mot) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 's_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 's_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 's_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'head_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'head_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'head_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'head_acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'p_dop)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'p_dop)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GNSSFull>)))
  "Returns string type for a message object of type '<GNSSFull>"
  "rosflight_msgs/GNSSFull")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GNSSFull)))
  "Returns string type for a message object of type 'GNSSFull"
  "rosflight_msgs/GNSSFull")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GNSSFull>)))
  "Returns md5sum for a message object of type '<GNSSFull>"
  "ce3697684ed81ea92b68164c6a58e827")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GNSSFull)))
  "Returns md5sum for a message object of type 'GNSSFull"
  "ce3697684ed81ea92b68164c6a58e827")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GNSSFull>)))
  "Returns full string definition for message of type '<GNSSFull>"
  (cl:format cl:nil "Header header~%uint64 time_of_week~%uint16 year~%uint8 month~%uint8 day~%uint8 hour~%uint8 min~%uint8 sec~%uint8 valid~%uint32 t_acc #ns ~%int32 nano #ns ~%uint8 fix_type~%uint8 num_sat~%int32 lon #deg *10^-7 ~%int32 lat #deg *10^-7 ~%int32 height #mm above elipsoid ~%int32 height_msl #mm above mean sea level ~%uint32 h_acc #mm ~%uint32 v_acc #mm ~%int32 vel_n #mm/s ~%int32 vel_e #mm/s ~%int32 vel_d #mm/s ~%int32 g_speed #mm/s ~%int32 head_mot #deg *10^-5 ~%uint32 s_acc #mm/s~%uint32 head_acc #deg * 10^-5 ~%uint16 p_dop #*.01 ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GNSSFull)))
  "Returns full string definition for message of type 'GNSSFull"
  (cl:format cl:nil "Header header~%uint64 time_of_week~%uint16 year~%uint8 month~%uint8 day~%uint8 hour~%uint8 min~%uint8 sec~%uint8 valid~%uint32 t_acc #ns ~%int32 nano #ns ~%uint8 fix_type~%uint8 num_sat~%int32 lon #deg *10^-7 ~%int32 lat #deg *10^-7 ~%int32 height #mm above elipsoid ~%int32 height_msl #mm above mean sea level ~%uint32 h_acc #mm ~%uint32 v_acc #mm ~%int32 vel_n #mm/s ~%int32 vel_e #mm/s ~%int32 vel_d #mm/s ~%int32 g_speed #mm/s ~%int32 head_mot #deg *10^-5 ~%uint32 s_acc #mm/s~%uint32 head_acc #deg * 10^-5 ~%uint16 p_dop #*.01 ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GNSSFull>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     2
     1
     1
     1
     1
     1
     1
     4
     4
     1
     1
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
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GNSSFull>))
  "Converts a ROS message object to a list"
  (cl:list 'GNSSFull
    (cl:cons ':header (header msg))
    (cl:cons ':time_of_week (time_of_week msg))
    (cl:cons ':year (year msg))
    (cl:cons ':month (month msg))
    (cl:cons ':day (day msg))
    (cl:cons ':hour (hour msg))
    (cl:cons ':min (min msg))
    (cl:cons ':sec (sec msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':t_acc (t_acc msg))
    (cl:cons ':nano (nano msg))
    (cl:cons ':fix_type (fix_type msg))
    (cl:cons ':num_sat (num_sat msg))
    (cl:cons ':lon (lon msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':height (height msg))
    (cl:cons ':height_msl (height_msl msg))
    (cl:cons ':h_acc (h_acc msg))
    (cl:cons ':v_acc (v_acc msg))
    (cl:cons ':vel_n (vel_n msg))
    (cl:cons ':vel_e (vel_e msg))
    (cl:cons ':vel_d (vel_d msg))
    (cl:cons ':g_speed (g_speed msg))
    (cl:cons ':head_mot (head_mot msg))
    (cl:cons ':s_acc (s_acc msg))
    (cl:cons ':head_acc (head_acc msg))
    (cl:cons ':p_dop (p_dop msg))
))
