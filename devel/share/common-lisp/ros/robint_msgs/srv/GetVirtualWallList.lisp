; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetVirtualWallList-request.msg.html

(cl:defclass <GetVirtualWallList-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (wall_mode
    :reader wall_mode
    :initarg :wall_mode
    :type cl:fixnum
    :initform 0)
   (map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform ""))
)

(cl:defclass GetVirtualWallList-request (<GetVirtualWallList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVirtualWallList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVirtualWallList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetVirtualWallList-request> is deprecated: use robint_msgs-srv:GetVirtualWallList-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <GetVirtualWallList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'wall_mode-val :lambda-list '(m))
(cl:defmethod wall_mode-val ((m <GetVirtualWallList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:wall_mode-val is deprecated.  Use robint_msgs-srv:wall_mode instead.")
  (wall_mode m))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <GetVirtualWallList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetVirtualWallList-request>)))
    "Constants for message type '<GetVirtualWallList-request>"
  '((:IMAGE . 0)
    (:WORLD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetVirtualWallList-request)))
    "Constants for message type 'GetVirtualWallList-request"
  '((:IMAGE . 0)
    (:WORLD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVirtualWallList-request>) ostream)
  "Serializes a message object of type '<GetVirtualWallList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wall_mode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVirtualWallList-request>) istream)
  "Deserializes a message object of type '<GetVirtualWallList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wall_mode)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVirtualWallList-request>)))
  "Returns string type for a service object of type '<GetVirtualWallList-request>"
  "robint_msgs/GetVirtualWallListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVirtualWallList-request)))
  "Returns string type for a service object of type 'GetVirtualWallList-request"
  "robint_msgs/GetVirtualWallListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVirtualWallList-request>)))
  "Returns md5sum for a message object of type '<GetVirtualWallList-request>"
  "97620b03c4f2a28bcc6888c4a51a4cc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVirtualWallList-request)))
  "Returns md5sum for a message object of type 'GetVirtualWallList-request"
  "97620b03c4f2a28bcc6888c4a51a4cc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVirtualWallList-request>)))
  "Returns full string definition for message of type '<GetVirtualWallList-request>"
  (cl:format cl:nil "string map_name~%uint8 wall_mode~%uint8 IMAGE=0~%uint8 WORLD=1~%string map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVirtualWallList-request)))
  "Returns full string definition for message of type 'GetVirtualWallList-request"
  (cl:format cl:nil "string map_name~%uint8 wall_mode~%uint8 IMAGE=0~%uint8 WORLD=1~%string map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVirtualWallList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     1
     4 (cl:length (cl:slot-value msg 'map_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVirtualWallList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVirtualWallList-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':wall_mode (wall_mode msg))
    (cl:cons ':map_uuid (map_uuid msg))
))
;//! \htmlinclude GetVirtualWallList-response.msg.html

(cl:defclass <GetVirtualWallList-response> (roslisp-msg-protocol:ros-message)
  ((wall_list
    :reader wall_list
    :initarg :wall_list
    :type (cl:vector robint_msgs-msg:VirtualWall)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:VirtualWall :initial-element (cl:make-instance 'robint_msgs-msg:VirtualWall)))
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

(cl:defclass GetVirtualWallList-response (<GetVirtualWallList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVirtualWallList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVirtualWallList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetVirtualWallList-response> is deprecated: use robint_msgs-srv:GetVirtualWallList-response instead.")))

(cl:ensure-generic-function 'wall_list-val :lambda-list '(m))
(cl:defmethod wall_list-val ((m <GetVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:wall_list-val is deprecated.  Use robint_msgs-srv:wall_list instead.")
  (wall_list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVirtualWallList-response>) ostream)
  "Serializes a message object of type '<GetVirtualWallList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wall_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wall_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVirtualWallList-response>) istream)
  "Deserializes a message object of type '<GetVirtualWallList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wall_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wall_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:VirtualWall))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVirtualWallList-response>)))
  "Returns string type for a service object of type '<GetVirtualWallList-response>"
  "robint_msgs/GetVirtualWallListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVirtualWallList-response)))
  "Returns string type for a service object of type 'GetVirtualWallList-response"
  "robint_msgs/GetVirtualWallListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVirtualWallList-response>)))
  "Returns md5sum for a message object of type '<GetVirtualWallList-response>"
  "97620b03c4f2a28bcc6888c4a51a4cc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVirtualWallList-response)))
  "Returns md5sum for a message object of type 'GetVirtualWallList-response"
  "97620b03c4f2a28bcc6888c4a51a4cc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVirtualWallList-response>)))
  "Returns full string definition for message of type '<GetVirtualWallList-response>"
  (cl:format cl:nil "VirtualWall[] wall_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVirtualWallList-response)))
  "Returns full string definition for message of type 'GetVirtualWallList-response"
  (cl:format cl:nil "VirtualWall[] wall_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVirtualWallList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wall_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVirtualWallList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVirtualWallList-response
    (cl:cons ':wall_list (wall_list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVirtualWallList)))
  'GetVirtualWallList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVirtualWallList)))
  'GetVirtualWallList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVirtualWallList)))
  "Returns string type for a service object of type '<GetVirtualWallList>"
  "robint_msgs/GetVirtualWallList")