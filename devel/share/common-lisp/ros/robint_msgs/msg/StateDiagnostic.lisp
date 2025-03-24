; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude StateDiagnostic.msg.html

(cl:defclass <StateDiagnostic> (roslisp-msg-protocol:ros-message)
  ((hardware_name
    :reader hardware_name
    :initarg :hardware_name
    :type cl:string
    :initform "")
   (is_ok
    :reader is_ok
    :initarg :is_ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StateDiagnostic (<StateDiagnostic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StateDiagnostic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StateDiagnostic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<StateDiagnostic> is deprecated: use robint_msgs-msg:StateDiagnostic instead.")))

(cl:ensure-generic-function 'hardware_name-val :lambda-list '(m))
(cl:defmethod hardware_name-val ((m <StateDiagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:hardware_name-val is deprecated.  Use robint_msgs-msg:hardware_name instead.")
  (hardware_name m))

(cl:ensure-generic-function 'is_ok-val :lambda-list '(m))
(cl:defmethod is_ok-val ((m <StateDiagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:is_ok-val is deprecated.  Use robint_msgs-msg:is_ok instead.")
  (is_ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StateDiagnostic>) ostream)
  "Serializes a message object of type '<StateDiagnostic>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StateDiagnostic>) istream)
  "Deserializes a message object of type '<StateDiagnostic>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StateDiagnostic>)))
  "Returns string type for a message object of type '<StateDiagnostic>"
  "robint_msgs/StateDiagnostic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StateDiagnostic)))
  "Returns string type for a message object of type 'StateDiagnostic"
  "robint_msgs/StateDiagnostic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StateDiagnostic>)))
  "Returns md5sum for a message object of type '<StateDiagnostic>"
  "639ff558d4ee8d1752d1e9ef7c8e04f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StateDiagnostic)))
  "Returns md5sum for a message object of type 'StateDiagnostic"
  "639ff558d4ee8d1752d1e9ef7c8e04f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StateDiagnostic>)))
  "Returns full string definition for message of type '<StateDiagnostic>"
  (cl:format cl:nil "string hardware_name~%bool is_ok~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StateDiagnostic)))
  "Returns full string definition for message of type 'StateDiagnostic"
  (cl:format cl:nil "string hardware_name~%bool is_ok~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StateDiagnostic>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'hardware_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StateDiagnostic>))
  "Converts a ROS message object to a list"
  (cl:list 'StateDiagnostic
    (cl:cons ':hardware_name (hardware_name msg))
    (cl:cons ':is_ok (is_ok msg))
))
