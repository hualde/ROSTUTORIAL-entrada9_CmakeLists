; Auto-generated. Do not edit!


(cl:in-package entrada_custom_msgs-msg)


;//! \htmlinclude mi_mensaje.msg.html

(cl:defclass <mi_mensaje> (roslisp-msg-protocol:ros-message)
  ((agv_id
    :reader agv_id
    :initarg :agv_id
    :type cl:string
    :initform "")
   (numero
    :reader numero
    :initarg :numero
    :type cl:integer
    :initform 0))
)

(cl:defclass mi_mensaje (<mi_mensaje>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mi_mensaje>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mi_mensaje)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name entrada_custom_msgs-msg:<mi_mensaje> is deprecated: use entrada_custom_msgs-msg:mi_mensaje instead.")))

(cl:ensure-generic-function 'agv_id-val :lambda-list '(m))
(cl:defmethod agv_id-val ((m <mi_mensaje>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader entrada_custom_msgs-msg:agv_id-val is deprecated.  Use entrada_custom_msgs-msg:agv_id instead.")
  (agv_id m))

(cl:ensure-generic-function 'numero-val :lambda-list '(m))
(cl:defmethod numero-val ((m <mi_mensaje>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader entrada_custom_msgs-msg:numero-val is deprecated.  Use entrada_custom_msgs-msg:numero instead.")
  (numero m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mi_mensaje>) ostream)
  "Serializes a message object of type '<mi_mensaje>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agv_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agv_id))
  (cl:let* ((signed (cl:slot-value msg 'numero)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mi_mensaje>) istream)
  "Deserializes a message object of type '<mi_mensaje>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agv_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agv_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'numero) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mi_mensaje>)))
  "Returns string type for a message object of type '<mi_mensaje>"
  "entrada_custom_msgs/mi_mensaje")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mi_mensaje)))
  "Returns string type for a message object of type 'mi_mensaje"
  "entrada_custom_msgs/mi_mensaje")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mi_mensaje>)))
  "Returns md5sum for a message object of type '<mi_mensaje>"
  "1891012cb06ea16ecd99e89ba9876ef6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mi_mensaje)))
  "Returns md5sum for a message object of type 'mi_mensaje"
  "1891012cb06ea16ecd99e89ba9876ef6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mi_mensaje>)))
  "Returns full string definition for message of type '<mi_mensaje>"
  (cl:format cl:nil "string agv_id~%int64 numero~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mi_mensaje)))
  "Returns full string definition for message of type 'mi_mensaje"
  (cl:format cl:nil "string agv_id~%int64 numero~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mi_mensaje>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'agv_id))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mi_mensaje>))
  "Converts a ROS message object to a list"
  (cl:list 'mi_mensaje
    (cl:cons ':agv_id (agv_id msg))
    (cl:cons ':numero (numero msg))
))
