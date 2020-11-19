;; Auto-generated. Do not edit!


(when (boundp 'rosflight_msgs::ParamFile)
  (if (not (find-package "ROSFLIGHT_MSGS"))
    (make-package "ROSFLIGHT_MSGS"))
  (shadow 'ParamFile (find-package "ROSFLIGHT_MSGS")))
(unless (find-package "ROSFLIGHT_MSGS::PARAMFILE")
  (make-package "ROSFLIGHT_MSGS::PARAMFILE"))
(unless (find-package "ROSFLIGHT_MSGS::PARAMFILEREQUEST")
  (make-package "ROSFLIGHT_MSGS::PARAMFILEREQUEST"))
(unless (find-package "ROSFLIGHT_MSGS::PARAMFILERESPONSE")
  (make-package "ROSFLIGHT_MSGS::PARAMFILERESPONSE"))

(in-package "ROS")





(defclass rosflight_msgs::ParamFileRequest
  :super ros::object
  :slots (_filename ))

(defmethod rosflight_msgs::ParamFileRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosflight_msgs::ParamFileResponse
  :super ros::object
  :slots (_success ))

(defmethod rosflight_msgs::ParamFileResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rosflight_msgs::ParamFile
  :super ros::object
  :slots ())

(setf (get rosflight_msgs::ParamFile :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get rosflight_msgs::ParamFile :datatype-) "rosflight_msgs/ParamFile")
(setf (get rosflight_msgs::ParamFile :request) rosflight_msgs::ParamFileRequest)
(setf (get rosflight_msgs::ParamFile :response) rosflight_msgs::ParamFileResponse)

(defmethod rosflight_msgs::ParamFileRequest
  (:response () (instance rosflight_msgs::ParamFileResponse :init)))

(setf (get rosflight_msgs::ParamFileRequest :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get rosflight_msgs::ParamFileRequest :datatype-) "rosflight_msgs/ParamFileRequest")
(setf (get rosflight_msgs::ParamFileRequest :definition-)
      "string filename
---
bool success

")

(setf (get rosflight_msgs::ParamFileResponse :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get rosflight_msgs::ParamFileResponse :datatype-) "rosflight_msgs/ParamFileResponse")
(setf (get rosflight_msgs::ParamFileResponse :definition-)
      "string filename
---
bool success

")



(provide :rosflight_msgs/ParamFile "93a4bc4c60dc17e2a69e3fcaaa25d69d")


