;; Auto-generated. Do not edit!


(when (boundp 'entrada_custom_msgs::mi_mensaje)
  (if (not (find-package "ENTRADA_CUSTOM_MSGS"))
    (make-package "ENTRADA_CUSTOM_MSGS"))
  (shadow 'mi_mensaje (find-package "ENTRADA_CUSTOM_MSGS")))
(unless (find-package "ENTRADA_CUSTOM_MSGS::MI_MENSAJE")
  (make-package "ENTRADA_CUSTOM_MSGS::MI_MENSAJE"))

(in-package "ROS")
;;//! \htmlinclude mi_mensaje.msg.html


(defclass entrada_custom_msgs::mi_mensaje
  :super ros::object
  :slots (_agv_id _numero ))

(defmethod entrada_custom_msgs::mi_mensaje
  (:init
   (&key
    ((:agv_id __agv_id) "")
    ((:numero __numero) 0)
    )
   (send-super :init)
   (setq _agv_id (string __agv_id))
   (setq _numero (round __numero))
   self)
  (:agv_id
   (&optional __agv_id)
   (if __agv_id (setq _agv_id __agv_id)) _agv_id)
  (:numero
   (&optional __numero)
   (if __numero (setq _numero __numero)) _numero)
  (:serialization-length
   ()
   (+
    ;; string _agv_id
    4 (length _agv_id)
    ;; int64 _numero
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _agv_id
       (write-long (length _agv_id) s) (princ _agv_id s)
     ;; int64 _numero
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _numero (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _numero) (= (length (_numero . bv)) 2)) ;; bignum
              (write-long (ash (elt (_numero . bv) 0) 0) s)
              (write-long (ash (elt (_numero . bv) 1) -1) s))
             ((and (class _numero) (= (length (_numero . bv)) 1)) ;; big1
              (write-long (elt (_numero . bv) 0) s)
              (write-long (if (>= _numero 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _numero s)(write-long (if (>= _numero 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _agv_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agv_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _numero
#+(or :alpha :irix6 :x86_64)
      (setf _numero (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _numero (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get entrada_custom_msgs::mi_mensaje :md5sum-) "1891012cb06ea16ecd99e89ba9876ef6")
(setf (get entrada_custom_msgs::mi_mensaje :datatype-) "entrada_custom_msgs/mi_mensaje")
(setf (get entrada_custom_msgs::mi_mensaje :definition-)
      "string agv_id
int64 numero
")



(provide :entrada_custom_msgs/mi_mensaje "1891012cb06ea16ecd99e89ba9876ef6")


