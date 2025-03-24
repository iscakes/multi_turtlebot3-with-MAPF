; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude CopyZoneList-request.msg.html

(cl:defclass <CopyZoneList-request> (roslisp-msg-protocol:ros-message)
  ((source_map_uuid
    :reader source_map_uuid
    :initarg :source_map_uuid
    :type cl:string
    :initform "")
   (target_map_uuid
    :reader target_map_uuid
    :initarg :target_map_uuid
    :type cl:string
    :initform ""))
)

(cl:defclass CopyZoneList-request (<CopyZoneList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CopyZoneList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CopyZoneList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CopyZoneList-request> is deprecated: use robint_msgs-srv:CopyZoneList-request instead.")))

(cl:ensure-generic-function 'source_map_uuid-val :lambda-list '(m))
(cl:defmethod source_map_uuid-val ((m <CopyZoneList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:source_map_uuid-val is deprecated.  Use robint_msgs-srv:source_map_uuid instead.")
  (source_map_uuid m))

(cl:ensure-generic-function 'target_map_uuid-val :lambda-list '(m))
(cl:defmethod target_map_uuid-val ((m <CopyZoneList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_map_uuid-val is deprecated.  Use robint_msgs-srv:target_map_uuid instead.")
  (target_map_uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CopyZoneList-request>) ostream)
  "Serializes a message object of type '<CopyZoneList-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CopyZoneList-request>) istream)
  "Deserializes a message object of type '<CopyZoneList-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CopyZoneList-request>)))
  "Returns string type for a service object of type '<CopyZoneList-request>"
  "robint_msgs/CopyZoneListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyZoneList-request)))
  "Returns string type for a service object of type 'CopyZoneList-request"
  "robint_msgs/CopyZoneListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CopyZoneList-request>)))
  "Returns md5sum for a message object of type '<CopyZoneList-request>"
  "8b11985cf92920b4eb79531e78124b68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CopyZoneList-request)))
  "Returns md5sum for a message object of type 'CopyZoneList-request"
  "8b11985cf92920b4eb79531e78124b68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CopyZoneList-request>)))
  "Returns full string definition for message of type '<CopyZoneList-request>"
  (cl:format cl:nil "string source_map_uuid~%string target_map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CopyZoneList-request)))
  "Returns full string definition for message of type 'CopyZoneList-request"
  (cl:format cl:nil "string source_map_uuid~%string target_map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CopyZoneList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source_map_uuid))
     4 (cl:length (cl:slot-value msg 'target_map_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CopyZoneList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CopyZoneList-request
    (cl:cons ':source_map_uuid (source_map_uuid msg))
    (cl:cons ':target_map_uuid (target_map_uuid msg))
))
;//! \htmlinclude CopyZoneList-response.msg.html

(cl:defclass <CopyZoneList-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CopyZoneList-response (<CopyZoneList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CopyZoneList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CopyZoneList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CopyZoneList-response> is deprecated: use robint_msgs-srv:CopyZoneList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CopyZoneList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CopyZoneList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CopyZoneList-response>) ostream)
  "Serializes a message object of type '<CopyZoneList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CopyZoneList-response>) istream)
  "Deserializes a message object of type '<CopyZoneList-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CopyZoneList-response>)))
  "Returns string type for a service object of type '<CopyZoneList-response>"
  "robint_msgs/CopyZoneListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyZoneList-response)))
  "Returns string type for a service object of type 'CopyZoneList-response"
  "robint_msgs/CopyZoneListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CopyZoneList-response>)))
  "Returns md5sum for a message object of type '<CopyZoneList-response>"
  "8b11985cf92920b4eb79531e78124b68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CopyZoneList-response)))
  "Returns md5sum for a message object of type 'CopyZoneList-response"
  "8b11985cf92920b4eb79531e78124b68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CopyZoneList-response>)))
  "Returns full string definition for message of type '<CopyZoneList-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CopyZoneList-response)))
  "Returns full string definition for message of type 'CopyZoneList-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CopyZoneList-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CopyZoneList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CopyZoneList-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CopyZoneList)))
  'CopyZoneList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CopyZoneList)))
  'CopyZoneList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyZoneList)))
  "Returns string type for a service object of type '<CopyZoneList>"
  "robint_msgs/CopyZoneList")