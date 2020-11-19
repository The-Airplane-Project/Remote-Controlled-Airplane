;; Auto-generated. Do not edit!


(when (boundp 'rosplane_msgs::Current_Path)
  (if (not (find-package "ROSPLANE_MSGS"))
    (make-package "ROSPLANE_MSGS"))
  (shadow 'Current_Path (find-package "ROSPLANE_MSGS")))
(unless (find-package "ROSPLANE_MSGS::CURRENT_PATH")
  (make-package "ROSPLANE_MSGS::CURRENT_PATH"))

(in-package "ROS")
;;//! \htmlinclude Current_Path.msg.html


(intern "*ORBIT_PATH*" (find-package "ROSPLANE_MSGS::CURRENT_PATH"))
(shadow '*ORBIT_PATH* (find-package "ROSPLANE_MSGS::CURRENT_PATH"))
(defconstant rosplane_msgs::Current_Path::*ORBIT_PATH* 0)
(intern "*LINE_PATH*" (find-package "ROSPLANE_MSGS::CURRENT_PATH"))
(shadow '*LINE_PATH* (find-package "ROSPLANE_MSGS::CURRENT_PATH"))
(defconstant rosplane_msgs::Current_Path::*LINE_PATH* 1)
(intern "*CLOCKWISE*" (find-package "ROSPLANE_MSGS::CURRENT_PATH"))
(shadow '*CLOCKWISE* (find-package "ROSPLANE_MSGS::CURRENT_PATH"))
(defconstant rosplane_msgs::Current_Path::*CLOCKWISE* 1)
(intern "*COUNT_CLOCKWISE*" (find-package "ROSPLANE_MSGS::CURRENT_PATH"))
(shadow '*COUNT_CLOCKWISE* (find-package "ROSPLANE_MSGS::CURRENT_PATH"))
(defconstant rosplane_msgs::Current_Path::*COUNT_CLOCKWISE* -1)
(defclass rosplane_msgs::Current_Path
  :super ros::object
  :slots (_path_type _Va_d _r _q _c _rho _lambda ))

(defmethod rosplane_msgs::Current_Path
  (:init
   (&key
    ((:path_type __path_type) 0)
    ((:Va_d __Va_d) 0.0)
    ((:r __r) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:q __q) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:c __c) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:rho __rho) 0.0)
    ((:lambda __lambda) 0)
    )
   (send-super :init)
   (setq _path_type (round __path_type))
   (setq _Va_d (float __Va_d))
   (setq _r __r)
   (setq _q __q)
   (setq _c __c)
   (setq _rho (float __rho))
   (setq _lambda (round __lambda))
   self)
  (:path_type
   (&optional __path_type)
   (if __path_type (setq _path_type __path_type)) _path_type)
  (:Va_d
   (&optional __Va_d)
   (if __Va_d (setq _Va_d __Va_d)) _Va_d)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:rho
   (&optional __rho)
   (if __rho (setq _rho __rho)) _rho)
  (:lambda
   (&optional __lambda)
   (if __lambda (setq _lambda __lambda)) _lambda)
  (:serialization-length
   ()
   (+
    ;; uint8 _path_type
    1
    ;; float32 _Va_d
    4
    ;; float32[3] _r
    (* 4    3)
    ;; float32[3] _q
    (* 4    3)
    ;; float32[3] _c
    (* 4    3)
    ;; float32 _rho
    4
    ;; int8 _lambda
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _path_type
       (write-byte _path_type s)
     ;; float32 _Va_d
       (sys::poke _Va_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[3] _r
     (dotimes (i 3)
       (sys::poke (elt _r i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _q
     (dotimes (i 3)
       (sys::poke (elt _q i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _c
     (dotimes (i 3)
       (sys::poke (elt _c i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _rho
       (sys::poke _rho (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _lambda
       (write-byte _lambda s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _path_type
     (setq _path_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _Va_d
     (setq _Va_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[3] _r
   (dotimes (i (length _r))
     (setf (elt _r i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _q
   (dotimes (i (length _q))
     (setf (elt _q i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _c
   (dotimes (i (length _c))
     (setf (elt _c i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _rho
     (setq _rho (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _lambda
     (setq _lambda (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lambda 127) (setq _lambda (- _lambda 256)))
   ;;
   self)
  )

(setf (get rosplane_msgs::Current_Path :md5sum-) "8111c821fdc28e68e300e6788674dca7")
(setf (get rosplane_msgs::Current_Path :datatype-) "rosplane_msgs/Current_Path")
(setf (get rosplane_msgs::Current_Path :definition-)
      "# Current path output from the path manager, input to path follower

# @warning Va_d have always to be valid,
# r and q need to be valid if path_type == LINE_PATH
# c, rho, and, lambda need to be valid if path_type == ORBIT_PATH
uint8 path_type		# Indicates strait line or orbital path
float32 Va_d		# Desired airspeed (m/s)
float32[3] r		# Vector to origin of straight line path (m)
float32[3] q		# Unit vector, desired direction of travel for line path
float32[3] c		# Center of orbital path (m)
float32 rho		# Radius of orbital path (m)
int8 lambda		# Direction of orbital path (clockwise is 1, counterclockwise is -1)

uint8 ORBIT_PATH = 0
uint8 LINE_PATH = 1

int8 CLOCKWISE = 1
int8 COUNT_CLOCKWISE = -1

")



(provide :rosplane_msgs/Current_Path "8111c821fdc28e68e300e6788674dca7")


