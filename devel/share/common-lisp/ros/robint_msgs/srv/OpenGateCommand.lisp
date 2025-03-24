; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude OpenGateCommand-request.msg.html

(cl:defclass <OpenGateCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (gate_id
    :reader gate_id
    :initarg :gate_id
    :type cl:string
    :initform ""))
)

(cl:defclass OpenGateCommand-request (<OpenGateCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenGateCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenGateCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<OpenGateCommand-request> is deprecated: use robint_msgs-srv:OpenGateCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <OpenGateCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'gate_id-val :lambda-list '(m))
(cl:defmethod gate_id-val ((m <OpenGateCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:gate_id-val is deprecated.  Use robint_msgs-srv:gate_id instead.")
  (gate_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OpenGateCommand-request>)))
    "Constants for message type '<OpenGateCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OpenGateCommand-request)))
    "Constants for message type 'OpenGateCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenGateCommand-request>) ostream)
  "Serializes a message object of type '<OpenGateCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gate_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gate_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenGateCommand-request>) istream)
  "Deserializes a message object of type '<OpenGateCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gate_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gate_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenGateCommand-request>)))
  "Returns string type for a service object of type '<OpenGateCommand-request>"
  "robint_msgs/OpenGateCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenGateCommand-request)))
  "Returns string type for a service object of type 'OpenGateCommand-request"
  "robint_msgs/OpenGateCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenGateCommand-request>)))
  "Returns md5sum for a message object of type '<OpenGateCommand-request>"
  "dba074575c8b62ebbbcc46f495065ed7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenGateCommand-request)))
  "Returns md5sum for a message object of type 'OpenGateCommand-request"
  "dba074575c8b62ebbbcc46f495065ed7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenGateCommand-request>)))
  "Returns full string definition for message of type '<OpenGateCommand-request>"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%string gate_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenGateCommand-request)))
  "Returns full string definition for message of type 'OpenGateCommand-request"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%string gate_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenGateCommand-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'gate_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenGateCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenGateCommand-request
    (cl:cons ':command (command msg))
    (cl:cons ':gate_id (gate_id msg))
))
;//! \htmlinclude OpenGateCommand-response.msg.html

(cl:defclass <OpenGateCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass OpenGateCommand-response (<OpenGateCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OpenGateCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OpenGateCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<OpenGateCommand-response> is deprecated: use robint_msgs-srv:OpenGateCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <OpenGateCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <OpenGateCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <OpenGateCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OpenGateCommand-response>) ostream)
  "Serializes a message object of type '<OpenGateCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OpenGateCommand-response>) istream)
  "Deserializes a message object of type '<OpenGateCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OpenGateCommand-response>)))
  "Returns string type for a service object of type '<OpenGateCommand-response>"
  "robint_msgs/OpenGateCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenGateCommand-response)))
  "Returns string type for a service object of type 'OpenGateCommand-response"
  "robint_msgs/OpenGateCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OpenGateCommand-response>)))
  "Returns md5sum for a message object of type '<OpenGateCommand-response>"
  "dba074575c8b62ebbbcc46f495065ed7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OpenGateCommand-response)))
  "Returns md5sum for a message object of type 'OpenGateCommand-response"
  "dba074575c8b62ebbbcc46f495065ed7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OpenGateCommand-response>)))
  "Returns full string definition for message of type '<OpenGateCommand-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OpenGateCommand-response)))
  "Returns full string definition for message of type 'OpenGateCommand-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OpenGateCommand-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OpenGateCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OpenGateCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OpenGateCommand)))
  'OpenGateCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OpenGateCommand)))
  'OpenGateCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OpenGateCommand)))
  "Returns string type for a service object of type '<OpenGateCommand>"
  "robint_msgs/OpenGateCommand")