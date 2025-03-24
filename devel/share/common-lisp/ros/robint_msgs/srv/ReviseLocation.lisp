; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude ReviseLocation-request.msg.html

(cl:defclass <ReviseLocation-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (original_location_name
    :reader original_location_name
    :initarg :original_location_name
    :type cl:string
    :initform "")
   (revise_type
    :reader revise_type
    :initarg :revise_type
    :type cl:fixnum
    :initform 0)
   (location
    :reader location
    :initarg :location
    :type robint_msgs-msg:Location
    :initform (cl:make-instance 'robint_msgs-msg:Location)))
)

(cl:defclass ReviseLocation-request (<ReviseLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReviseLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReviseLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ReviseLocation-request> is deprecated: use robint_msgs-srv:ReviseLocation-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <ReviseLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'original_location_name-val :lambda-list '(m))
(cl:defmethod original_location_name-val ((m <ReviseLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:original_location_name-val is deprecated.  Use robint_msgs-srv:original_location_name instead.")
  (original_location_name m))

(cl:ensure-generic-function 'revise_type-val :lambda-list '(m))
(cl:defmethod revise_type-val ((m <ReviseLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:revise_type-val is deprecated.  Use robint_msgs-srv:revise_type instead.")
  (revise_type m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <ReviseLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location-val is deprecated.  Use robint_msgs-srv:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ReviseLocation-request>)))
    "Constants for message type '<ReviseLocation-request>"
  '((:NAME . 0)
    (:MAP . 1)
    (:TYPE . 2)
    (:POSE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ReviseLocation-request)))
    "Constants for message type 'ReviseLocation-request"
  '((:NAME . 0)
    (:MAP . 1)
    (:TYPE . 2)
    (:POSE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReviseLocation-request>) ostream)
  "Serializes a message object of type '<ReviseLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'original_location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'original_location_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'revise_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReviseLocation-request>) istream)
  "Deserializes a message object of type '<ReviseLocation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'original_location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'original_location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'revise_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReviseLocation-request>)))
  "Returns string type for a service object of type '<ReviseLocation-request>"
  "robint_msgs/ReviseLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReviseLocation-request)))
  "Returns string type for a service object of type 'ReviseLocation-request"
  "robint_msgs/ReviseLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReviseLocation-request>)))
  "Returns md5sum for a message object of type '<ReviseLocation-request>"
  "0627acabb367151c8cf033760d2d57ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReviseLocation-request)))
  "Returns md5sum for a message object of type 'ReviseLocation-request"
  "0627acabb367151c8cf033760d2d57ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReviseLocation-request>)))
  "Returns full string definition for message of type '<ReviseLocation-request>"
  (cl:format cl:nil "string map_name~%string original_location_name~%uint8 NAME=0~%uint8 MAP=1~%uint8 TYPE=2~%uint8 POSE=3~%uint8 revise_type~%Location location~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReviseLocation-request)))
  "Returns full string definition for message of type 'ReviseLocation-request"
  (cl:format cl:nil "string map_name~%string original_location_name~%uint8 NAME=0~%uint8 MAP=1~%uint8 TYPE=2~%uint8 POSE=3~%uint8 revise_type~%Location location~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReviseLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'original_location_name))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReviseLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReviseLocation-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':original_location_name (original_location_name msg))
    (cl:cons ':revise_type (revise_type msg))
    (cl:cons ':location (location msg))
))
;//! \htmlinclude ReviseLocation-response.msg.html

(cl:defclass <ReviseLocation-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReviseLocation-response (<ReviseLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReviseLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReviseLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ReviseLocation-response> is deprecated: use robint_msgs-srv:ReviseLocation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ReviseLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReviseLocation-response>) ostream)
  "Serializes a message object of type '<ReviseLocation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReviseLocation-response>) istream)
  "Deserializes a message object of type '<ReviseLocation-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReviseLocation-response>)))
  "Returns string type for a service object of type '<ReviseLocation-response>"
  "robint_msgs/ReviseLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReviseLocation-response)))
  "Returns string type for a service object of type 'ReviseLocation-response"
  "robint_msgs/ReviseLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReviseLocation-response>)))
  "Returns md5sum for a message object of type '<ReviseLocation-response>"
  "0627acabb367151c8cf033760d2d57ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReviseLocation-response)))
  "Returns md5sum for a message object of type 'ReviseLocation-response"
  "0627acabb367151c8cf033760d2d57ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReviseLocation-response>)))
  "Returns full string definition for message of type '<ReviseLocation-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReviseLocation-response)))
  "Returns full string definition for message of type 'ReviseLocation-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReviseLocation-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReviseLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReviseLocation-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReviseLocation)))
  'ReviseLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReviseLocation)))
  'ReviseLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReviseLocation)))
  "Returns string type for a service object of type '<ReviseLocation>"
  "robint_msgs/ReviseLocation")