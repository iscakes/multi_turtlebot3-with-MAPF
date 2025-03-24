; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetEmbeddingVersion-request.msg.html

(cl:defclass <GetEmbeddingVersion-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetEmbeddingVersion-request (<GetEmbeddingVersion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEmbeddingVersion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEmbeddingVersion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetEmbeddingVersion-request> is deprecated: use robint_msgs-srv:GetEmbeddingVersion-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEmbeddingVersion-request>) ostream)
  "Serializes a message object of type '<GetEmbeddingVersion-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEmbeddingVersion-request>) istream)
  "Deserializes a message object of type '<GetEmbeddingVersion-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEmbeddingVersion-request>)))
  "Returns string type for a service object of type '<GetEmbeddingVersion-request>"
  "robint_msgs/GetEmbeddingVersionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEmbeddingVersion-request)))
  "Returns string type for a service object of type 'GetEmbeddingVersion-request"
  "robint_msgs/GetEmbeddingVersionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEmbeddingVersion-request>)))
  "Returns md5sum for a message object of type '<GetEmbeddingVersion-request>"
  "e7b90ba6d5e0d773d0e5bf8c701d7b10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEmbeddingVersion-request)))
  "Returns md5sum for a message object of type 'GetEmbeddingVersion-request"
  "e7b90ba6d5e0d773d0e5bf8c701d7b10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEmbeddingVersion-request>)))
  "Returns full string definition for message of type '<GetEmbeddingVersion-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEmbeddingVersion-request)))
  "Returns full string definition for message of type 'GetEmbeddingVersion-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEmbeddingVersion-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEmbeddingVersion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEmbeddingVersion-request
))
;//! \htmlinclude GetEmbeddingVersion-response.msg.html

(cl:defclass <GetEmbeddingVersion-response> (roslisp-msg-protocol:ros-message)
  ((protocal_version
    :reader protocal_version
    :initarg :protocal_version
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetEmbeddingVersion-response (<GetEmbeddingVersion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEmbeddingVersion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEmbeddingVersion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetEmbeddingVersion-response> is deprecated: use robint_msgs-srv:GetEmbeddingVersion-response instead.")))

(cl:ensure-generic-function 'protocal_version-val :lambda-list '(m))
(cl:defmethod protocal_version-val ((m <GetEmbeddingVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:protocal_version-val is deprecated.  Use robint_msgs-srv:protocal_version instead.")
  (protocal_version m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetEmbeddingVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetEmbeddingVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEmbeddingVersion-response>) ostream)
  "Serializes a message object of type '<GetEmbeddingVersion-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'protocal_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'protocal_version))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEmbeddingVersion-response>) istream)
  "Deserializes a message object of type '<GetEmbeddingVersion-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'protocal_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'protocal_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEmbeddingVersion-response>)))
  "Returns string type for a service object of type '<GetEmbeddingVersion-response>"
  "robint_msgs/GetEmbeddingVersionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEmbeddingVersion-response)))
  "Returns string type for a service object of type 'GetEmbeddingVersion-response"
  "robint_msgs/GetEmbeddingVersionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEmbeddingVersion-response>)))
  "Returns md5sum for a message object of type '<GetEmbeddingVersion-response>"
  "e7b90ba6d5e0d773d0e5bf8c701d7b10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEmbeddingVersion-response)))
  "Returns md5sum for a message object of type 'GetEmbeddingVersion-response"
  "e7b90ba6d5e0d773d0e5bf8c701d7b10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEmbeddingVersion-response>)))
  "Returns full string definition for message of type '<GetEmbeddingVersion-response>"
  (cl:format cl:nil "string protocal_version~%bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEmbeddingVersion-response)))
  "Returns full string definition for message of type 'GetEmbeddingVersion-response"
  (cl:format cl:nil "string protocal_version~%bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEmbeddingVersion-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'protocal_version))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEmbeddingVersion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEmbeddingVersion-response
    (cl:cons ':protocal_version (protocal_version msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEmbeddingVersion)))
  'GetEmbeddingVersion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEmbeddingVersion)))
  'GetEmbeddingVersion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEmbeddingVersion)))
  "Returns string type for a service object of type '<GetEmbeddingVersion>"
  "robint_msgs/GetEmbeddingVersion")