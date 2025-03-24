; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude CopyMap-request.msg.html

(cl:defclass <CopyMap-request> (roslisp-msg-protocol:ros-message)
  ((source_map_uuid
    :reader source_map_uuid
    :initarg :source_map_uuid
    :type cl:string
    :initform "")
   (target_map_name
    :reader target_map_name
    :initarg :target_map_name
    :type cl:string
    :initform "")
   (target_floor_id
    :reader target_floor_id
    :initarg :target_floor_id
    :type cl:string
    :initform "")
   (target_building_id
    :reader target_building_id
    :initarg :target_building_id
    :type cl:string
    :initform ""))
)

(cl:defclass CopyMap-request (<CopyMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CopyMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CopyMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CopyMap-request> is deprecated: use robint_msgs-srv:CopyMap-request instead.")))

(cl:ensure-generic-function 'source_map_uuid-val :lambda-list '(m))
(cl:defmethod source_map_uuid-val ((m <CopyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:source_map_uuid-val is deprecated.  Use robint_msgs-srv:source_map_uuid instead.")
  (source_map_uuid m))

(cl:ensure-generic-function 'target_map_name-val :lambda-list '(m))
(cl:defmethod target_map_name-val ((m <CopyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_map_name-val is deprecated.  Use robint_msgs-srv:target_map_name instead.")
  (target_map_name m))

(cl:ensure-generic-function 'target_floor_id-val :lambda-list '(m))
(cl:defmethod target_floor_id-val ((m <CopyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_floor_id-val is deprecated.  Use robint_msgs-srv:target_floor_id instead.")
  (target_floor_id m))

(cl:ensure-generic-function 'target_building_id-val :lambda-list '(m))
(cl:defmethod target_building_id-val ((m <CopyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_building_id-val is deprecated.  Use robint_msgs-srv:target_building_id instead.")
  (target_building_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CopyMap-request>) ostream)
  "Serializes a message object of type '<CopyMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source_map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source_map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_floor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_floor_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_building_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_building_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CopyMap-request>) istream)
  "Deserializes a message object of type '<CopyMap-request>"
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
      (cl:setf (cl:slot-value msg 'target_map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_floor_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_floor_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_building_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_building_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CopyMap-request>)))
  "Returns string type for a service object of type '<CopyMap-request>"
  "robint_msgs/CopyMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyMap-request)))
  "Returns string type for a service object of type 'CopyMap-request"
  "robint_msgs/CopyMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CopyMap-request>)))
  "Returns md5sum for a message object of type '<CopyMap-request>"
  "1ace97e6535e79ec46c2b2a38a254a6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CopyMap-request)))
  "Returns md5sum for a message object of type 'CopyMap-request"
  "1ace97e6535e79ec46c2b2a38a254a6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CopyMap-request>)))
  "Returns full string definition for message of type '<CopyMap-request>"
  (cl:format cl:nil "string source_map_uuid~%string target_map_name~%string target_floor_id~%string target_building_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CopyMap-request)))
  "Returns full string definition for message of type 'CopyMap-request"
  (cl:format cl:nil "string source_map_uuid~%string target_map_name~%string target_floor_id~%string target_building_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CopyMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source_map_uuid))
     4 (cl:length (cl:slot-value msg 'target_map_name))
     4 (cl:length (cl:slot-value msg 'target_floor_id))
     4 (cl:length (cl:slot-value msg 'target_building_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CopyMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CopyMap-request
    (cl:cons ':source_map_uuid (source_map_uuid msg))
    (cl:cons ':target_map_name (target_map_name msg))
    (cl:cons ':target_floor_id (target_floor_id msg))
    (cl:cons ':target_building_id (target_building_id msg))
))
;//! \htmlinclude CopyMap-response.msg.html

(cl:defclass <CopyMap-response> (roslisp-msg-protocol:ros-message)
  ((target_map_uuid
    :reader target_map_uuid
    :initarg :target_map_uuid
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

(cl:defclass CopyMap-response (<CopyMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CopyMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CopyMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CopyMap-response> is deprecated: use robint_msgs-srv:CopyMap-response instead.")))

(cl:ensure-generic-function 'target_map_uuid-val :lambda-list '(m))
(cl:defmethod target_map_uuid-val ((m <CopyMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_map_uuid-val is deprecated.  Use robint_msgs-srv:target_map_uuid instead.")
  (target_map_uuid m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CopyMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CopyMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CopyMap-response>) ostream)
  "Serializes a message object of type '<CopyMap-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_map_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CopyMap-response>) istream)
  "Deserializes a message object of type '<CopyMap-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CopyMap-response>)))
  "Returns string type for a service object of type '<CopyMap-response>"
  "robint_msgs/CopyMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyMap-response)))
  "Returns string type for a service object of type 'CopyMap-response"
  "robint_msgs/CopyMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CopyMap-response>)))
  "Returns md5sum for a message object of type '<CopyMap-response>"
  "1ace97e6535e79ec46c2b2a38a254a6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CopyMap-response)))
  "Returns md5sum for a message object of type 'CopyMap-response"
  "1ace97e6535e79ec46c2b2a38a254a6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CopyMap-response>)))
  "Returns full string definition for message of type '<CopyMap-response>"
  (cl:format cl:nil "string target_map_uuid~%bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CopyMap-response)))
  "Returns full string definition for message of type 'CopyMap-response"
  (cl:format cl:nil "string target_map_uuid~%bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CopyMap-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_map_uuid))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CopyMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CopyMap-response
    (cl:cons ':target_map_uuid (target_map_uuid msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CopyMap)))
  'CopyMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CopyMap)))
  'CopyMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CopyMap)))
  "Returns string type for a service object of type '<CopyMap>"
  "robint_msgs/CopyMap")