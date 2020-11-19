;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::AuxCommand)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'AuxCommand (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::AUXCOMMAND")
  (make-package "ROSFLIGHT_MSGS::AUXCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude AuxCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*AUX_COMMAND_DISABLED*" (find-package "ROSFLIGHT_MSGS::AUXCOMMAND"))
(shadow '*AUX_COMMAND_DISABLED* (find-package "ROSFLIGHT_MSGS::AUXCOMMAND"))
(defconstant rosflight_msgs::AuxCommand::*AUX_COMMAND_DISABLED* 0)
(intern "*AUX_COMMAND_SERVO*" (find-package "ROSFLIGHT_MSGS::AUXCOMMAND"))
(shadow '*AUX_COMMAND_SERVO* (find-package "ROSFLIGHT_MSGS::AUXCOMMAND"))
(defconstant rosflight_msgs::AuxCommand::*AUX_COMMAND_SERVO* 1)
(intern "*AUX_COMMAND_MOTOR*" (find-package "ROSFLIGHT_MSGS::AUXCOMMAND"))
(shadow '*AUX_COMMAND_MOTOR* (find-package "ROSFLIGHT_MSGS::AUXCOMMAND"))
(defconstant rosflight_msgs::AuxCommand::*AUX_COMMAND_MOTOR* 2)
(defclass rosflight_msgs::AuxCommand
  :super ros::object
  :slots (_header _type_array _values ))

(defmethod rosflight_msgs::AuxCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type_array __type_array) (make-array 14 :initial-element 0 :element-type :char))
    ((:values __values) (make-array 14 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type_array __type_array)
   (setq _values __values)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type_array
   (&optional __type_array)
   (if __type_array (setq _type_array __type_array)) _type_array)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[14] _type_array
    (* 1    14)
    ;; float32[14] _values
    (* 4    14)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[14] _type_array
     (princ _type_array s)
     ;; float32[14] _values
     (dotimes (i 14)
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[14] _type_array
   (setq _type_array (make-array 14 :element-type :char))
   (replace _type_array buf :start2 ptr-) (incf ptr- 14)
   ;; float32[14] _values
   (dotimes (i (length _values))
     (setf (elt _values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get rosflight_msgs::AuxCommand :md5sum-) "dc9d592da23d69af5c42eecb1cedcb4d")
(setf (get rosflight_msgs::AuxCommand :datatype-) "rosflight_msgs/AuxCommand")
(setf (get rosflight_msgs::AuxCommand :definition-)
      "# Auxilliary Override Command Message

# Command Types
uint8 AUX_COMMAND_DISABLED = 0
uint8 AUX_COMMAND_SERVO = 1
uint8 AUX_COMMAND_MOTOR = 2

Header header
uint8[14] type_array
float32[14] values


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



(provide :rosflight_msgs/AuxCommand "dc9d592da23d69af5c42eecb1cedcb4d")


