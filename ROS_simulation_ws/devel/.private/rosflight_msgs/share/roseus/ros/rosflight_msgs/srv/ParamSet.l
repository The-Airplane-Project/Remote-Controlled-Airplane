;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::ParamSet)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'ParamSet (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::PARAMSET")
  (make-package "ROSFLIGHT_MSGS::PARAMSET"))
(unless (find-package "ROSFLIGHT_MSGS::PARAMSETREQUEST")
  (make-package "ROSFLIGHT_MSGS::PARAMSETREQUEST"))
(unless (find-package "ROSFLIGHT_MSGS::PARAMSETRESPONSE")
  (make-package "ROSFLIGHT_MSGS::PARAMSETRESPONSE"))

(in-package "ROS")





(defclass rosflight_msgs::ParamSetRequest
  :super ros::object
  :slots (_name _value ))

(defmethod rosflight_msgs::ParamSetRequest
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (float __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rosflight_msgs::ParamSetResponse
  :super ros::object
  :slots (_exists ))

(defmethod rosflight_msgs::ParamSetResponse
  (:init
   (&key
    ((:exists __exists) nil)
    )
   (send-super :init)
   (setq _exists __exists)
   self)
  (:exists
   (&optional __exists)
   (if __exists (setq _exists __exists)) _exists)
  (:serialization-length
   ()
   (+
    ;; bool _exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _exists
       (if _exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _exists
     (setq _exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rosflight_msgs::ParamSet
  :super ros::object
  :slots ())

(setf (get rosflight_msgs::ParamSet :md5sum-) "39d2a767f6a7b381c122060d7b56567b")
(setf (get rosflight_msgs::ParamSet :datatype-) "rosflight_msgs/ParamSet")
(setf (get rosflight_msgs::ParamSet :request) rosflight_msgs::ParamSetRequest)
(setf (get rosflight_msgs::ParamSet :response) rosflight_msgs::ParamSetResponse)

(defmethod rosflight_msgs::ParamSetRequest
  (:response () (instance rosflight_msgs::ParamSetResponse :init)))

(setf (get rosflight_msgs::ParamSetRequest :md5sum-) "39d2a767f6a7b381c122060d7b56567b")
(setf (get rosflight_msgs::ParamSetRequest :datatype-) "rosflight_msgs/ParamSetRequest")
(setf (get rosflight_msgs::ParamSetRequest :definition-)
      "# Set a parameter value

string name # the name of the parameter to set
float64 value # the value to set the parameter to
---
bool exists # whether the requested parameter exists

")

(setf (get rosflight_msgs::ParamSetResponse :md5sum-) "39d2a767f6a7b381c122060d7b56567b")
(setf (get rosflight_msgs::ParamSetResponse :datatype-) "rosflight_msgs/ParamSetResponse")
(setf (get rosflight_msgs::ParamSetResponse :definition-)
      "# Set a parameter value

string name # the name of the parameter to set
float64 value # the value to set the parameter to
---
bool exists # whether the requested parameter exists

")



(provide :rosflight_msgs/ParamSet "39d2a767f6a7b381c122060d7b56567b")


