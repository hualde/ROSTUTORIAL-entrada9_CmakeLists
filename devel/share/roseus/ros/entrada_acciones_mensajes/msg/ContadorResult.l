;; Auto-generated. Do not edit!


(when (boundp 'entrada_acciones_mensajes::ContadorResult)
  (if (not (find-package "ENTRADA_ACCIONES_MENSAJES"))
    (make-package "ENTRADA_ACCIONES_MENSAJES"))
  (shadow 'ContadorResult (find-package "ENTRADA_ACCIONES_MENSAJES")))
(unless (find-package "ENTRADA_ACCIONES_MENSAJES::CONTADORRESULT")
  (make-package "ENTRADA_ACCIONES_MENSAJES::CONTADORRESULT"))

(in-package "ROS")
;;//! \htmlinclude ContadorResult.msg.html


(defclass entrada_acciones_mensajes::ContadorResult
  :super ros::object
  :slots (_contador ))

(defmethod entrada_acciones_mensajes::ContadorResult
  (:init
   (&key
    ((:contador __contador) 0)
    )
   (send-super :init)
   (setq _contador (round __contador))
   self)
  (:contador
   (&optional __contador)
   (if __contador (setq _contador __contador)) _contador)
  (:serialization-length
   ()
   (+
    ;; int64 _contador
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _contador
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _contador (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _contador) (= (length (_contador . bv)) 2)) ;; bignum
              (write-long (ash (elt (_contador . bv) 0) 0) s)
              (write-long (ash (elt (_contador . bv) 1) -1) s))
             ((and (class _contador) (= (length (_contador . bv)) 1)) ;; big1
              (write-long (elt (_contador . bv) 0) s)
              (write-long (if (>= _contador 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _contador s)(write-long (if (>= _contador 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _contador
#+(or :alpha :irix6 :x86_64)
      (setf _contador (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _contador (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get entrada_acciones_mensajes::ContadorResult :md5sum-) "ca8b12a43af0ec7cb0057d704d9bb5ac")
(setf (get entrada_acciones_mensajes::ContadorResult :datatype-) "entrada_acciones_mensajes/ContadorResult")
(setf (get entrada_acciones_mensajes::ContadorResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result
int64 contador

")



(provide :entrada_acciones_mensajes/ContadorResult "ca8b12a43af0ec7cb0057d704d9bb5ac")

