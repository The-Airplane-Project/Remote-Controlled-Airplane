;; Auto-generated. Do not edit!


(when (boundp 'rosplane_msgs::Controller_Internals)
  (if (not (find-package "ROSPLANE_MSGS"))
    (make-package "ROSPLANE_MSGS"))
  (shadow 'Controller_Internals (find-package "ROSPLANE_MSGS")))
(unless (find-package "ROSPLANE_MSGS::CONTROLLER_INTERNALS")
  (make-package "ROSPLANE_MSGS::CONTROLLER_INTERNALS"))

(in-package "ROS")
;;//! \htmlinclude Controller_Internals.msg.html


(intern "*ZONE_TAKE_OFF*" (find-package "ROSPLANE_MSGS::CONTROLLER_INTERNALS"))
(shadow '*ZONE_TAKE_OFF* (find-package "ROSPLANE_MSGS::CONTROLLER_INTERNALS"))
(defconstant rosplane_msgs::Controller_Internals::*ZONE_TAKE_OFF* 0)
(intern "*ZONE_CLIMB*" (find-package "ROSPLANE_MSGS::CONTROLLER_INTERNALS"))
(shadow '*ZONE_CLIMB* (find-package "ROSPLANE_MSGS::CONTROLLER_INTERNALS"))
(defconstant rosplane_msgs::Controller_Internals::*ZONE_CLIMB* 1)
(intern "*ZONE_DESEND*" (find-package "ROSPLANE_MSGS::CONTROLLER_INTERNALS"))
(shadow '*ZONE_DESEND* (find-package "ROSPLANE_MSGS::CONTROLLER_INTERNALS"))
(defconstant rosplane_msgs::Controller_Internals::*ZONE_DESEND* 2)
(intern "*ZONE_ALTITUDE_HOLD*" (find-package "ROSPLANE_MSGS::CONTROLLER_INTERNALS"))
(shadow '*ZONE_ALTITUDE_HOLD* (find-package "ROSPLANE_MSGS::CONTROLLER_INTERNALS"))
(defconstant rosplane_msgs::Controller_Internals::*ZONE_ALTITUDE_HOLD* 3)
(defclass rosplane_msgs::Controller_Internals
  :super ros::object
  :slots (_theta_c _phi_c _alt_zone _aux _aux_valid ))

(defmethod rosplane_msgs::Controller_Internals
  (:init
   (&key
    ((:theta_c __theta_c) 0.0)
    ((:phi_c __phi_c) 0.0)
    ((:alt_zone __alt_zone) 0)
    ((:aux __aux) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:aux_valid __aux_valid) nil)
    )
   (send-super :init)
   (setq _theta_c (float __theta_c))
   (setq _phi_c (float __phi_c))
   (setq _alt_zone (round __alt_zone))
   (setq _aux __aux)
   (setq _aux_valid __aux_valid)
   self)
  (:theta_c
   (&optional __theta_c)
   (if __theta_c (setq _theta_c __theta_c)) _theta_c)
  (:phi_c
   (&optional __phi_c)
   (if __phi_c (setq _phi_c __phi_c)) _phi_c)
  (:alt_zone
   (&optional __alt_zone)
   (if __alt_zone (setq _alt_zone __alt_zone)) _alt_zone)
  (:aux
   (&optional __aux)
   (if __aux (setq _aux __aux)) _aux)
  (:aux_valid
   (&optional __aux_valid)
   (if __aux_valid (setq _aux_valid __aux_valid)) _aux_valid)
  (:serialization-length
   ()
   (+
    ;; float32 _theta_c
    4
    ;; float32 _phi_c
    4
    ;; uint8 _alt_zone
    1
    ;; float32[4] _aux
    (* 4    4)
    ;; bool _aux_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _theta_c
       (sys::poke _theta_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phi_c
       (sys::poke _phi_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _alt_zone
       (write-byte _alt_zone s)
     ;; float32[4] _aux
     (dotimes (i 4)
       (sys::poke (elt _aux i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _aux_valid
       (if _aux_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _theta_c
     (setq _theta_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phi_c
     (setq _phi_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _alt_zone
     (setq _alt_zone (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[4] _aux
   (dotimes (i (length _aux))
     (setf (elt _aux i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _aux_valid
     (setq _aux_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rosplane_msgs::Controller_Internals :md5sum-) "1d7fa61846cd31497d4b102451fa214b")
(setf (get rosplane_msgs::Controller_Internals :datatype-) "rosplane_msgs/Controller_Internals")
(setf (get rosplane_msgs::Controller_Internals :definition-)
      "# Controller internals (inner loops, states) output from the autopilot controller, for now just for debuging and ploting

# @warning theta_c, phi_c and alt_zone have always to be valid, the aux array is optional
float32 theta_c		# Commanded pitch (rad)
float32 phi_c		# Commanded roll (rad)
uint8 alt_zone		# Zone in the altitude state machine
float32[4] aux		# Optional auxiliary commands
bool aux_valid		# Auxiliary commands valid

uint8 ZONE_TAKE_OFF = 0
uint8 ZONE_CLIMB = 1
uint8 ZONE_DESEND = 2
uint8 ZONE_ALTITUDE_HOLD = 3

")



(provide :rosplane_msgs/Controller_Internals "1d7fa61846cd31497d4b102451fa214b")


