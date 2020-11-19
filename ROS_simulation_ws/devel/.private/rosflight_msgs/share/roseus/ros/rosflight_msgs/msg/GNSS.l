;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::GNSS)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'GNSS (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::GNSS")
  (make-package "ROSFLIGHT_MSGS::GNSS"))

(in-package "ROS")
;;//! \htmlinclude GNSS.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*FIX_TYPE_NO_FIX*" (find-package "ROSFLIGHT_MSGS::GNSS"))
(shadow '*FIX_TYPE_NO_FIX* (find-package "ROSFLIGHT_MSGS::GNSS"))
(defconstant rosflight_msgs::GNSS::*FIX_TYPE_NO_FIX* 0)
(intern "*FIX_TYPE_FIX*" (find-package "ROSFLIGHT_MSGS::GNSS"))
(shadow '*FIX_TYPE_FIX* (find-package "ROSFLIGHT_MSGS::GNSS"))
(defconstant rosflight_msgs::GNSS::*FIX_TYPE_FIX* 1)
(intern "*FIX_TYPE_RTK_FLOAT*" (find-package "ROSFLIGHT_MSGS::GNSS"))
(shadow '*FIX_TYPE_RTK_FLOAT* (find-package "ROSFLIGHT_MSGS::GNSS"))
(defconstant rosflight_msgs::GNSS::*FIX_TYPE_RTK_FLOAT* 2)
(intern "*FIX_TYPE_RTK_FIXED*" (find-package "ROSFLIGHT_MSGS::GNSS"))
(shadow '*FIX_TYPE_RTK_FIXED* (find-package "ROSFLIGHT_MSGS::GNSS"))
(defconstant rosflight_msgs::GNSS::*FIX_TYPE_RTK_FIXED* 3)
(defclass rosflight_msgs::GNSS
  :super ros::object
  :slots (_header _fix _time _position _horizontal_accuracy _vertical_accuracy _velocity _speed_accuracy ))

(defmethod rosflight_msgs::GNSS
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fix __fix) 0)
    ((:time __time) (instance ros::time :init))
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:horizontal_accuracy __horizontal_accuracy) 0.0)
    ((:vertical_accuracy __vertical_accuracy) 0.0)
    ((:velocity __velocity) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:speed_accuracy __speed_accuracy) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fix (round __fix))
   (setq _time __time)
   (setq _position __position)
   (setq _horizontal_accuracy (float __horizontal_accuracy))
   (setq _vertical_accuracy (float __vertical_accuracy))
   (setq _velocity __velocity)
   (setq _speed_accuracy (float __speed_accuracy))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fix
   (&optional __fix)
   (if __fix (setq _fix __fix)) _fix)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:horizontal_accuracy
   (&optional __horizontal_accuracy)
   (if __horizontal_accuracy (setq _horizontal_accuracy __horizontal_accuracy)) _horizontal_accuracy)
  (:vertical_accuracy
   (&optional __vertical_accuracy)
   (if __vertical_accuracy (setq _vertical_accuracy __vertical_accuracy)) _vertical_accuracy)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:speed_accuracy
   (&optional __speed_accuracy)
   (if __speed_accuracy (setq _speed_accuracy __speed_accuracy)) _speed_accuracy)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _fix
    1
    ;; time _time
    8
    ;; float64[3] _position
    (* 8    3)
    ;; float64 _horizontal_accuracy
    8
    ;; float64 _vertical_accuracy
    8
    ;; float64[3] _velocity
    (* 8    3)
    ;; float64 _speed_accuracy
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _fix
       (write-byte _fix s)
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; float64[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _horizontal_accuracy
       (sys::poke _horizontal_accuracy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_accuracy
       (sys::poke _vertical_accuracy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[3] _velocity
     (dotimes (i 3)
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _speed_accuracy
       (sys::poke _speed_accuracy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _fix
     (setq _fix (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _horizontal_accuracy
     (setq _horizontal_accuracy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_accuracy
     (setq _vertical_accuracy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[3] _velocity
   (dotimes (i (length _velocity))
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _speed_accuracy
     (setq _speed_accuracy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rosflight_msgs::GNSS :md5sum-) "ce071f3e09875340cd897d6a0fd5714f")
(setf (get rosflight_msgs::GNSS :datatype-) "rosflight_msgs/GNSS")
(setf (get rosflight_msgs::GNSS :definition-)
      "Header header # Estimated ROS time at moment of measurement
uint8 fix # fix type, enums defined below
time time # GPS time at moment of measurement
float64[3] position # m, ECEF frame
float64 horizontal_accuracy # m
float64 vertical_accuracy # m
float64[3] velocity # m/s, ECEF frame
float64 speed_accuracy # m/s

uint8 FIX_TYPE_NO_FIX = 0 
uint8 FIX_TYPE_FIX = 1
uint8 FIX_TYPE_RTK_FLOAT = 2
uint8 FIX_TYPE_RTK_FIXED = 3 

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



(provide :rosflight_msgs/GNSS "ce071f3e09875340cd897d6a0fd5714f")


