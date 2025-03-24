; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude CopyLocationList-request.msg.html

(cl:defclass <CopyLocationList-request> (roslisp-msg-protocol:ros-message)
  ((source_map_uuid
    :reader source_map_uuid
    :initarg :source_map_uuid
    :type cl:string
    :initform "")
   (target_map_uuid
    :reader target_map_uuid
    :initarg :target_map_uuid
    :type cl:string
    :initform "")
   (floor_index
    :reader floor_index
    :initarg :floor_index
    :type cl:integer
    :initform 0))
)

(cl:defclass CopyLocationList-request (<CopyLocationList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CopyLocationList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CopyLocationList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CopyLocationList-request> is deprecated: use robint_msgs-srv:CopyLocationList-request instead.")))

(cl:ensure-generic-function 'source_map_uuid-val :lambda-list '(m))
(cl:defmethod source_map_uuid-val ((m <CopyLocationList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:source_map_uuid-val is deprecated.  Use robint_msgs-srv:source_map_uuid instead.")
  (source_map_uuid m))

(cl:ensure-generic-function 'target_map_uuid-val :lambda-list '(m))
(cl:defmethod target_map_uuid-val ((m <CopyLocationList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_map_uuid-val is deprecated.  Use robint_msgs-srv:target_map_uuid instead.")
  (target_map_uuid m))

(cl:ensure-generic-function 'floor_index-val :lambda-list '(m))
(cl:defmethod floor_index-val ((m <CopyLocationList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:floor_index-val is deprecated.  Use robint_msgs-srv:floor_index instead.")
  (floor_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CopyLocationList-request>) ostream)
  "Serializes a message object of type '<CopyLocationList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source_map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source_map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_map_uuid))
  (cl:let* ((signed (cl:slot-value msg 'floor_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CopyLocationList-request>) istream)
  "Deserializes a message object of type '<CopyLocationList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source_map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source_map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CopyLocationList-request>)))
  "Returns string type for a service object of type '<CopyLocationList-request>"
  "robint_msgs/CopyLocationListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyLocationList-request)))
  "Returns string type for a service object of type 'CopyLocationList-request"
  "robint_msgs/CopyLocationListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CopyLocationList-request>)))
  "Returns md5sum for a message object of type '<CopyLocationList-request>"
  "0302d3157602f7391af07cad52331553")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CopyLocationList-request)))
  "Returns md5sum for a message object of type 'CopyLocationList-request"
  "0302d3157602f7391af07cad52331553")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CopyLocationList-request>)))
  "Returns full string definition for message of type '<CopyLocationList-request>"
  (cl:format cl:nil "string source_map_uuid~%string target_map_uuid~%int32 floor_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CopyLocationList-request)))
  "Returns full string definition for message of type 'CopyLocationList-request"
  (cl:format cl:nil "string source_map_uuid~%string target_map_uuid~%int32 floor_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CopyLocationList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source_map_uuid))
     4 (cl:length (cl:slot-value msg 'target_map_uuid))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CopyLocationList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CopyLocationList-request
    (cl:cons ':source_map_uuid (source_map_uuid msg))
    (cl:cons ':target_map_uuid (target_map_uuid msg))
    (cl:cons ':floor_index (floor_index msg))
))
;//! \htmlinclude CopyLocationList-response.msg.html

(cl:defclass <CopyLocationList-response> (roslisp-msg-protocol:ros-message)
  ((success
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

(cl:defclass CopyLocationList-response (<CopyLocationList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CopyLocationList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CopyLocationList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CopyLocationList-response> is deprecated: use robint_msgs-srv:CopyLocationList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CopyLocationList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CopyLocationList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CopyLocationList-response>) ostream)
  "Serializes a message object of type '<CopyLocationList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CopyLocationList-response>) istream)
  "Deserializes a message object of type '<CopyLocationList-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CopyLocationList-response>)))
  "Returns string type for a service object of type '<CopyLocationList-response>"
  "robint_msgs/CopyLocationListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyLocationList-response)))
  "Returns string type for a service object of type 'CopyLocationList-response"
  "robint_msgs/CopyLocationListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CopyLocationList-response>)))
  "Returns md5sum for a message object of type '<CopyLocationList-response>"
  "0302d3157602f7391af07cad52331553")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CopyLocationList-response)))
  "Returns md5sum for a message object of type 'CopyLocationList-response"
  "0302d3157602f7391af07cad52331553")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CopyLocationList-response>)))
  "Returns full string definition for message of type '<CopyLocationList-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CopyLocationList-response)))
  "Returns full string definition for message of type 'CopyLocationList-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CopyLocationList-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CopyLocationList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CopyLocationList-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CopyLocationList)))
  'CopyLocationList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CopyLocationList)))
  'CopyLocationList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyLocationList)))
  "Returns string type for a service object of type '<CopyLocationList>"
  "robint_msgs/CopyLocationList")