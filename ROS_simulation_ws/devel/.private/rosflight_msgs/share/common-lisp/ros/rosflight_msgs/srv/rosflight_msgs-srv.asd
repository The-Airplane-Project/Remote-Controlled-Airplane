
(cl:in-package :asdf)

(defsystem "rosflight_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ParamFile" :depends-on ("_package_ParamFile"))
    (:file "_package_ParamFile" :depends-on ("_package"))
    (:file "ParamGet" :depends-on ("_package_ParamGet"))
    (:file "_package_ParamGet" :depends-on ("_package"))
    (:file "ParamSet" :depends-on ("_package_ParamSet"))
    (:file "_package_ParamSet" :depends-on ("_package"))
  ))