; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude ReviseVirtualWall-request.msg.html

(cl:defclass <ReviseVirtualWall-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (wall
    :reader wall
    :initarg :wall
    :type robint_msgs-msg:VirtualWall
    :initform (cl:make-instance 'robint_msgs-msg:VirtualWall)))
)

(cl:defclass ReviseVirtualWall-request (<ReviseVirtualWall-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReviseVirtualWall-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReviseVirtualWall-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ReviseVirtualWall-request> is deprecated: use robint_msgs-srv:ReviseVirtualWall-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <ReviseVirtualWall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'wall-val :lambda-list '(m))
(cl:defmethod wall-val ((m <ReviseVirtualWall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:wall-val is deprecated.  Use robint_msgs-srv:wall instead.")
  (wall m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReviseVirtualWall-request>) ostream)
  "Serializes a message object of type '<ReviseVirtualWall-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wall) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReviseVirtualWall-request>) istream)
  "Deserializes a message object of type '<ReviseVirtualWall-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wall) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReviseVirtualWall-request>)))
  "Returns string type for a service object of type '<ReviseVirtualWall-request>"
  "robint_msgs/ReviseVirtualWallRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReviseVirtualWall-request)))
  "Returns string type for a service object of type 'ReviseVirtualWall-request"
  "robint_msgs/ReviseVirtualWallRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReviseVirtualWall-request>)))
  "Returns md5sum for a message object of type '<ReviseVirtualWall-request>"
  "627f869a116b5a2b19b826607f45fdb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReviseVirtualWall-request)))
  "Returns md5sum for a message object of type 'ReviseVirtualWall-request"
  "627f869a116b5a2b19b826607f45fdb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReviseVirtualWall-request>)))
  "Returns full string definition for message of type '<ReviseVirtualWall-request>"
  (cl:format cl:nil "string map_name~%VirtualWall wall~%~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReviseVirtualWall-request)))
  "Returns full string definition for message of type 'ReviseVirtualWall-request"
  (cl:format cl:nil "string map_name~%VirtualWall wall~%~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReviseVirtualWall-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wall))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReviseVirtualWall-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReviseVirtualWall-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':wall (wall msg))
))
;//! \htmlinclude ReviseVirtualWall-response.msg.html

(cl:defclass <ReviseVirtualWall-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ReviseVirtualWall-response (<ReviseVirtualWall-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReviseVirtualWall-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReviseVirtualWall-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ReviseVirtualWall-response> is deprecated: use robint_msgs-srv:ReviseVirtualWall-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ReviseVirtualWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ReviseVirtualWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReviseVirtualWall-response>) ostream)
  "Serializes a message object of type '<ReviseVirtualWall-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReviseVirtualWall-response>) istream)
  "Deserializes a message object of type '<ReviseVirtualWall-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReviseVirtualWall-response>)))
  "Returns string type for a service object of type '<ReviseVirtualWall-response>"
  "robint_msgs/ReviseVirtualWallResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReviseVirtualWall-response)))
  "Returns string type for a service object of type 'ReviseVirtualWall-response"
  "robint_msgs/ReviseVirtualWallResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReviseVirtualWall-response>)))
  "Returns md5sum for a message object of type '<ReviseVirtualWall-response>"
  "627f869a116b5a2b19b826607f45fdb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReviseVirtualWall-response)))
  "Returns md5sum for a message object of type 'ReviseVirtualWall-response"
  "627f869a116b5a2b19b826607f45fdb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReviseVirtualWall-response>)))
  "Returns full string definition for message of type '<ReviseVirtualWall-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReviseVirtualWall-response)))
  "Returns full string definition for message of type 'ReviseVirtualWall-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReviseVirtualWall-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReviseVirtualWall-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReviseVirtualWall-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReviseVirtualWall)))
  'ReviseVirtualWall-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReviseVirtualWall)))
  'ReviseVirtualWall-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReviseVirtualWall)))
  "Returns string type for a service object of type '<ReviseVirtualWall>"
  "robint_msgs/ReviseVirtualWall")