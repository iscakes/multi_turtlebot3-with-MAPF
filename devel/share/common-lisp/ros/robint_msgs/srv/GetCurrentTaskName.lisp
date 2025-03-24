; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetCurrentTaskName-request.msg.html

(cl:defclass <GetCurrentTaskName-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCurrentTaskName-request (<GetCurrentTaskName-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentTaskName-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentTaskName-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCurrentTaskName-request> is deprecated: use robint_msgs-srv:GetCurrentTaskName-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentTaskName-request>) ostream)
  "Serializes a message object of type '<GetCurrentTaskName-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentTaskName-request>) istream)
  "Deserializes a message object of type '<GetCurrentTaskName-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentTaskName-request>)))
  "Returns string type for a service object of type '<GetCurrentTaskName-request>"
  "robint_msgs/GetCurrentTaskNameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentTaskName-request)))
  "Returns string type for a service object of type 'GetCurrentTaskName-request"
  "robint_msgs/GetCurrentTaskNameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentTaskName-request>)))
  "Returns md5sum for a message object of type '<GetCurrentTaskName-request>"
  "f9535dd2e17d62b0cbf72cb334744629")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentTaskName-request)))
  "Returns md5sum for a message object of type 'GetCurrentTaskName-request"
  "f9535dd2e17d62b0cbf72cb334744629")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentTaskName-request>)))
  "Returns full string definition for message of type '<GetCurrentTaskName-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentTaskName-request)))
  "Returns full string definition for message of type 'GetCurrentTaskName-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentTaskName-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentTaskName-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentTaskName-request
))
;//! \htmlinclude GetCurrentTaskName-response.msg.html

(cl:defclass <GetCurrentTaskName-response> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetCurrentTaskName-response (<GetCurrentTaskName-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentTaskName-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentTaskName-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCurrentTaskName-response> is deprecated: use robint_msgs-srv:GetCurrentTaskName-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetCurrentTaskName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:name-val is deprecated.  Use robint_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCurrentTaskName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentTaskName-response>) ostream)
  "Serializes a message object of type '<GetCurrentTaskName-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentTaskName-response>) istream)
  "Deserializes a message object of type '<GetCurrentTaskName-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentTaskName-response>)))
  "Returns string type for a service object of type '<GetCurrentTaskName-response>"
  "robint_msgs/GetCurrentTaskNameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentTaskName-response)))
  "Returns string type for a service object of type 'GetCurrentTaskName-response"
  "robint_msgs/GetCurrentTaskNameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentTaskName-response>)))
  "Returns md5sum for a message object of type '<GetCurrentTaskName-response>"
  "f9535dd2e17d62b0cbf72cb334744629")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentTaskName-response)))
  "Returns md5sum for a message object of type 'GetCurrentTaskName-response"
  "f9535dd2e17d62b0cbf72cb334744629")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentTaskName-response>)))
  "Returns full string definition for message of type '<GetCurrentTaskName-response>"
  (cl:format cl:nil "string name~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentTaskName-response)))
  "Returns full string definition for message of type 'GetCurrentTaskName-response"
  (cl:format cl:nil "string name~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentTaskName-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentTaskName-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentTaskName-response
    (cl:cons ':name (name msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurrentTaskName)))
  'GetCurrentTaskName-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurrentTaskName)))
  'GetCurrentTaskName-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentTaskName)))
  "Returns string type for a service object of type '<GetCurrentTaskName>"
  "robint_msgs/GetCurrentTaskName")