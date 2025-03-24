; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude DockCommand-request.msg.html

(cl:defclass <DockCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (current_loc_group
    :reader current_loc_group
    :initarg :current_loc_group
    :type cl:string
    :initform ""))
)

(cl:defclass DockCommand-request (<DockCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DockCommand-request> is deprecated: use robint_msgs-srv:DockCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <DockCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'current_loc_group-val :lambda-list '(m))
(cl:defmethod current_loc_group-val ((m <DockCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:current_loc_group-val is deprecated.  Use robint_msgs-srv:current_loc_group instead.")
  (current_loc_group m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DockCommand-request>)))
    "Constants for message type '<DockCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DockCommand-request)))
    "Constants for message type 'DockCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockCommand-request>) ostream)
  "Serializes a message object of type '<DockCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_loc_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_loc_group))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockCommand-request>) istream)
  "Deserializes a message object of type '<DockCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_loc_group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_loc_group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockCommand-request>)))
  "Returns string type for a service object of type '<DockCommand-request>"
  "robint_msgs/DockCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockCommand-request)))
  "Returns string type for a service object of type 'DockCommand-request"
  "robint_msgs/DockCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockCommand-request>)))
  "Returns md5sum for a message object of type '<DockCommand-request>"
  "04ef91de9a41c0204d8f06a5ea72526d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockCommand-request)))
  "Returns md5sum for a message object of type 'DockCommand-request"
  "04ef91de9a41c0204d8f06a5ea72526d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockCommand-request>)))
  "Returns full string definition for message of type '<DockCommand-request>"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%string current_loc_group  # \"CONTAINER\", \"DEFAULT_CHARGE_BASE\"~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockCommand-request)))
  "Returns full string definition for message of type 'DockCommand-request"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%string current_loc_group  # \"CONTAINER\", \"DEFAULT_CHARGE_BASE\"~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockCommand-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'current_loc_group))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DockCommand-request
    (cl:cons ':command (command msg))
    (cl:cons ':current_loc_group (current_loc_group msg))
))
;//! \htmlinclude DockCommand-response.msg.html

(cl:defclass <DockCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DockCommand-response (<DockCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DockCommand-response> is deprecated: use robint_msgs-srv:DockCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DockCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <DockCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DockCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockCommand-response>) ostream)
  "Serializes a message object of type '<DockCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockCommand-response>) istream)
  "Deserializes a message object of type '<DockCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockCommand-response>)))
  "Returns string type for a service object of type '<DockCommand-response>"
  "robint_msgs/DockCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockCommand-response)))
  "Returns string type for a service object of type 'DockCommand-response"
  "robint_msgs/DockCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockCommand-response>)))
  "Returns md5sum for a message object of type '<DockCommand-response>"
  "04ef91de9a41c0204d8f06a5ea72526d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockCommand-response)))
  "Returns md5sum for a message object of type 'DockCommand-response"
  "04ef91de9a41c0204d8f06a5ea72526d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockCommand-response>)))
  "Returns full string definition for message of type '<DockCommand-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockCommand-response)))
  "Returns full string definition for message of type 'DockCommand-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockCommand-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DockCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DockCommand)))
  'DockCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DockCommand)))
  'DockCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockCommand)))
  "Returns string type for a service object of type '<DockCommand>"
  "robint_msgs/DockCommand")