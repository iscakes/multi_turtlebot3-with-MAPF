; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude AddVirtualWallList-request.msg.html

(cl:defclass <AddVirtualWallList-request> (roslisp-msg-protocol:ros-message)
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
    :initform "")
   (wall_list
    :reader wall_list
    :initarg :wall_list
    :type (cl:vector robint_msgs-msg:VirtualWall)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:VirtualWall :initial-element (cl:make-instance 'robint_msgs-msg:VirtualWall))))
)

(cl:defclass AddVirtualWallList-request (<AddVirtualWallList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddVirtualWallList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddVirtualWallList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddVirtualWallList-request> is deprecated: use robint_msgs-srv:AddVirtualWallList-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <AddVirtualWallList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'wall_mode-val :lambda-list '(m))
(cl:defmethod wall_mode-val ((m <AddVirtualWallList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:wall_mode-val is deprecated.  Use robint_msgs-srv:wall_mode instead.")
  (wall_mode m))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <AddVirtualWallList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'wall_list-val :lambda-list '(m))
(cl:defmethod wall_list-val ((m <AddVirtualWallList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:wall_list-val is deprecated.  Use robint_msgs-srv:wall_list instead.")
  (wall_list m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AddVirtualWallList-request>)))
    "Constants for message type '<AddVirtualWallList-request>"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AddVirtualWallList-request)))
    "Constants for message type 'AddVirtualWallList-request"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddVirtualWallList-request>) ostream)
  "Serializes a message object of type '<AddVirtualWallList-request>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wall_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wall_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddVirtualWallList-request>) istream)
  "Deserializes a message object of type '<AddVirtualWallList-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddVirtualWallList-request>)))
  "Returns string type for a service object of type '<AddVirtualWallList-request>"
  "robint_msgs/AddVirtualWallListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddVirtualWallList-request)))
  "Returns string type for a service object of type 'AddVirtualWallList-request"
  "robint_msgs/AddVirtualWallListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddVirtualWallList-request>)))
  "Returns md5sum for a message object of type '<AddVirtualWallList-request>"
  "ff80a94140a7d80f384e6be93d5f2838")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddVirtualWallList-request)))
  "Returns md5sum for a message object of type 'AddVirtualWallList-request"
  "ff80a94140a7d80f384e6be93d5f2838")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddVirtualWallList-request>)))
  "Returns full string definition for message of type '<AddVirtualWallList-request>"
  (cl:format cl:nil "string map_name~%uint8 wall_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%string map_uuid~%VirtualWall[] wall_list~%~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddVirtualWallList-request)))
  "Returns full string definition for message of type 'AddVirtualWallList-request"
  (cl:format cl:nil "string map_name~%uint8 wall_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%string map_uuid~%VirtualWall[] wall_list~%~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddVirtualWallList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     1
     4 (cl:length (cl:slot-value msg 'map_uuid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wall_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddVirtualWallList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddVirtualWallList-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':wall_mode (wall_mode msg))
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':wall_list (wall_list msg))
))
;//! \htmlinclude AddVirtualWallList-response.msg.html

(cl:defclass <AddVirtualWallList-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AddVirtualWallList-response (<AddVirtualWallList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddVirtualWallList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddVirtualWallList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddVirtualWallList-response> is deprecated: use robint_msgs-srv:AddVirtualWallList-response instead.")))

(cl:ensure-generic-function 'wall_list-val :lambda-list '(m))
(cl:defmethod wall_list-val ((m <AddVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:wall_list-val is deprecated.  Use robint_msgs-srv:wall_list instead.")
  (wall_list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <AddVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddVirtualWallList-response>) ostream)
  "Serializes a message object of type '<AddVirtualWallList-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddVirtualWallList-response>) istream)
  "Deserializes a message object of type '<AddVirtualWallList-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddVirtualWallList-response>)))
  "Returns string type for a service object of type '<AddVirtualWallList-response>"
  "robint_msgs/AddVirtualWallListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddVirtualWallList-response)))
  "Returns string type for a service object of type 'AddVirtualWallList-response"
  "robint_msgs/AddVirtualWallListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddVirtualWallList-response>)))
  "Returns md5sum for a message object of type '<AddVirtualWallList-response>"
  "ff80a94140a7d80f384e6be93d5f2838")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddVirtualWallList-response)))
  "Returns md5sum for a message object of type 'AddVirtualWallList-response"
  "ff80a94140a7d80f384e6be93d5f2838")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddVirtualWallList-response>)))
  "Returns full string definition for message of type '<AddVirtualWallList-response>"
  (cl:format cl:nil "VirtualWall[] wall_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddVirtualWallList-response)))
  "Returns full string definition for message of type 'AddVirtualWallList-response"
  (cl:format cl:nil "VirtualWall[] wall_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddVirtualWallList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wall_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddVirtualWallList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddVirtualWallList-response
    (cl:cons ':wall_list (wall_list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddVirtualWallList)))
  'AddVirtualWallList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddVirtualWallList)))
  'AddVirtualWallList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddVirtualWallList)))
  "Returns string type for a service object of type '<AddVirtualWallList>"
  "robint_msgs/AddVirtualWallList")