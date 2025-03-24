; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude MappingCommand-request.msg.html

(cl:defclass <MappingCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (exploration
    :reader exploration
    :initarg :exploration
    :type cl:boolean
    :initform cl:nil)
   (low_resolution
    :reader low_resolution
    :initarg :low_resolution
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MappingCommand-request (<MappingCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MappingCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MappingCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<MappingCommand-request> is deprecated: use robint_msgs-srv:MappingCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <MappingCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'exploration-val :lambda-list '(m))
(cl:defmethod exploration-val ((m <MappingCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:exploration-val is deprecated.  Use robint_msgs-srv:exploration instead.")
  (exploration m))

(cl:ensure-generic-function 'low_resolution-val :lambda-list '(m))
(cl:defmethod low_resolution-val ((m <MappingCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:low_resolution-val is deprecated.  Use robint_msgs-srv:low_resolution instead.")
  (low_resolution m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MappingCommand-request>)))
    "Constants for message type '<MappingCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MappingCommand-request)))
    "Constants for message type 'MappingCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MappingCommand-request>) ostream)
  "Serializes a message object of type '<MappingCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'exploration) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'low_resolution) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MappingCommand-request>) istream)
  "Deserializes a message object of type '<MappingCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'exploration) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'low_resolution) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MappingCommand-request>)))
  "Returns string type for a service object of type '<MappingCommand-request>"
  "robint_msgs/MappingCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MappingCommand-request)))
  "Returns string type for a service object of type 'MappingCommand-request"
  "robint_msgs/MappingCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MappingCommand-request>)))
  "Returns md5sum for a message object of type '<MappingCommand-request>"
  "a1bea852b6ad33a4d1d554a92e22d008")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MappingCommand-request)))
  "Returns md5sum for a message object of type 'MappingCommand-request"
  "a1bea852b6ad33a4d1d554a92e22d008")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MappingCommand-request>)))
  "Returns full string definition for message of type '<MappingCommand-request>"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%bool exploration~%bool low_resolution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MappingCommand-request)))
  "Returns full string definition for message of type 'MappingCommand-request"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%bool exploration~%bool low_resolution~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MappingCommand-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MappingCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MappingCommand-request
    (cl:cons ':command (command msg))
    (cl:cons ':exploration (exploration msg))
    (cl:cons ':low_resolution (low_resolution msg))
))
;//! \htmlinclude MappingCommand-response.msg.html

(cl:defclass <MappingCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MappingCommand-response (<MappingCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MappingCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MappingCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<MappingCommand-response> is deprecated: use robint_msgs-srv:MappingCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MappingCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <MappingCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MappingCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MappingCommand-response>) ostream)
  "Serializes a message object of type '<MappingCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MappingCommand-response>) istream)
  "Deserializes a message object of type '<MappingCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MappingCommand-response>)))
  "Returns string type for a service object of type '<MappingCommand-response>"
  "robint_msgs/MappingCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MappingCommand-response)))
  "Returns string type for a service object of type 'MappingCommand-response"
  "robint_msgs/MappingCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MappingCommand-response>)))
  "Returns md5sum for a message object of type '<MappingCommand-response>"
  "a1bea852b6ad33a4d1d554a92e22d008")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MappingCommand-response)))
  "Returns md5sum for a message object of type 'MappingCommand-response"
  "a1bea852b6ad33a4d1d554a92e22d008")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MappingCommand-response>)))
  "Returns full string definition for message of type '<MappingCommand-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MappingCommand-response)))
  "Returns full string definition for message of type 'MappingCommand-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MappingCommand-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MappingCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MappingCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MappingCommand)))
  'MappingCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MappingCommand)))
  'MappingCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MappingCommand)))
  "Returns string type for a service object of type '<MappingCommand>"
  "robint_msgs/MappingCommand")