; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetMapInfo-request.msg.html

(cl:defclass <GetMapInfo-request> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform ""))
)

(cl:defclass GetMapInfo-request (<GetMapInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetMapInfo-request> is deprecated: use robint_msgs-srv:GetMapInfo-request instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <GetMapInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapInfo-request>) ostream)
  "Serializes a message object of type '<GetMapInfo-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapInfo-request>) istream)
  "Deserializes a message object of type '<GetMapInfo-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapInfo-request>)))
  "Returns string type for a service object of type '<GetMapInfo-request>"
  "robint_msgs/GetMapInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapInfo-request)))
  "Returns string type for a service object of type 'GetMapInfo-request"
  "robint_msgs/GetMapInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapInfo-request>)))
  "Returns md5sum for a message object of type '<GetMapInfo-request>"
  "3242f7b3517d79bee0c26d426a06d762")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapInfo-request)))
  "Returns md5sum for a message object of type 'GetMapInfo-request"
  "3242f7b3517d79bee0c26d426a06d762")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapInfo-request>)))
  "Returns full string definition for message of type '<GetMapInfo-request>"
  (cl:format cl:nil "string map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapInfo-request)))
  "Returns full string definition for message of type 'GetMapInfo-request"
  (cl:format cl:nil "string map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapInfo-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapInfo-request
    (cl:cons ':map_uuid (map_uuid msg))
))
;//! \htmlinclude GetMapInfo-response.msg.html

(cl:defclass <GetMapInfo-response> (roslisp-msg-protocol:ros-message)
  ((map_info
    :reader map_info
    :initarg :map_info
    :type robint_msgs-msg:MapInfo
    :initform (cl:make-instance 'robint_msgs-msg:MapInfo))
   (success
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
    :initform ""))
)

(cl:defclass GetMapInfo-response (<GetMapInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetMapInfo-response> is deprecated: use robint_msgs-srv:GetMapInfo-response instead.")))

(cl:ensure-generic-function 'map_info-val :lambda-list '(m))
(cl:defmethod map_info-val ((m <GetMapInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_info-val is deprecated.  Use robint_msgs-srv:map_info instead.")
  (map_info m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetMapInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetMapInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetMapInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapInfo-response>) ostream)
  "Serializes a message object of type '<GetMapInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapInfo-response>) istream)
  "Deserializes a message object of type '<GetMapInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map_info) istream)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapInfo-response>)))
  "Returns string type for a service object of type '<GetMapInfo-response>"
  "robint_msgs/GetMapInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapInfo-response)))
  "Returns string type for a service object of type 'GetMapInfo-response"
  "robint_msgs/GetMapInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapInfo-response>)))
  "Returns md5sum for a message object of type '<GetMapInfo-response>"
  "3242f7b3517d79bee0c26d426a06d762")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapInfo-response)))
  "Returns md5sum for a message object of type 'GetMapInfo-response"
  "3242f7b3517d79bee0c26d426a06d762")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapInfo-response>)))
  "Returns full string definition for message of type '<GetMapInfo-response>"
  (cl:format cl:nil "MapInfo map_info~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/MapInfo~%string uuid~%string name~%string floor_id~%string building_id~%string time~%float32[] origin~%uint32 width~%uint32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapInfo-response)))
  "Returns full string definition for message of type 'GetMapInfo-response"
  (cl:format cl:nil "MapInfo map_info~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/MapInfo~%string uuid~%string name~%string floor_id~%string building_id~%string time~%float32[] origin~%uint32 width~%uint32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_info))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapInfo-response
    (cl:cons ':map_info (map_info msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMapInfo)))
  'GetMapInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMapInfo)))
  'GetMapInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapInfo)))
  "Returns string type for a service object of type '<GetMapInfo>"
  "robint_msgs/GetMapInfo")