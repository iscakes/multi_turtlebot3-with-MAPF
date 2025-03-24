; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GateControlCommand-request.msg.html

(cl:defclass <GateControlCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (location
    :reader location
    :initarg :location
    :type robint_msgs-msg:Location
    :initform (cl:make-instance 'robint_msgs-msg:Location)))
)

(cl:defclass GateControlCommand-request (<GateControlCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GateControlCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GateControlCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GateControlCommand-request> is deprecated: use robint_msgs-srv:GateControlCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <GateControlCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <GateControlCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location-val is deprecated.  Use robint_msgs-srv:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GateControlCommand-request>)))
    "Constants for message type '<GateControlCommand-request>"
  '((:OPEN . 0)
    (:CLOSE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GateControlCommand-request)))
    "Constants for message type 'GateControlCommand-request"
  '((:OPEN . 0)
    (:CLOSE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GateControlCommand-request>) ostream)
  "Serializes a message object of type '<GateControlCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GateControlCommand-request>) istream)
  "Deserializes a message object of type '<GateControlCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GateControlCommand-request>)))
  "Returns string type for a service object of type '<GateControlCommand-request>"
  "robint_msgs/GateControlCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GateControlCommand-request)))
  "Returns string type for a service object of type 'GateControlCommand-request"
  "robint_msgs/GateControlCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GateControlCommand-request>)))
  "Returns md5sum for a message object of type '<GateControlCommand-request>"
  "5cf0b0843f728a3a674f23f4e1bcb627")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GateControlCommand-request)))
  "Returns md5sum for a message object of type 'GateControlCommand-request"
  "5cf0b0843f728a3a674f23f4e1bcb627")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GateControlCommand-request>)))
  "Returns full string definition for message of type '<GateControlCommand-request>"
  (cl:format cl:nil "uint8 command       # 'OPEN', 'CLOSE',~%uint8 OPEN=0~%uint8 CLOSE=1~%Location location~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GateControlCommand-request)))
  "Returns full string definition for message of type 'GateControlCommand-request"
  (cl:format cl:nil "uint8 command       # 'OPEN', 'CLOSE',~%uint8 OPEN=0~%uint8 CLOSE=1~%Location location~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GateControlCommand-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GateControlCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GateControlCommand-request
    (cl:cons ':command (command msg))
    (cl:cons ':location (location msg))
))
;//! \htmlinclude GateControlCommand-response.msg.html

(cl:defclass <GateControlCommand-response> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:string
    :initform "")
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

(cl:defclass GateControlCommand-response (<GateControlCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GateControlCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GateControlCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GateControlCommand-response> is deprecated: use robint_msgs-srv:GateControlCommand-response instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <GateControlCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:task_id-val is deprecated.  Use robint_msgs-srv:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GateControlCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GateControlCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GateControlCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GateControlCommand-response>) ostream)
  "Serializes a message object of type '<GateControlCommand-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GateControlCommand-response>) istream)
  "Deserializes a message object of type '<GateControlCommand-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GateControlCommand-response>)))
  "Returns string type for a service object of type '<GateControlCommand-response>"
  "robint_msgs/GateControlCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GateControlCommand-response)))
  "Returns string type for a service object of type 'GateControlCommand-response"
  "robint_msgs/GateControlCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GateControlCommand-response>)))
  "Returns md5sum for a message object of type '<GateControlCommand-response>"
  "5cf0b0843f728a3a674f23f4e1bcb627")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GateControlCommand-response)))
  "Returns md5sum for a message object of type 'GateControlCommand-response"
  "5cf0b0843f728a3a674f23f4e1bcb627")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GateControlCommand-response>)))
  "Returns full string definition for message of type '<GateControlCommand-response>"
  (cl:format cl:nil "string task_id~%bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GateControlCommand-response)))
  "Returns full string definition for message of type 'GateControlCommand-response"
  (cl:format cl:nil "string task_id~%bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GateControlCommand-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_id))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GateControlCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GateControlCommand-response
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GateControlCommand)))
  'GateControlCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GateControlCommand)))
  'GateControlCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GateControlCommand)))
  "Returns string type for a service object of type '<GateControlCommand>"
  "robint_msgs/GateControlCommand")