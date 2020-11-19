
(cl:in-package :asdf)

(defsystem "rosplane_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Controller_Commands" :depends-on ("_package_Controller_Commands"))
    (:file "_package_Controller_Commands" :depends-on ("_package"))
    (:file "Controller_Internals" :depends-on ("_package_Controller_Internals"))
    (:file "_package_Controller_Internals" :depends-on ("_package"))
    (:file "Current_Path" :depends-on ("_package_Current_Path"))
    (:file "_package_Current_Path" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
    (:file "Waypoint" :depends-on ("_package_Waypoint"))
    (:file "_package_Waypoint" :depends-on ("_package"))
  ))