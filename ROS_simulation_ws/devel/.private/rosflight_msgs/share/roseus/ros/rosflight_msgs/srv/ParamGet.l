;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::ParamGet)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'ParamGet (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::PARAMGET")
  (make-package "ROSFLIGHT_MSGS::PARAMGET"))
(unless (find-package "ROSFLIGHT_MSGS::PARAMGETREQUEST")
  (make-package "ROSFLIGHT_MSGS::PARAMGETREQUEST"))
(unless (find-package "ROSFLIGHT_MSGS::PARAMGETRESPONSE")
  (make-package "ROSFLIGHT_MSGS::PARAMGETRESPONSE"))

(in-package "ROS")





(defclass rosflight_msgs::ParamGetRequest
  :super ros::object
  :slots (_name ))

(defmethod rosflight_msgs::ParamGetRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosflight_msgs::ParamGetResponse
  :super ros::object
  :slots (_exists _value ))

(defmethod rosflight_msgs::ParamGetResponse
  (:init
   (&key
    ((:exists __exists) nil)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _exists __exists)
   (setq _value (float __value))
   self)
  (:exists
   (&optional __exists)
   (if __exists (setq _exists __exists)) _exists)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _exists
    1
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _exists
       (if _exists (write-byte -1 s) (write-byte 0 s))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _exists
     (setq _exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rosflight_msgs::ParamGet
  :super ros::object
  :slots ())

(setf (get rosflight_msgs::ParamGet :md5sum-) "084c270cbd1d72e2f34b8b8b23df1ede")
(setf (get rosflight_msgs::ParamGet :datatype-) "rosflight_msgs/ParamGet")
(setf (get rosflight_msgs::ParamGet :request) rosflight_msgs::ParamGetRequest)
(setf (get rosflight_msgs::ParamGet :response) rosflight_msgs::ParamGetResponse)

(defmethod rosflight_msgs::ParamGetRequest
  (:response () (instance rosflight_msgs::ParamGetResponse :init)))

(setf (get rosflight_msgs::ParamGetRequest :md5sum-) "084c270cbd1d72e2f34b8b8b23df1ede")
(setf (get rosflight_msgs::ParamGetRequest :datatype-) "rosflight_msgs/ParamGetRequest")
(setf (get rosflight_msgs::ParamGetRequest :definition-)
      "# Request a parameter value

string name # the name of the parameter value to retrieve
---
bool exists # whether the request parameter exists
float64 value # the value of the requested parameter

")

(setf (get rosflight_msgs::ParamGetResponse :md5sum-) "084c270cbd1d72e2f34b8b8b23df1ede")
(setf (get rosflight_msgs::ParamGetResponse :datatype-) "rosflight_msgs/ParamGetResponse")
(setf (get rosflight_msgs::ParamGetResponse :definition-)
      "# Request a parameter value

string name # the name of the parameter value to retrieve
---
bool exists # whether the request parameter exists
float64 value # the value of the requested parameter

")



(provide :rosflight_msgs/ParamGet "084c270cbd1d72e2f34b8b8b23df1ede")


