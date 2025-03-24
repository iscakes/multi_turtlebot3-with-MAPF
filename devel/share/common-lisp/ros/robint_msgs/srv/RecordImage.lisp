; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude RecordImage-request.msg.html

(cl:defclass <RecordImage-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (compression_level
    :reader compression_level
    :initarg :compression_level
    :type cl:integer
    :initform 0))
)

(cl:defclass RecordImage-request (<RecordImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<RecordImage-request> is deprecated: use robint_msgs-srv:RecordImage-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <RecordImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:enable-val is deprecated.  Use robint_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'compression_level-val :lambda-list '(m))
(cl:defmethod compression_level-val ((m <RecordImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:compression_level-val is deprecated.  Use robint_msgs-srv:compression_level instead.")
  (compression_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordImage-request>) ostream)
  "Serializes a message object of type '<RecordImage-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'compression_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordImage-request>) istream)
  "Deserializes a message object of type '<RecordImage-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'compression_level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordImage-request>)))
  "Returns string type for a service object of type '<RecordImage-request>"
  "robint_msgs/RecordImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordImage-request)))
  "Returns string type for a service object of type 'RecordImage-request"
  "robint_msgs/RecordImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordImage-request>)))
  "Returns md5sum for a message object of type '<RecordImage-request>"
  "773a71c89a6b14108e80ced63f2ba488")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordImage-request)))
  "Returns md5sum for a message object of type 'RecordImage-request"
  "773a71c89a6b14108e80ced63f2ba488")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordImage-request>)))
  "Returns full string definition for message of type '<RecordImage-request>"
  (cl:format cl:nil "bool enable~%int32 compression_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordImage-request)))
  "Returns full string definition for message of type 'RecordImage-request"
  (cl:format cl:nil "bool enable~%int32 compression_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordImage-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordImage-request
    (cl:cons ':enable (enable msg))
    (cl:cons ':compression_level (compression_level msg))
))
;//! \htmlinclude RecordImage-response.msg.html

(cl:defclass <RecordImage-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass RecordImage-response (<RecordImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<RecordImage-response> is deprecated: use robint_msgs-srv:RecordImage-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RecordImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RecordImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordImage-response>) ostream)
  "Serializes a message object of type '<RecordImage-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordImage-response>) istream)
  "Deserializes a message object of type '<RecordImage-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordImage-response>)))
  "Returns string type for a service object of type '<RecordImage-response>"
  "robint_msgs/RecordImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordImage-response)))
  "Returns string type for a service object of type 'RecordImage-response"
  "robint_msgs/RecordImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordImage-response>)))
  "Returns md5sum for a message object of type '<RecordImage-response>"
  "773a71c89a6b14108e80ced63f2ba488")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordImage-response)))
  "Returns md5sum for a message object of type 'RecordImage-response"
  "773a71c89a6b14108e80ced63f2ba488")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordImage-response>)))
  "Returns full string definition for message of type '<RecordImage-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordImage-response)))
  "Returns full string definition for message of type 'RecordImage-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordImage-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordImage-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecordImage)))
  'RecordImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecordImage)))
  'RecordImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordImage)))
  "Returns string type for a service object of type '<RecordImage>"
  "robint_msgs/RecordImage")