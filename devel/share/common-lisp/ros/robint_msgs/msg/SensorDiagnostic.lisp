; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude SensorDiagnostic.msg.html

(cl:defclass <SensorDiagnostic> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (hardware_name
    :reader hardware_name
    :initarg :hardware_name
    :type cl:string
    :initform "")
   (is_received
    :reader is_received
    :initarg :is_received
    :type cl:boolean
    :initform cl:nil)
   (is_normal
    :reader is_normal
    :initarg :is_normal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SensorDiagnostic (<SensorDiagnostic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorDiagnostic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorDiagnostic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<SensorDiagnostic> is deprecated: use robint_msgs-msg:SensorDiagnostic instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <SensorDiagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:time-val is deprecated.  Use robint_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'hardware_name-val :lambda-list '(m))
(cl:defmethod hardware_name-val ((m <SensorDiagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:hardware_name-val is deprecated.  Use robint_msgs-msg:hardware_name instead.")
  (hardware_name m))

(cl:ensure-generic-function 'is_received-val :lambda-list '(m))
(cl:defmethod is_received-val ((m <SensorDiagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:is_received-val is deprecated.  Use robint_msgs-msg:is_received instead.")
  (is_received m))

(cl:ensure-generic-function 'is_normal-val :lambda-list '(m))
(cl:defmethod is_normal-val ((m <SensorDiagnostic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:is_normal-val is deprecated.  Use robint_msgs-msg:is_normal instead.")
  (is_normal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorDiagnostic>) ostream)
  "Serializes a message object of type '<SensorDiagnostic>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hardware_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hardware_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_received) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_normal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorDiagnostic>) istream)
  "Deserializes a message object of type '<SensorDiagnostic>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hardware_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hardware_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_received) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_normal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorDiagnostic>)))
  "Returns string type for a message object of type '<SensorDiagnostic>"
  "robint_msgs/SensorDiagnostic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorDiagnostic)))
  "Returns string type for a message object of type 'SensorDiagnostic"
  "robint_msgs/SensorDiagnostic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorDiagnostic>)))
  "Returns md5sum for a message object of type '<SensorDiagnostic>"
  "ddfb3402f75cafa157926253e3f9dfef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorDiagnostic)))
  "Returns md5sum for a message object of type 'SensorDiagnostic"
  "ddfb3402f75cafa157926253e3f9dfef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorDiagnostic>)))
  "Returns full string definition for message of type '<SensorDiagnostic>"
  (cl:format cl:nil "time time~%string hardware_name~%bool is_received~%bool is_normal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorDiagnostic)))
  "Returns full string definition for message of type 'SensorDiagnostic"
  (cl:format cl:nil "time time~%string hardware_name~%bool is_received~%bool is_normal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorDiagnostic>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'hardware_name))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorDiagnostic>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorDiagnostic
    (cl:cons ':time (time msg))
    (cl:cons ':hardware_name (hardware_name msg))
    (cl:cons ':is_received (is_received msg))
    (cl:cons ':is_normal (is_normal msg))
))
