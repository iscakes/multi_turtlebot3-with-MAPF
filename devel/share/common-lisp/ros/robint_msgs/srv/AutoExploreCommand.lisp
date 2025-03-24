; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude AutoExploreCommand-request.msg.html

(cl:defclass <AutoExploreCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutoExploreCommand-request (<AutoExploreCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoExploreCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoExploreCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AutoExploreCommand-request> is deprecated: use robint_msgs-srv:AutoExploreCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <AutoExploreCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoExploreCommand-request>)))
    "Constants for message type '<AutoExploreCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoExploreCommand-request)))
    "Constants for message type 'AutoExploreCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoExploreCommand-request>) ostream)
  "Serializes a message object of type '<AutoExploreCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoExploreCommand-request>) istream)
  "Deserializes a message object of type '<AutoExploreCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoExploreCommand-request>)))
  "Returns string type for a service object of type '<AutoExploreCommand-request>"
  "robint_msgs/AutoExploreCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoExploreCommand-request)))
  "Returns string type for a service object of type 'AutoExploreCommand-request"
  "robint_msgs/AutoExploreCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoExploreCommand-request>)))
  "Returns md5sum for a message object of type '<AutoExploreCommand-request>"
  "2a8aa6d49f12807a85b62e57d3a33334")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoExploreCommand-request)))
  "Returns md5sum for a message object of type 'AutoExploreCommand-request"
  "2a8aa6d49f12807a85b62e57d3a33334")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoExploreCommand-request>)))
  "Returns full string definition for message of type '<AutoExploreCommand-request>"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoExploreCommand-request)))
  "Returns full string definition for message of type 'AutoExploreCommand-request"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoExploreCommand-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoExploreCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoExploreCommand-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude AutoExploreCommand-response.msg.html

(cl:defclass <AutoExploreCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AutoExploreCommand-response (<AutoExploreCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoExploreCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoExploreCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AutoExploreCommand-response> is deprecated: use robint_msgs-srv:AutoExploreCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AutoExploreCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <AutoExploreCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AutoExploreCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoExploreCommand-response>) ostream)
  "Serializes a message object of type '<AutoExploreCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoExploreCommand-response>) istream)
  "Deserializes a message object of type '<AutoExploreCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoExploreCommand-response>)))
  "Returns string type for a service object of type '<AutoExploreCommand-response>"
  "robint_msgs/AutoExploreCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoExploreCommand-response)))
  "Returns string type for a service object of type 'AutoExploreCommand-response"
  "robint_msgs/AutoExploreCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoExploreCommand-response>)))
  "Returns md5sum for a message object of type '<AutoExploreCommand-response>"
  "2a8aa6d49f12807a85b62e57d3a33334")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoExploreCommand-response)))
  "Returns md5sum for a message object of type 'AutoExploreCommand-response"
  "2a8aa6d49f12807a85b62e57d3a33334")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoExploreCommand-response>)))
  "Returns full string definition for message of type '<AutoExploreCommand-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoExploreCommand-response)))
  "Returns full string definition for message of type 'AutoExploreCommand-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoExploreCommand-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoExploreCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoExploreCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AutoExploreCommand)))
  'AutoExploreCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AutoExploreCommand)))
  'AutoExploreCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoExploreCommand)))
  "Returns string type for a service object of type '<AutoExploreCommand>"
  "robint_msgs/AutoExploreCommand")