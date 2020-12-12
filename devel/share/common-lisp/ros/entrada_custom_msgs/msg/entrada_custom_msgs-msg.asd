
(cl:in-package :asdf)

(defsystem "entrada_custom_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "mi_mensaje" :depends-on ("_package_mi_mensaje"))
    (:file "_package_mi_mensaje" :depends-on ("_package"))
  ))