;; Auto-generated. Do not edit!


(when (boundp 'rosplane_msgs::Controller_Commands)
  (if (not (find-package "ROSPLANE_MSGS"))
    (make-package "ROSPLANE_MSGS"))
  (shadow 'Controller_Commands (find-package "ROSPLANE_MSGS")))
(unless (find-package "ROSPLANE_MSGS::CONTROLLER_COMMANDS")
  (make-package "ROSPLANE_MSGS::CONTROLLER_COMMANDS"))

(in-package "ROS")
;;//! \htmlinclude Controller_Commands.msg.html


(defclass rosplane_msgs::Controller_Commands
  :super ros::object
  :slots (_Va_c _h_c _chi_c _phi_ff _aux _aux_valid ))

(defmethod rosplane_msgs::Controller_Commands
  (:init
   (&key
    ((:Va_c __Va_c) 0.0)
    ((:h_c __h_c) 0.0)
    ((:chi_c __chi_c) 0.0)
    ((:phi_ff __phi_ff) 0.0)
    ((:aux __aux) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:aux_valid __aux_valid) nil)
    )
   (send-super :init)
   (setq _Va_c (float __Va_c))
   (setq _h_c (float __h_c))
   (setq _chi_c (float __chi_c))
   (setq _phi_ff (float __phi_ff))
   (setq _aux __aux)
   (setq _aux_valid __aux_valid)
   self)
  (:Va_c
   (&optional __Va_c)
   (if __Va_c (setq _Va_c __Va_c)) _Va_c)
  (:h_c
   (&optional __h_c)
   (if __h_c (setq _h_c __h_c)) _h_c)
  (:chi_c
   (&optional __chi_c)
   (if __chi_c (setq _chi_c __chi_c)) _chi_c)
  (:phi_ff
   (&optional __phi_ff)
   (if __phi_ff (setq _phi_ff __phi_ff)) _phi_ff)
  (:aux
   (&optional __aux)
   (if __aux (setq _aux __aux)) _aux)
  (:aux_valid
   (&optional __aux_valid)
   (if __aux_valid (setq _aux_valid __aux_valid)) _aux_valid)
  (:serialization-length
   ()
   (+
    ;; float32 _Va_c
    4
    ;; float32 _h_c
    4
    ;; float32 _chi_c
    4
    ;; float32 _phi_ff
    4
    ;; float32[4] _aux
    (* 4    4)
    ;; bool _aux_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Va_c
       (sys::poke _Va_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _h_c
       (sys::poke _h_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _chi_c
       (sys::poke _chi_c (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phi_ff
       (sys::poke _phi_ff (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _Va_c
     (setq _Va_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _h_c
     (setq _h_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _chi_c
     (setq _chi_c (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phi_ff
     (setq _phi_ff (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[4] _aux
   (dotimes (i (length _aux))
     (setf (elt _aux i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _aux_valid
     (setq _aux_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rosplane_msgs::Controller_Commands :md5sum-) "2c42df94ede980f479b78898f3ea5e29")
(setf (get rosplane_msgs::Controller_Commands :datatype-) "rosplane_msgs/Controller_Commands")
(setf (get rosplane_msgs::Controller_Commands :definition-)
      "# Controller commands output from the path follower, input to autopilot controller

# @warning Va_c, h_c and chi_c have always to be valid, the aux array is optional
float32 Va_c		# Commanded airspeed (m/s)
float32 h_c		# Commanded altitude (m)
float32 chi_c		# Commanded course (rad)
float32 phi_ff		# feed forward command for orbits (rad)
float32[4] aux		# Optional auxiliary commands
bool aux_valid		# Auxiliary commands valid

")



(provide :rosplane_msgs/Controller_Commands "2c42df94ede980f479b78898f3ea5e29")


