; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetCurrentMapInfo-request.msg.html

(cl:defclass <GetCurrentMapInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCurrentMapInfo-request (<GetCurrentMapInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentMapInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentMapInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCurrentMapInfo-request> is deprecated: use robint_msgs-srv:GetCurrentMapInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentMapInfo-request>) ostream)
  "Serializes a message object of type '<GetCurrentMapInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentMapInfo-request>) istream)
  "Deserializes a message object of type '<GetCurrentMapInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentMapInfo-request>)))
  "Returns string type for a service object of type '<GetCurrentMapInfo-request>"
  "robint_msgs/GetCurrentMapInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentMapInfo-request)))
  "Returns string type for a service object of type 'GetCurrentMapInfo-request"
  "robint_msgs/GetCurrentMapInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentMapInfo-request>)))
  "Returns md5sum for a message object of type '<GetCurrentMapInfo-request>"
  "130d1545ef98bef7c80e6aae666b48f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentMapInfo-request)))
  "Returns md5sum for a message object of type 'GetCurrentMapInfo-request"
  "130d1545ef98bef7c80e6aae666b48f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentMapInfo-request>)))
  "Returns full string definition for message of type '<GetCurrentMapInfo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentMapInfo-request)))
  "Returns full string definition for message of type 'GetCurrentMapInfo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentMapInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentMapInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentMapInfo-request
))
;//! \htmlinclude GetCurrentMapInfo-response.msg.html

(cl:defclass <GetCurrentMapInfo-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetCurrentMapInfo-response (<GetCurrentMapInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentMapInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentMapInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCurrentMapInfo-response> is deprecated: use robint_msgs-srv:GetCurrentMapInfo-response instead.")))

(cl:ensure-generic-function 'map_info-val :lambda-list '(m))
(cl:defmethod map_info-val ((m <GetCurrentMapInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_info-val is deprecated.  Use robint_msgs-srv:map_info instead.")
  (map_info m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCurrentMapInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetCurrentMapInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetCurrentMapInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentMapInfo-response>) ostream)
  "Serializes a message object of type '<GetCurrentMapInfo-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentMapInfo-response>) istream)
  "Deserializes a message object of type '<GetCurrentMapInfo-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentMapInfo-response>)))
  "Returns string type for a service object of type '<GetCurrentMapInfo-response>"
  "robint_msgs/GetCurrentMapInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentMapInfo-response)))
  "Returns string type for a service object of type 'GetCurrentMapInfo-response"
  "robint_msgs/GetCurrentMapInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentMapInfo-response>)))
  "Returns md5sum for a message object of type '<GetCurrentMapInfo-response>"
  "130d1545ef98bef7c80e6aae666b48f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentMapInfo-response)))
  "Returns md5sum for a message object of type 'GetCurrentMapInfo-response"
  "130d1545ef98bef7c80e6aae666b48f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentMapInfo-response>)))
  "Returns full string definition for message of type '<GetCurrentMapInfo-response>"
  (cl:format cl:nil "MapInfo map_info~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/MapInfo~%string uuid~%string name~%string floor_id~%string building_id~%string time~%float32[] origin~%uint32 width~%uint32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentMapInfo-response)))
  "Returns full string definition for message of type 'GetCurrentMapInfo-response"
  (cl:format cl:nil "MapInfo map_info~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/MapInfo~%string uuid~%string name~%string floor_id~%string building_id~%string time~%float32[] origin~%uint32 width~%uint32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentMapInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_info))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentMapInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentMapInfo-response
    (cl:cons ':map_info (map_info msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurrentMapInfo)))
  'GetCurrentMapInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurrentMapInfo)))
  'GetCurrentMapInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentMapInfo)))
  "Returns string type for a service object of type '<GetCurrentMapInfo>"
  "robint_msgs/GetCurrentMapInfo")