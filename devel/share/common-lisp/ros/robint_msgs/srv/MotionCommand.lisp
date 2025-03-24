; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude MotionCommand-request.msg.html

(cl:defclass <MotionCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0)
   (theta_degree
    :reader theta_degree
    :initarg :theta_degree
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotionCommand-request (<MotionCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<MotionCommand-request> is deprecated: use robint_msgs-srv:MotionCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <MotionCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MotionCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:type-val is deprecated.  Use robint_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <MotionCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:dist-val is deprecated.  Use robint_msgs-srv:dist instead.")
  (dist m))

(cl:ensure-generic-function 'theta_degree-val :lambda-list '(m))
(cl:defmethod theta_degree-val ((m <MotionCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:theta_degree-val is deprecated.  Use robint_msgs-srv:theta_degree instead.")
  (theta_degree m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MotionCommand-request>)))
    "Constants for message type '<MotionCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3)
    (:MOVE . 11)
    (:ROTATE . 12)
    (:CALL . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MotionCommand-request)))
    "Constants for message type 'MotionCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3)
    (:MOVE . 11)
    (:ROTATE . 12)
    (:CALL . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionCommand-request>) ostream)
  "Serializes a message object of type '<MotionCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta_degree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionCommand-request>) istream)
  "Deserializes a message object of type '<MotionCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_degree) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionCommand-request>)))
  "Returns string type for a service object of type '<MotionCommand-request>"
  "robint_msgs/MotionCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionCommand-request)))
  "Returns string type for a service object of type 'MotionCommand-request"
  "robint_msgs/MotionCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionCommand-request>)))
  "Returns md5sum for a message object of type '<MotionCommand-request>"
  "2cae5a401f113aafe8af556e3b9fcac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionCommand-request)))
  "Returns md5sum for a message object of type 'MotionCommand-request"
  "2cae5a401f113aafe8af556e3b9fcac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionCommand-request>)))
  "Returns full string definition for message of type '<MotionCommand-request>"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%uint8 type~%uint8 MOVE=11~%uint8 ROTATE=12~%uint8 CALL=13~%float32 dist~%float32 theta_degree~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionCommand-request)))
  "Returns full string definition for message of type 'MotionCommand-request"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%uint8 type~%uint8 MOVE=11~%uint8 ROTATE=12~%uint8 CALL=13~%float32 dist~%float32 theta_degree~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionCommand-request>))
  (cl:+ 0
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionCommand-request
    (cl:cons ':command (command msg))
    (cl:cons ':type (type msg))
    (cl:cons ':dist (dist msg))
    (cl:cons ':theta_degree (theta_degree msg))
))
;//! \htmlinclude MotionCommand-response.msg.html

(cl:defclass <MotionCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass MotionCommand-response (<MotionCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<MotionCommand-response> is deprecated: use robint_msgs-srv:MotionCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MotionCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <MotionCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MotionCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionCommand-response>) ostream)
  "Serializes a message object of type '<MotionCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionCommand-response>) istream)
  "Deserializes a message object of type '<MotionCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionCommand-response>)))
  "Returns string type for a service object of type '<MotionCommand-response>"
  "robint_msgs/MotionCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionCommand-response)))
  "Returns string type for a service object of type 'MotionCommand-response"
  "robint_msgs/MotionCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionCommand-response>)))
  "Returns md5sum for a message object of type '<MotionCommand-response>"
  "2cae5a401f113aafe8af556e3b9fcac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionCommand-response)))
  "Returns md5sum for a message object of type 'MotionCommand-response"
  "2cae5a401f113aafe8af556e3b9fcac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionCommand-response>)))
  "Returns full string definition for message of type '<MotionCommand-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionCommand-response)))
  "Returns full string definition for message of type 'MotionCommand-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionCommand-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MotionCommand)))
  'MotionCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MotionCommand)))
  'MotionCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionCommand)))
  "Returns string type for a service object of type '<MotionCommand>"
  "robint_msgs/MotionCommand")