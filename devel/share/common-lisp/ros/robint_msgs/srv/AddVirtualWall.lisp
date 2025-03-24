; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude AddVirtualWall-request.msg.html

(cl:defclass <AddVirtualWall-request> (roslisp-msg-protocol:ros-message)
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
   (wall
    :reader wall
    :initarg :wall
    :type robint_msgs-msg:VirtualWall
    :initform (cl:make-instance 'robint_msgs-msg:VirtualWall)))
)

(cl:defclass AddVirtualWall-request (<AddVirtualWall-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddVirtualWall-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddVirtualWall-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddVirtualWall-request> is deprecated: use robint_msgs-srv:AddVirtualWall-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <AddVirtualWall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'wall_mode-val :lambda-list '(m))
(cl:defmethod wall_mode-val ((m <AddVirtualWall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:wall_mode-val is deprecated.  Use robint_msgs-srv:wall_mode instead.")
  (wall_mode m))

(cl:ensure-generic-function 'wall-val :lambda-list '(m))
(cl:defmethod wall-val ((m <AddVirtualWall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:wall-val is deprecated.  Use robint_msgs-srv:wall instead.")
  (wall m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AddVirtualWall-request>)))
    "Constants for message type '<AddVirtualWall-request>"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AddVirtualWall-request)))
    "Constants for message type 'AddVirtualWall-request"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddVirtualWall-request>) ostream)
  "Serializes a message object of type '<AddVirtualWall-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wall_mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wall) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddVirtualWall-request>) istream)
  "Deserializes a message object of type '<AddVirtualWall-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wall_mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wall) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddVirtualWall-request>)))
  "Returns string type for a service object of type '<AddVirtualWall-request>"
  "robint_msgs/AddVirtualWallRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddVirtualWall-request)))
  "Returns string type for a service object of type 'AddVirtualWall-request"
  "robint_msgs/AddVirtualWallRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddVirtualWall-request>)))
  "Returns md5sum for a message object of type '<AddVirtualWall-request>"
  "3a1852c1238db68b4147612cc61f0fdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddVirtualWall-request)))
  "Returns md5sum for a message object of type 'AddVirtualWall-request"
  "3a1852c1238db68b4147612cc61f0fdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddVirtualWall-request>)))
  "Returns full string definition for message of type '<AddVirtualWall-request>"
  (cl:format cl:nil "string map_name~%uint8 wall_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%VirtualWall wall~%~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddVirtualWall-request)))
  "Returns full string definition for message of type 'AddVirtualWall-request"
  (cl:format cl:nil "string map_name~%uint8 wall_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%VirtualWall wall~%~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddVirtualWall-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wall))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddVirtualWall-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddVirtualWall-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':wall_mode (wall_mode msg))
    (cl:cons ':wall (wall msg))
))
;//! \htmlinclude AddVirtualWall-response.msg.html

(cl:defclass <AddVirtualWall-response> (roslisp-msg-protocol:ros-message)
  ((success
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

(cl:defclass AddVirtualWall-response (<AddVirtualWall-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddVirtualWall-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddVirtualWall-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddVirtualWall-response> is deprecated: use robint_msgs-srv:AddVirtualWall-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddVirtualWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <AddVirtualWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddVirtualWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddVirtualWall-response>) ostream)
  "Serializes a message object of type '<AddVirtualWall-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddVirtualWall-response>) istream)
  "Deserializes a message object of type '<AddVirtualWall-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddVirtualWall-response>)))
  "Returns string type for a service object of type '<AddVirtualWall-response>"
  "robint_msgs/AddVirtualWallResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddVirtualWall-response)))
  "Returns string type for a service object of type 'AddVirtualWall-response"
  "robint_msgs/AddVirtualWallResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddVirtualWall-response>)))
  "Returns md5sum for a message object of type '<AddVirtualWall-response>"
  "3a1852c1238db68b4147612cc61f0fdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddVirtualWall-response)))
  "Returns md5sum for a message object of type 'AddVirtualWall-response"
  "3a1852c1238db68b4147612cc61f0fdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddVirtualWall-response>)))
  "Returns full string definition for message of type '<AddVirtualWall-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddVirtualWall-response)))
  "Returns full string definition for message of type 'AddVirtualWall-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddVirtualWall-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddVirtualWall-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddVirtualWall-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddVirtualWall)))
  'AddVirtualWall-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddVirtualWall)))
  'AddVirtualWall-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddVirtualWall)))
  "Returns string type for a service object of type '<AddVirtualWall>"
  "robint_msgs/AddVirtualWall")