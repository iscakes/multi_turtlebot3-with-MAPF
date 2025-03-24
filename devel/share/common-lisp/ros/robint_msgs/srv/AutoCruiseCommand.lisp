; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude AutoCruiseCommand-request.msg.html

(cl:defclass <AutoCruiseCommand-request> (roslisp-msg-protocol:ros-message)
  ((task_name
    :reader task_name
    :initarg :task_name
    :type cl:string
    :initform "")
   (task_uuid
    :reader task_uuid
    :initarg :task_uuid
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (start_location_uuid
    :reader start_location_uuid
    :initarg :start_location_uuid
    :type cl:string
    :initform "")
   (end_location_uuid
    :reader end_location_uuid
    :initarg :end_location_uuid
    :type cl:string
    :initform ""))
)

(cl:defclass AutoCruiseCommand-request (<AutoCruiseCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoCruiseCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoCruiseCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AutoCruiseCommand-request> is deprecated: use robint_msgs-srv:AutoCruiseCommand-request instead.")))

(cl:ensure-generic-function 'task_name-val :lambda-list '(m))
(cl:defmethod task_name-val ((m <AutoCruiseCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:task_name-val is deprecated.  Use robint_msgs-srv:task_name instead.")
  (task_name m))

(cl:ensure-generic-function 'task_uuid-val :lambda-list '(m))
(cl:defmethod task_uuid-val ((m <AutoCruiseCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:task_uuid-val is deprecated.  Use robint_msgs-srv:task_uuid instead.")
  (task_uuid m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <AutoCruiseCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'start_location_uuid-val :lambda-list '(m))
(cl:defmethod start_location_uuid-val ((m <AutoCruiseCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:start_location_uuid-val is deprecated.  Use robint_msgs-srv:start_location_uuid instead.")
  (start_location_uuid m))

(cl:ensure-generic-function 'end_location_uuid-val :lambda-list '(m))
(cl:defmethod end_location_uuid-val ((m <AutoCruiseCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:end_location_uuid-val is deprecated.  Use robint_msgs-srv:end_location_uuid instead.")
  (end_location_uuid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoCruiseCommand-request>)))
    "Constants for message type '<AutoCruiseCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoCruiseCommand-request)))
    "Constants for message type 'AutoCruiseCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoCruiseCommand-request>) ostream)
  "Serializes a message object of type '<AutoCruiseCommand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start_location_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start_location_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_location_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_location_uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoCruiseCommand-request>) istream)
  "Deserializes a message object of type '<AutoCruiseCommand-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_location_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start_location_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_location_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_location_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoCruiseCommand-request>)))
  "Returns string type for a service object of type '<AutoCruiseCommand-request>"
  "robint_msgs/AutoCruiseCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoCruiseCommand-request)))
  "Returns string type for a service object of type 'AutoCruiseCommand-request"
  "robint_msgs/AutoCruiseCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoCruiseCommand-request>)))
  "Returns md5sum for a message object of type '<AutoCruiseCommand-request>"
  "13b775ca1ec1ffd6cc417222cb8e4b2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoCruiseCommand-request)))
  "Returns md5sum for a message object of type 'AutoCruiseCommand-request"
  "13b775ca1ec1ffd6cc417222cb8e4b2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoCruiseCommand-request>)))
  "Returns full string definition for message of type '<AutoCruiseCommand-request>"
  (cl:format cl:nil "string task_name~%string task_uuid~%uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%string start_location_uuid~%string end_location_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoCruiseCommand-request)))
  "Returns full string definition for message of type 'AutoCruiseCommand-request"
  (cl:format cl:nil "string task_name~%string task_uuid~%uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%string start_location_uuid~%string end_location_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoCruiseCommand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_name))
     4 (cl:length (cl:slot-value msg 'task_uuid))
     1
     4 (cl:length (cl:slot-value msg 'start_location_uuid))
     4 (cl:length (cl:slot-value msg 'end_location_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoCruiseCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoCruiseCommand-request
    (cl:cons ':task_name (task_name msg))
    (cl:cons ':task_uuid (task_uuid msg))
    (cl:cons ':command (command msg))
    (cl:cons ':start_location_uuid (start_location_uuid msg))
    (cl:cons ':end_location_uuid (end_location_uuid msg))
))
;//! \htmlinclude AutoCruiseCommand-response.msg.html

(cl:defclass <AutoCruiseCommand-response> (roslisp-msg-protocol:ros-message)
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
    :initform "")
   (percent
    :reader percent
    :initarg :percent
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutoCruiseCommand-response (<AutoCruiseCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoCruiseCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoCruiseCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AutoCruiseCommand-response> is deprecated: use robint_msgs-srv:AutoCruiseCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AutoCruiseCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <AutoCruiseCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AutoCruiseCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'percent-val :lambda-list '(m))
(cl:defmethod percent-val ((m <AutoCruiseCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:percent-val is deprecated.  Use robint_msgs-srv:percent instead.")
  (percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoCruiseCommand-response>) ostream)
  "Serializes a message object of type '<AutoCruiseCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'percent)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoCruiseCommand-response>) istream)
  "Deserializes a message object of type '<AutoCruiseCommand-response>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'percent)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoCruiseCommand-response>)))
  "Returns string type for a service object of type '<AutoCruiseCommand-response>"
  "robint_msgs/AutoCruiseCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoCruiseCommand-response)))
  "Returns string type for a service object of type 'AutoCruiseCommand-response"
  "robint_msgs/AutoCruiseCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoCruiseCommand-response>)))
  "Returns md5sum for a message object of type '<AutoCruiseCommand-response>"
  "13b775ca1ec1ffd6cc417222cb8e4b2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoCruiseCommand-response)))
  "Returns md5sum for a message object of type 'AutoCruiseCommand-response"
  "13b775ca1ec1ffd6cc417222cb8e4b2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoCruiseCommand-response>)))
  "Returns full string definition for message of type '<AutoCruiseCommand-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoCruiseCommand-response)))
  "Returns full string definition for message of type 'AutoCruiseCommand-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%uint8 percent~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoCruiseCommand-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoCruiseCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoCruiseCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
    (cl:cons ':percent (percent msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AutoCruiseCommand)))
  'AutoCruiseCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AutoCruiseCommand)))
  'AutoCruiseCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoCruiseCommand)))
  "Returns string type for a service object of type '<AutoCruiseCommand>"
  "robint_msgs/AutoCruiseCommand")