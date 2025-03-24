; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetZone-request.msg.html

(cl:defclass <GetZone-request> (roslisp-msg-protocol:ros-message)
  ((zone_uuid
    :reader zone_uuid
    :initarg :zone_uuid
    :type cl:string
    :initform "")
   (zone_mode
    :reader zone_mode
    :initarg :zone_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetZone-request (<GetZone-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetZone-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetZone-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetZone-request> is deprecated: use robint_msgs-srv:GetZone-request instead.")))

(cl:ensure-generic-function 'zone_uuid-val :lambda-list '(m))
(cl:defmethod zone_uuid-val ((m <GetZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:zone_uuid-val is deprecated.  Use robint_msgs-srv:zone_uuid instead.")
  (zone_uuid m))

(cl:ensure-generic-function 'zone_mode-val :lambda-list '(m))
(cl:defmethod zone_mode-val ((m <GetZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:zone_mode-val is deprecated.  Use robint_msgs-srv:zone_mode instead.")
  (zone_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetZone-request>)))
    "Constants for message type '<GetZone-request>"
  '((:IMAGE . 0)
    (:WORLD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetZone-request)))
    "Constants for message type 'GetZone-request"
  '((:IMAGE . 0)
    (:WORLD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetZone-request>) ostream)
  "Serializes a message object of type '<GetZone-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'zone_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'zone_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'zone_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetZone-request>) istream)
  "Deserializes a message object of type '<GetZone-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zone_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'zone_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'zone_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetZone-request>)))
  "Returns string type for a service object of type '<GetZone-request>"
  "robint_msgs/GetZoneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetZone-request)))
  "Returns string type for a service object of type 'GetZone-request"
  "robint_msgs/GetZoneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetZone-request>)))
  "Returns md5sum for a message object of type '<GetZone-request>"
  "3e8c73a28008489ea806c0e13cd661f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetZone-request)))
  "Returns md5sum for a message object of type 'GetZone-request"
  "3e8c73a28008489ea806c0e13cd661f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetZone-request>)))
  "Returns full string definition for message of type '<GetZone-request>"
  (cl:format cl:nil "string zone_uuid~%uint8 zone_mode~%uint8 IMAGE=0~%uint8 WORLD=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetZone-request)))
  "Returns full string definition for message of type 'GetZone-request"
  (cl:format cl:nil "string zone_uuid~%uint8 zone_mode~%uint8 IMAGE=0~%uint8 WORLD=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetZone-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'zone_uuid))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetZone-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetZone-request
    (cl:cons ':zone_uuid (zone_uuid msg))
    (cl:cons ':zone_mode (zone_mode msg))
))
;//! \htmlinclude GetZone-response.msg.html

(cl:defclass <GetZone-response> (roslisp-msg-protocol:ros-message)
  ((zone
    :reader zone
    :initarg :zone
    :type robint_msgs-msg:Zone
    :initform (cl:make-instance 'robint_msgs-msg:Zone))
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

(cl:defclass GetZone-response (<GetZone-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetZone-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetZone-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetZone-response> is deprecated: use robint_msgs-srv:GetZone-response instead.")))

(cl:ensure-generic-function 'zone-val :lambda-list '(m))
(cl:defmethod zone-val ((m <GetZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:zone-val is deprecated.  Use robint_msgs-srv:zone instead.")
  (zone m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetZone-response>) ostream)
  "Serializes a message object of type '<GetZone-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'zone) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetZone-response>) istream)
  "Deserializes a message object of type '<GetZone-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'zone) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetZone-response>)))
  "Returns string type for a service object of type '<GetZone-response>"
  "robint_msgs/GetZoneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetZone-response)))
  "Returns string type for a service object of type 'GetZone-response"
  "robint_msgs/GetZoneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetZone-response>)))
  "Returns md5sum for a message object of type '<GetZone-response>"
  "3e8c73a28008489ea806c0e13cd661f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetZone-response)))
  "Returns md5sum for a message object of type 'GetZone-response"
  "3e8c73a28008489ea806c0e13cd661f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetZone-response>)))
  "Returns full string definition for message of type '<GetZone-response>"
  (cl:format cl:nil "Zone zone~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetZone-response)))
  "Returns full string definition for message of type 'GetZone-response"
  (cl:format cl:nil "Zone zone~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetZone-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'zone))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetZone-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetZone-response
    (cl:cons ':zone (zone msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetZone)))
  'GetZone-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetZone)))
  'GetZone-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetZone)))
  "Returns string type for a service object of type '<GetZone>"
  "robint_msgs/GetZone")