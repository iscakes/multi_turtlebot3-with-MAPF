; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetCurrentMapName-request.msg.html

(cl:defclass <GetCurrentMapName-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCurrentMapName-request (<GetCurrentMapName-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentMapName-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentMapName-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCurrentMapName-request> is deprecated: use robint_msgs-srv:GetCurrentMapName-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentMapName-request>) ostream)
  "Serializes a message object of type '<GetCurrentMapName-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentMapName-request>) istream)
  "Deserializes a message object of type '<GetCurrentMapName-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentMapName-request>)))
  "Returns string type for a service object of type '<GetCurrentMapName-request>"
  "robint_msgs/GetCurrentMapNameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentMapName-request)))
  "Returns string type for a service object of type 'GetCurrentMapName-request"
  "robint_msgs/GetCurrentMapNameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentMapName-request>)))
  "Returns md5sum for a message object of type '<GetCurrentMapName-request>"
  "f9535dd2e17d62b0cbf72cb334744629")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentMapName-request)))
  "Returns md5sum for a message object of type 'GetCurrentMapName-request"
  "f9535dd2e17d62b0cbf72cb334744629")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentMapName-request>)))
  "Returns full string definition for message of type '<GetCurrentMapName-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentMapName-request)))
  "Returns full string definition for message of type 'GetCurrentMapName-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentMapName-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentMapName-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentMapName-request
))
;//! \htmlinclude GetCurrentMapName-response.msg.html

(cl:defclass <GetCurrentMapName-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetCurrentMapName-response (<GetCurrentMapName-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentMapName-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentMapName-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCurrentMapName-response> is deprecated: use robint_msgs-srv:GetCurrentMapName-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetCurrentMapName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:name-val is deprecated.  Use robint_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCurrentMapName-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentMapName-response>) ostream)
  "Serializes a message object of type '<GetCurrentMapName-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentMapName-response>) istream)
  "Deserializes a message object of type '<GetCurrentMapName-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentMapName-response>)))
  "Returns string type for a service object of type '<GetCurrentMapName-response>"
  "robint_msgs/GetCurrentMapNameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentMapName-response)))
  "Returns string type for a service object of type 'GetCurrentMapName-response"
  "robint_msgs/GetCurrentMapNameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentMapName-response>)))
  "Returns md5sum for a message object of type '<GetCurrentMapName-response>"
  "f9535dd2e17d62b0cbf72cb334744629")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentMapName-response)))
  "Returns md5sum for a message object of type 'GetCurrentMapName-response"
  "f9535dd2e17d62b0cbf72cb334744629")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentMapName-response>)))
  "Returns full string definition for message of type '<GetCurrentMapName-response>"
  (cl:format cl:nil "string name~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentMapName-response)))
  "Returns full string definition for message of type 'GetCurrentMapName-response"
  (cl:format cl:nil "string name~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentMapName-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentMapName-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentMapName-response
    (cl:cons ':name (name msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurrentMapName)))
  'GetCurrentMapName-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurrentMapName)))
  'GetCurrentMapName-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentMapName)))
  "Returns string type for a service object of type '<GetCurrentMapName>"
  "robint_msgs/GetCurrentMapName")