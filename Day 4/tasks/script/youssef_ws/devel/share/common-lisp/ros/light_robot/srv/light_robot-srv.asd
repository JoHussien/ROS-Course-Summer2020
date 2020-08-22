
(cl:in-package :asdf)

(defsystem "light_robot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "count_words" :depends-on ("_package_count_words"))
    (:file "_package_count_words" :depends-on ("_package"))
  ))