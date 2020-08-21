
(cl:in-package :asdf)

(defsystem "light_robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "complex" :depends-on ("_package_complex"))
    (:file "_package_complex" :depends-on ("_package"))
  ))