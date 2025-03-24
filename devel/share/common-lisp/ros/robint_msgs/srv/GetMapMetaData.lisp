; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetMapMetaData-request.msg.html

(cl:defclass <GetMapMetaData-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetMapMetaData-request (<GetMapMetaData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapMetaData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapMetaData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetMapMetaData-request> is deprecated: use robint_msgs-srv:GetMapMetaData-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <GetMapMetaData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapMetaData-request>) ostream)
  "Serializes a message object of type '<GetMapMetaData-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapMetaData-request>) istream)
  "Deserializes a message object of type '<GetMapMetaData-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapMetaData-request>)))
  "Returns string type for a service object of type '<GetMapMetaData-request>"
  "robint_msgs/GetMapMetaDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapMetaData-request)))
  "Returns string type for a service object of type 'GetMapMetaData-request"
  "robint_msgs/GetMapMetaDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapMetaData-request>)))
  "Returns md5sum for a message object of type '<GetMapMetaData-request>"
  "4b57def2d4ddfc8e6f492e3341a1f1ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapMetaData-request)))
  "Returns md5sum for a message object of type 'GetMapMetaData-request"
  "4b57def2d4ddfc8e6f492e3341a1f1ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapMetaData-request>)))
  "Returns full string definition for message of type '<GetMapMetaData-request>"
  (cl:format cl:nil "string map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapMetaData-request)))
  "Returns full string definition for message of type 'GetMapMetaData-request"
  (cl:format cl:nil "string map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapMetaData-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapMetaData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapMetaData-request
    (cl:cons ':map_name (map_name msg))
))
;//! \htmlinclude GetMapMetaData-response.msg.html

(cl:defclass <GetMapMetaData-response> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type nav_msgs-msg:MapMetaData
    :initform (cl:make-instance 'nav_msgs-msg:MapMetaData))
   (success
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

(cl:defclass GetMapMetaData-response (<GetMapMetaData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapMetaData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapMetaData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetMapMetaData-response> is deprecated: use robint_msgs-srv:GetMapMetaData-response instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <GetMapMetaData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:info-val is deprecated.  Use robint_msgs-srv:info instead.")
  (info m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetMapMetaData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetMapMetaData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapMetaData-response>) ostream)
  "Serializes a message object of type '<GetMapMetaData-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapMetaData-response>) istream)
  "Deserializes a message object of type '<GetMapMetaData-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapMetaData-response>)))
  "Returns string type for a service object of type '<GetMapMetaData-response>"
  "robint_msgs/GetMapMetaDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapMetaData-response)))
  "Returns string type for a service object of type 'GetMapMetaData-response"
  "robint_msgs/GetMapMetaDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapMetaData-response>)))
  "Returns md5sum for a message object of type '<GetMapMetaData-response>"
  "4b57def2d4ddfc8e6f492e3341a1f1ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapMetaData-response)))
  "Returns md5sum for a message object of type 'GetMapMetaData-response"
  "4b57def2d4ddfc8e6f492e3341a1f1ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapMetaData-response>)))
  "Returns full string definition for message of type '<GetMapMetaData-response>"
  (cl:format cl:nil "nav_msgs/MapMetaData info~%bool success~%string message~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapMetaData-response)))
  "Returns full string definition for message of type 'GetMapMetaData-response"
  (cl:format cl:nil "nav_msgs/MapMetaData info~%bool success~%string message~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapMetaData-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapMetaData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapMetaData-response
    (cl:cons ':info (info msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMapMetaData)))
  'GetMapMetaData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMapMetaData)))
  'GetMapMetaData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapMetaData)))
  "Returns string type for a service object of type '<GetMapMetaData>"
  "robint_msgs/GetMapMetaData")