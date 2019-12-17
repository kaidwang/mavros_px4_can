
(cl:in-package :asdf)

(defsystem "can_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Frame" :depends-on ("_package_Frame"))
    (:file "_package_Frame" :depends-on ("_package"))
    (:file "Kd_Can_Frame_End" :depends-on ("_package_Kd_Can_Frame_End"))
    (:file "_package_Kd_Can_Frame_End" :depends-on ("_package"))
    (:file "Kd_Can_Frame_Start" :depends-on ("_package_Kd_Can_Frame_Start"))
    (:file "_package_Kd_Can_Frame_Start" :depends-on ("_package"))
  ))