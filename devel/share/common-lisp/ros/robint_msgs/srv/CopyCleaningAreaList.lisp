; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude CopyCleaningAreaList-request.msg.html

(cl:defclass <CopyCleaningAreaList-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CopyCleaningAreaList-request (<CopyCleaningAreaList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CopyCleaningAreaList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CopyCleaningAreaList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CopyCleaningAreaList-request> is deprecated: use robint_msgs-srv:CopyCleaningAreaList-request instead.")))

(cl:ensure-generic-function 'source_map_uuid-val :lambda-list '(m))
(cl:defmethod source_map_uuid-val ((m <CopyCleaningAreaList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:source_map_uuid-val is deprecated.  Use robint_msgs-srv:source_map_uuid instead.")
  (source_map_uuid m))

(cl:ensure-generic-function 'target_map_uuid-val :lambda-list '(m))
(cl:defmethod target_map_uuid-val ((m <CopyCleaningAreaList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_map_uuid-val is deprecated.  Use robint_msgs-srv:target_map_uuid instead.")
  (target_map_uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CopyCleaningAreaList-request>) ostream)
  "Serializes a message object of type '<CopyCleaningAreaList-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CopyCleaningAreaList-request>) istream)
  "Deserializes a message object of type '<CopyCleaningAreaList-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CopyCleaningAreaList-request>)))
  "Returns string type for a service object of type '<CopyCleaningAreaList-request>"
  "robint_msgs/CopyCleaningAreaListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyCleaningAreaList-request)))
  "Returns string type for a service object of type 'CopyCleaningAreaList-request"
  "robint_msgs/CopyCleaningAreaListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CopyCleaningAreaList-request>)))
  "Returns md5sum for a message object of type '<CopyCleaningAreaList-request>"
  "8b11985cf92920b4eb79531e78124b68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CopyCleaningAreaList-request)))
  "Returns md5sum for a message object of type 'CopyCleaningAreaList-request"
  "8b11985cf92920b4eb79531e78124b68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CopyCleaningAreaList-request>)))
  "Returns full string definition for message of type '<CopyCleaningAreaList-request>"
  (cl:format cl:nil "string source_map_uuid~%string target_map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CopyCleaningAreaList-request)))
  "Returns full string definition for message of type 'CopyCleaningAreaList-request"
  (cl:format cl:nil "string source_map_uuid~%string target_map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CopyCleaningAreaList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source_map_uuid))
     4 (cl:length (cl:slot-value msg 'target_map_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CopyCleaningAreaList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CopyCleaningAreaList-request
    (cl:cons ':source_map_uuid (source_map_uuid msg))
    (cl:cons ':target_map_uuid (target_map_uuid msg))
))
;//! \htmlinclude CopyCleaningAreaList-response.msg.html

(cl:defclass <CopyCleaningAreaList-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CopyCleaningAreaList-response (<CopyCleaningAreaList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CopyCleaningAreaList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CopyCleaningAreaList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CopyCleaningAreaList-response> is deprecated: use robint_msgs-srv:CopyCleaningAreaList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CopyCleaningAreaList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CopyCleaningAreaList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CopyCleaningAreaList-response>) ostream)
  "Serializes a message object of type '<CopyCleaningAreaList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CopyCleaningAreaList-response>) istream)
  "Deserializes a message object of type '<CopyCleaningAreaList-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CopyCleaningAreaList-response>)))
  "Returns string type for a service object of type '<CopyCleaningAreaList-response>"
  "robint_msgs/CopyCleaningAreaListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyCleaningAreaList-response)))
  "Returns string type for a service object of type 'CopyCleaningAreaList-response"
  "robint_msgs/CopyCleaningAreaListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CopyCleaningAreaList-response>)))
  "Returns md5sum for a message object of type '<CopyCleaningAreaList-response>"
  "8b11985cf92920b4eb79531e78124b68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CopyCleaningAreaList-response)))
  "Returns md5sum for a message object of type 'CopyCleaningAreaList-response"
  "8b11985cf92920b4eb79531e78124b68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CopyCleaningAreaList-response>)))
  "Returns full string definition for message of type '<CopyCleaningAreaList-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CopyCleaningAreaList-response)))
  "Returns full string definition for message of type 'CopyCleaningAreaList-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CopyCleaningAreaList-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CopyCleaningAreaList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CopyCleaningAreaList-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CopyCleaningAreaList)))
  'CopyCleaningAreaList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CopyCleaningAreaList)))
  'CopyCleaningAreaList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyCleaningAreaList)))
  "Returns string type for a service object of type '<CopyCleaningAreaList>"
  "robint_msgs/CopyCleaningAreaList")