; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetZoneList-request.msg.html

(cl:defclass <GetZoneList-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (zone_mode
    :reader zone_mode
    :initarg :zone_mode
    :type cl:fixnum
    :initform 0)
   (map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform ""))
)

(cl:defclass GetZoneList-request (<GetZoneList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetZoneList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetZoneList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetZoneList-request> is deprecated: use robint_msgs-srv:GetZoneList-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <GetZoneList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'zone_mode-val :lambda-list '(m))
(cl:defmethod zone_mode-val ((m <GetZoneList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:zone_mode-val is deprecated.  Use robint_msgs-srv:zone_mode instead.")
  (zone_mode m))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <GetZoneList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetZoneList-request>)))
    "Constants for message type '<GetZoneList-request>"
  '((:IMAGE . 0)
    (:WORLD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetZoneList-request)))
    "Constants for message type 'GetZoneList-request"
  '((:IMAGE . 0)
    (:WORLD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetZoneList-request>) ostream)
  "Serializes a message object of type '<GetZoneList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'zone_mode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetZoneList-request>) istream)
  "Deserializes a message object of type '<GetZoneList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'zone_mode)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetZoneList-request>)))
  "Returns string type for a service object of type '<GetZoneList-request>"
  "robint_msgs/GetZoneListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetZoneList-request)))
  "Returns string type for a service object of type 'GetZoneList-request"
  "robint_msgs/GetZoneListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetZoneList-request>)))
  "Returns md5sum for a message object of type '<GetZoneList-request>"
  "ab629fb1e78a810c21a70e1be1adccea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetZoneList-request)))
  "Returns md5sum for a message object of type 'GetZoneList-request"
  "ab629fb1e78a810c21a70e1be1adccea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetZoneList-request>)))
  "Returns full string definition for message of type '<GetZoneList-request>"
  (cl:format cl:nil "string map_name~%uint8 zone_mode~%uint8 IMAGE=0~%uint8 WORLD=1~%string map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetZoneList-request)))
  "Returns full string definition for message of type 'GetZoneList-request"
  (cl:format cl:nil "string map_name~%uint8 zone_mode~%uint8 IMAGE=0~%uint8 WORLD=1~%string map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetZoneList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     1
     4 (cl:length (cl:slot-value msg 'map_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetZoneList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetZoneList-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':zone_mode (zone_mode msg))
    (cl:cons ':map_uuid (map_uuid msg))
))
;//! \htmlinclude GetZoneList-response.msg.html

(cl:defclass <GetZoneList-response> (roslisp-msg-protocol:ros-message)
  ((zone_list
    :reader zone_list
    :initarg :zone_list
    :type (cl:vector robint_msgs-msg:Zone)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:Zone :initial-element (cl:make-instance 'robint_msgs-msg:Zone)))
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

(cl:defclass GetZoneList-response (<GetZoneList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetZoneList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetZoneList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetZoneList-response> is deprecated: use robint_msgs-srv:GetZoneList-response instead.")))

(cl:ensure-generic-function 'zone_list-val :lambda-list '(m))
(cl:defmethod zone_list-val ((m <GetZoneList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:zone_list-val is deprecated.  Use robint_msgs-srv:zone_list instead.")
  (zone_list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetZoneList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetZoneList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetZoneList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetZoneList-response>) ostream)
  "Serializes a message object of type '<GetZoneList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'zone_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'zone_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetZoneList-response>) istream)
  "Deserializes a message object of type '<GetZoneList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'zone_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'zone_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:Zone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetZoneList-response>)))
  "Returns string type for a service object of type '<GetZoneList-response>"
  "robint_msgs/GetZoneListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetZoneList-response)))
  "Returns string type for a service object of type 'GetZoneList-response"
  "robint_msgs/GetZoneListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetZoneList-response>)))
  "Returns md5sum for a message object of type '<GetZoneList-response>"
  "ab629fb1e78a810c21a70e1be1adccea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetZoneList-response)))
  "Returns md5sum for a message object of type 'GetZoneList-response"
  "ab629fb1e78a810c21a70e1be1adccea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetZoneList-response>)))
  "Returns full string definition for message of type '<GetZoneList-response>"
  (cl:format cl:nil "Zone[] zone_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetZoneList-response)))
  "Returns full string definition for message of type 'GetZoneList-response"
  (cl:format cl:nil "Zone[] zone_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetZoneList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'zone_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetZoneList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetZoneList-response
    (cl:cons ':zone_list (zone_list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetZoneList)))
  'GetZoneList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetZoneList)))
  'GetZoneList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetZoneList)))
  "Returns string type for a service object of type '<GetZoneList>"
  "robint_msgs/GetZoneList")