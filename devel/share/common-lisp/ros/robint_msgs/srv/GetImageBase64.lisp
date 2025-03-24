; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetImageBase64-request.msg.html

(cl:defclass <GetImageBase64-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass GetImageBase64-request (<GetImageBase64-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetImageBase64-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetImageBase64-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetImageBase64-request> is deprecated: use robint_msgs-srv:GetImageBase64-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <GetImageBase64-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:topic-val is deprecated.  Use robint_msgs-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetImageBase64-request>) ostream)
  "Serializes a message object of type '<GetImageBase64-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetImageBase64-request>) istream)
  "Deserializes a message object of type '<GetImageBase64-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetImageBase64-request>)))
  "Returns string type for a service object of type '<GetImageBase64-request>"
  "robint_msgs/GetImageBase64Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImageBase64-request)))
  "Returns string type for a service object of type 'GetImageBase64-request"
  "robint_msgs/GetImageBase64Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetImageBase64-request>)))
  "Returns md5sum for a message object of type '<GetImageBase64-request>"
  "a99467aa3a03e9f6fc741eaebff2f37a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetImageBase64-request)))
  "Returns md5sum for a message object of type 'GetImageBase64-request"
  "a99467aa3a03e9f6fc741eaebff2f37a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetImageBase64-request>)))
  "Returns full string definition for message of type '<GetImageBase64-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetImageBase64-request)))
  "Returns full string definition for message of type 'GetImageBase64-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetImageBase64-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetImageBase64-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetImageBase64-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude GetImageBase64-response.msg.html

(cl:defclass <GetImageBase64-response> (roslisp-msg-protocol:ros-message)
  ((base64
    :reader base64
    :initarg :base64
    :type cl:string
    :initform "")
   (format
    :reader format
    :initarg :format
    :type cl:string
    :initform "")
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetImageBase64-response (<GetImageBase64-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetImageBase64-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetImageBase64-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetImageBase64-response> is deprecated: use robint_msgs-srv:GetImageBase64-response instead.")))

(cl:ensure-generic-function 'base64-val :lambda-list '(m))
(cl:defmethod base64-val ((m <GetImageBase64-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:base64-val is deprecated.  Use robint_msgs-srv:base64 instead.")
  (base64 m))

(cl:ensure-generic-function 'format-val :lambda-list '(m))
(cl:defmethod format-val ((m <GetImageBase64-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:format-val is deprecated.  Use robint_msgs-srv:format instead.")
  (format m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetImageBase64-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetImageBase64-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetImageBase64-response>) ostream)
  "Serializes a message object of type '<GetImageBase64-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base64))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base64))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'format))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'format))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetImageBase64-response>) istream)
  "Deserializes a message object of type '<GetImageBase64-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base64) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base64) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'format) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'format) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetImageBase64-response>)))
  "Returns string type for a service object of type '<GetImageBase64-response>"
  "robint_msgs/GetImageBase64Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImageBase64-response)))
  "Returns string type for a service object of type 'GetImageBase64-response"
  "robint_msgs/GetImageBase64Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetImageBase64-response>)))
  "Returns md5sum for a message object of type '<GetImageBase64-response>"
  "a99467aa3a03e9f6fc741eaebff2f37a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetImageBase64-response)))
  "Returns md5sum for a message object of type 'GetImageBase64-response"
  "a99467aa3a03e9f6fc741eaebff2f37a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetImageBase64-response>)))
  "Returns full string definition for message of type '<GetImageBase64-response>"
  (cl:format cl:nil "string base64~%string format  # \"png\" or \"jpeg\"~%uint8 error_code~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetImageBase64-response)))
  "Returns full string definition for message of type 'GetImageBase64-response"
  (cl:format cl:nil "string base64~%string format  # \"png\" or \"jpeg\"~%uint8 error_code~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetImageBase64-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'base64))
     4 (cl:length (cl:slot-value msg 'format))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetImageBase64-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetImageBase64-response
    (cl:cons ':base64 (base64 msg))
    (cl:cons ':format (format msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetImageBase64)))
  'GetImageBase64-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetImageBase64)))
  'GetImageBase64-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImageBase64)))
  "Returns string type for a service object of type '<GetImageBase64>"
  "robint_msgs/GetImageBase64")