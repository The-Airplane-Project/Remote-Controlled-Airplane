;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::GNSSFull)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'GNSSFull (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::GNSSFULL")
  (make-package "ROSFLIGHT_MSGS::GNSSFULL"))

(in-package "ROS")
;;//! \htmlinclude GNSSFull.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosflight_msgs::GNSSFull
  :super ros::object
  :slots (_header _time_of_week _year _month _day _hour _min _sec _valid _t_acc _nano _fix_type _num_sat _lon _lat _height _height_msl _h_acc _v_acc _vel_n _vel_e _vel_d _g_speed _head_mot _s_acc _head_acc _p_dop ))

(defmethod rosflight_msgs::GNSSFull
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_of_week __time_of_week) 0)
    ((:year __year) 0)
    ((:month __month) 0)
    ((:day __day) 0)
    ((:hour __hour) 0)
    ((:min __min) 0)
    ((:sec __sec) 0)
    ((:valid __valid) 0)
    ((:t_acc __t_acc) 0)
    ((:nano __nano) 0)
    ((:fix_type __fix_type) 0)
    ((:num_sat __num_sat) 0)
    ((:lon __lon) 0)
    ((:lat __lat) 0)
    ((:height __height) 0)
    ((:height_msl __height_msl) 0)
    ((:h_acc __h_acc) 0)
    ((:v_acc __v_acc) 0)
    ((:vel_n __vel_n) 0)
    ((:vel_e __vel_e) 0)
    ((:vel_d __vel_d) 0)
    ((:g_speed __g_speed) 0)
    ((:head_mot __head_mot) 0)
    ((:s_acc __s_acc) 0)
    ((:head_acc __head_acc) 0)
    ((:p_dop __p_dop) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_of_week (round __time_of_week))
   (setq _year (round __year))
   (setq _month (round __month))
   (setq _day (round __day))
   (setq _hour (round __hour))
   (setq _min (round __min))
   (setq _sec (round __sec))
   (setq _valid (round __valid))
   (setq _t_acc (round __t_acc))
   (setq _nano (round __nano))
   (setq _fix_type (round __fix_type))
   (setq _num_sat (round __num_sat))
   (setq _lon (round __lon))
   (setq _lat (round __lat))
   (setq _height (round __height))
   (setq _height_msl (round __height_msl))
   (setq _h_acc (round __h_acc))
   (setq _v_acc (round __v_acc))
   (setq _vel_n (round __vel_n))
   (setq _vel_e (round __vel_e))
   (setq _vel_d (round __vel_d))
   (setq _g_speed (round __g_speed))
   (setq _head_mot (round __head_mot))
   (setq _s_acc (round __s_acc))
   (setq _head_acc (round __head_acc))
   (setq _p_dop (round __p_dop))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_of_week
   (&optional __time_of_week)
   (if __time_of_week (setq _time_of_week __time_of_week)) _time_of_week)
  (:year
   (&optional __year)
   (if __year (setq _year __year)) _year)
  (:month
   (&optional __month)
   (if __month (setq _month __month)) _month)
  (:day
   (&optional __day)
   (if __day (setq _day __day)) _day)
  (:hour
   (&optional __hour)
   (if __hour (setq _hour __hour)) _hour)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:sec
   (&optional __sec)
   (if __sec (setq _sec __sec)) _sec)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:t_acc
   (&optional __t_acc)
   (if __t_acc (setq _t_acc __t_acc)) _t_acc)
  (:nano
   (&optional __nano)
   (if __nano (setq _nano __nano)) _nano)
  (:fix_type
   (&optional __fix_type)
   (if __fix_type (setq _fix_type __fix_type)) _fix_type)
  (:num_sat
   (&optional __num_sat)
   (if __num_sat (setq _num_sat __num_sat)) _num_sat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:height_msl
   (&optional __height_msl)
   (if __height_msl (setq _height_msl __height_msl)) _height_msl)
  (:h_acc
   (&optional __h_acc)
   (if __h_acc (setq _h_acc __h_acc)) _h_acc)
  (:v_acc
   (&optional __v_acc)
   (if __v_acc (setq _v_acc __v_acc)) _v_acc)
  (:vel_n
   (&optional __vel_n)
   (if __vel_n (setq _vel_n __vel_n)) _vel_n)
  (:vel_e
   (&optional __vel_e)
   (if __vel_e (setq _vel_e __vel_e)) _vel_e)
  (:vel_d
   (&optional __vel_d)
   (if __vel_d (setq _vel_d __vel_d)) _vel_d)
  (:g_speed
   (&optional __g_speed)
   (if __g_speed (setq _g_speed __g_speed)) _g_speed)
  (:head_mot
   (&optional __head_mot)
   (if __head_mot (setq _head_mot __head_mot)) _head_mot)
  (:s_acc
   (&optional __s_acc)
   (if __s_acc (setq _s_acc __s_acc)) _s_acc)
  (:head_acc
   (&optional __head_acc)
   (if __head_acc (setq _head_acc __head_acc)) _head_acc)
  (:p_dop
   (&optional __p_dop)
   (if __p_dop (setq _p_dop __p_dop)) _p_dop)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _time_of_week
    8
    ;; uint16 _year
    2
    ;; uint8 _month
    1
    ;; uint8 _day
    1
    ;; uint8 _hour
    1
    ;; uint8 _min
    1
    ;; uint8 _sec
    1
    ;; uint8 _valid
    1
    ;; uint32 _t_acc
    4
    ;; int32 _nano
    4
    ;; uint8 _fix_type
    1
    ;; uint8 _num_sat
    1
    ;; int32 _lon
    4
    ;; int32 _lat
    4
    ;; int32 _height
    4
    ;; int32 _height_msl
    4
    ;; uint32 _h_acc
    4
    ;; uint32 _v_acc
    4
    ;; int32 _vel_n
    4
    ;; int32 _vel_e
    4
    ;; int32 _vel_d
    4
    ;; int32 _g_speed
    4
    ;; int32 _head_mot
    4
    ;; uint32 _s_acc
    4
    ;; uint32 _head_acc
    4
    ;; uint16 _p_dop
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _time_of_week
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_of_week (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_of_week) (= (length (_time_of_week . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_of_week . bv) 0) 0) s)
              (write-long (ash (elt (_time_of_week . bv) 1) -1) s))
             ((and (class _time_of_week) (= (length (_time_of_week . bv)) 1)) ;; big1
              (write-long (elt (_time_of_week . bv) 0) s)
              (write-long (if (>= _time_of_week 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_of_week s)(write-long (if (>= _time_of_week 0) 0 #xffffffff) s)))
     ;; uint16 _year
       (write-word _year s)
     ;; uint8 _month
       (write-byte _month s)
     ;; uint8 _day
       (write-byte _day s)
     ;; uint8 _hour
       (write-byte _hour s)
     ;; uint8 _min
       (write-byte _min s)
     ;; uint8 _sec
       (write-byte _sec s)
     ;; uint8 _valid
       (write-byte _valid s)
     ;; uint32 _t_acc
       (write-long _t_acc s)
     ;; int32 _nano
       (write-long _nano s)
     ;; uint8 _fix_type
       (write-byte _fix_type s)
     ;; uint8 _num_sat
       (write-byte _num_sat s)
     ;; int32 _lon
       (write-long _lon s)
     ;; int32 _lat
       (write-long _lat s)
     ;; int32 _height
       (write-long _height s)
     ;; int32 _height_msl
       (write-long _height_msl s)
     ;; uint32 _h_acc
       (write-long _h_acc s)
     ;; uint32 _v_acc
       (write-long _v_acc s)
     ;; int32 _vel_n
       (write-long _vel_n s)
     ;; int32 _vel_e
       (write-long _vel_e s)
     ;; int32 _vel_d
       (write-long _vel_d s)
     ;; int32 _g_speed
       (write-long _g_speed s)
     ;; int32 _head_mot
       (write-long _head_mot s)
     ;; uint32 _s_acc
       (write-long _s_acc s)
     ;; uint32 _head_acc
       (write-long _head_acc s)
     ;; uint16 _p_dop
       (write-word _p_dop s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _time_of_week
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_of_week (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_of_week (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint16 _year
     (setq _year (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _month
     (setq _month (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _day
     (setq _day (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hour
     (setq _hour (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _min
     (setq _min (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sec
     (setq _sec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _valid
     (setq _valid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _t_acc
     (setq _t_acc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _nano
     (setq _nano (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _num_sat
     (setq _num_sat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _lon
     (setq _lon (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lat
     (setq _lat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height_msl
     (setq _height_msl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _h_acc
     (setq _h_acc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _v_acc
     (setq _v_acc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vel_n
     (setq _vel_n (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vel_e
     (setq _vel_e (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vel_d
     (setq _vel_d (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _g_speed
     (setq _g_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _head_mot
     (setq _head_mot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _s_acc
     (setq _s_acc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _head_acc
     (setq _head_acc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _p_dop
     (setq _p_dop (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rosflight_msgs::GNSSFull :md5sum-) "ce3697684ed81ea92b68164c6a58e827")
(setf (get rosflight_msgs::GNSSFull :datatype-) "rosflight_msgs/GNSSFull")
(setf (get rosflight_msgs::GNSSFull :definition-)
      "Header header
uint64 time_of_week
uint16 year
uint8 month
uint8 day
uint8 hour
uint8 min
uint8 sec
uint8 valid
uint32 t_acc #ns 
int32 nano #ns 
uint8 fix_type
uint8 num_sat
int32 lon #deg *10^-7 
int32 lat #deg *10^-7 
int32 height #mm above elipsoid 
int32 height_msl #mm above mean sea level 
uint32 h_acc #mm 
uint32 v_acc #mm 
int32 vel_n #mm/s 
int32 vel_e #mm/s 
int32 vel_d #mm/s 
int32 g_speed #mm/s 
int32 head_mot #deg *10^-5 
uint32 s_acc #mm/s
uint32 head_acc #deg * 10^-5 
uint16 p_dop #*.01 

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rosflight_msgs/GNSSFull "ce3697684ed81ea92b68164c6a58e827")


