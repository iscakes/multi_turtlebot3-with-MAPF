; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude GateInfo.msg.html

(cl:defclass <GateInfo> (roslisp-msg-protocol:ros-message)
  ((gate_uuid
    :reader gate_uuid
    :initarg :gate_uuid
    :type cl:string
    :initform "")
   (gate_name
    :reader gate_name
    :initarg :gate_name
    :type cl:string
    :initform "")
   (enter_loc
    :reader enter_loc
    :initarg :enter_loc
    :type robint_msgs-msg:Location
    :initform (cl:make-instance 'robint_msgs-msg:Location))
   (exit_loc
    :reader exit_loc
    :initarg :exit_loc
    :type robint_msgs-msg:Location
    :initform (cl:make-instance 'robint_msgs-msg:Location)))
)

(cl:defclass GateInfo (<GateInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GateInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GateInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<GateInfo> is deprecated: use robint_msgs-msg:GateInfo instead.")))

(cl:ensure-generic-function 'gate_uuid-val :lambda-list '(m))
(cl:defmethod gate_uuid-val ((m <GateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:gate_uuid-val is deprecated.  Use robint_msgs-msg:gate_uuid instead.")
  (gate_uuid m))

(cl:ensure-generic-function 'gate_name-val :lambda-list '(m))
(cl:defmethod gate_name-val ((m <GateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:gate_name-val is deprecated.  Use robint_msgs-msg:gate_name instead.")
  (gate_name m))

(cl:ensure-generic-function 'enter_loc-val :lambda-list '(m))
(cl:defmethod enter_loc-val ((m <GateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:enter_loc-val is deprecated.  Use robint_msgs-msg:enter_loc instead.")
  (enter_loc m))

(cl:ensure-generic-function 'exit_loc-val :lambda-list '(m))
(cl:defmethod exit_loc-val ((m <GateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:exit_loc-val is deprecated.  Use robint_msgs-msg:exit_loc instead.")
  (exit_loc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GateInfo>) ostream)
  "Serializes a message object of type '<GateInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gate_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gate_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gate_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gate_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'enter_loc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'exit_loc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GateInfo>) istream)
  "Deserializes a message object of type '<GateInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gate_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gate_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gate_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gate_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'enter_loc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'exit_loc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GateInfo>)))
  "Returns string type for a message object of type '<GateInfo>"
  "robint_msgs/GateInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GateInfo)))
  "Returns string type for a message object of type 'GateInfo"
  "robint_msgs/GateInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GateInfo>)))
  "Returns md5sum for a message object of type '<GateInfo>"
  "9f859c70d9c22112208cc2c6f33723b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GateInfo)))
  "Returns md5sum for a message object of type 'GateInfo"
  "9f859c70d9c22112208cc2c6f33723b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GateInfo>)))
  "Returns full string definition for message of type '<GateInfo>"
  (cl:format cl:nil "string gate_uuid~%string gate_name~%Location enter_loc~%Location exit_loc~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GateInfo)))
  "Returns full string definition for message of type 'GateInfo"
  (cl:format cl:nil "string gate_uuid~%string gate_name~%Location enter_loc~%Location exit_loc~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GateInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'gate_uuid))
     4 (cl:length (cl:slot-value msg 'gate_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'enter_loc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'exit_loc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GateInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'GateInfo
    (cl:cons ':gate_uuid (gate_uuid msg))
    (cl:cons ':gate_name (gate_name msg))
    (cl:cons ':enter_loc (enter_loc msg))
    (cl:cons ':exit_loc (exit_loc msg))
))
