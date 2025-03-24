; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude CallElevatorCommand-request.msg.html

(cl:defclass <CallElevatorCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (building_name
    :reader building_name
    :initarg :building_name
    :type cl:string
    :initform "")
   (from_floor
    :reader from_floor
    :initarg :from_floor
    :type cl:integer
    :initform 0)
   (to_floor
    :reader to_floor
    :initarg :to_floor
    :type cl:integer
    :initform 0)
   (in_elevator
    :reader in_elevator
    :initarg :in_elevator
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CallElevatorCommand-request (<CallElevatorCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CallElevatorCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CallElevatorCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CallElevatorCommand-request> is deprecated: use robint_msgs-srv:CallElevatorCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <CallElevatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'building_name-val :lambda-list '(m))
(cl:defmethod building_name-val ((m <CallElevatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:building_name-val is deprecated.  Use robint_msgs-srv:building_name instead.")
  (building_name m))

(cl:ensure-generic-function 'from_floor-val :lambda-list '(m))
(cl:defmethod from_floor-val ((m <CallElevatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:from_floor-val is deprecated.  Use robint_msgs-srv:from_floor instead.")
  (from_floor m))

(cl:ensure-generic-function 'to_floor-val :lambda-list '(m))
(cl:defmethod to_floor-val ((m <CallElevatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:to_floor-val is deprecated.  Use robint_msgs-srv:to_floor instead.")
  (to_floor m))

(cl:ensure-generic-function 'in_elevator-val :lambda-list '(m))
(cl:defmethod in_elevator-val ((m <CallElevatorCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:in_elevator-val is deprecated.  Use robint_msgs-srv:in_elevator instead.")
  (in_elevator m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CallElevatorCommand-request>)))
    "Constants for message type '<CallElevatorCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CallElevatorCommand-request)))
    "Constants for message type 'CallElevatorCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CallElevatorCommand-request>) ostream)
  "Serializes a message object of type '<CallElevatorCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'building_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'building_name))
  (cl:let* ((signed (cl:slot-value msg 'from_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'to_floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_elevator) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CallElevatorCommand-request>) istream)
  "Deserializes a message object of type '<CallElevatorCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'building_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'building_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'from_floor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'to_floor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'in_elevator) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CallElevatorCommand-request>)))
  "Returns string type for a service object of type '<CallElevatorCommand-request>"
  "robint_msgs/CallElevatorCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallElevatorCommand-request)))
  "Returns string type for a service object of type 'CallElevatorCommand-request"
  "robint_msgs/CallElevatorCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CallElevatorCommand-request>)))
  "Returns md5sum for a message object of type '<CallElevatorCommand-request>"
  "76382a8f79198018adfe306bd305cb26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CallElevatorCommand-request)))
  "Returns md5sum for a message object of type 'CallElevatorCommand-request"
  "76382a8f79198018adfe306bd305cb26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CallElevatorCommand-request>)))
  "Returns full string definition for message of type '<CallElevatorCommand-request>"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%string building_name~%int32 from_floor~%int32 to_floor~%bool in_elevator~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CallElevatorCommand-request)))
  "Returns full string definition for message of type 'CallElevatorCommand-request"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%string building_name~%int32 from_floor~%int32 to_floor~%bool in_elevator~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CallElevatorCommand-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'building_name))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CallElevatorCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CallElevatorCommand-request
    (cl:cons ':command (command msg))
    (cl:cons ':building_name (building_name msg))
    (cl:cons ':from_floor (from_floor msg))
    (cl:cons ':to_floor (to_floor msg))
    (cl:cons ':in_elevator (in_elevator msg))
))
;//! \htmlinclude CallElevatorCommand-response.msg.html

(cl:defclass <CallElevatorCommand-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass CallElevatorCommand-response (<CallElevatorCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CallElevatorCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CallElevatorCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CallElevatorCommand-response> is deprecated: use robint_msgs-srv:CallElevatorCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CallElevatorCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CallElevatorCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CallElevatorCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CallElevatorCommand-response>) ostream)
  "Serializes a message object of type '<CallElevatorCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CallElevatorCommand-response>) istream)
  "Deserializes a message object of type '<CallElevatorCommand-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CallElevatorCommand-response>)))
  "Returns string type for a service object of type '<CallElevatorCommand-response>"
  "robint_msgs/CallElevatorCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallElevatorCommand-response)))
  "Returns string type for a service object of type 'CallElevatorCommand-response"
  "robint_msgs/CallElevatorCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CallElevatorCommand-response>)))
  "Returns md5sum for a message object of type '<CallElevatorCommand-response>"
  "76382a8f79198018adfe306bd305cb26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CallElevatorCommand-response)))
  "Returns md5sum for a message object of type 'CallElevatorCommand-response"
  "76382a8f79198018adfe306bd305cb26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CallElevatorCommand-response>)))
  "Returns full string definition for message of type '<CallElevatorCommand-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CallElevatorCommand-response)))
  "Returns full string definition for message of type 'CallElevatorCommand-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CallElevatorCommand-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CallElevatorCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CallElevatorCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CallElevatorCommand)))
  'CallElevatorCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CallElevatorCommand)))
  'CallElevatorCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallElevatorCommand)))
  "Returns string type for a service object of type '<CallElevatorCommand>"
  "robint_msgs/CallElevatorCommand")