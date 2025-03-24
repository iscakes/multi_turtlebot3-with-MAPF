; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude JudgeIsolatedZone-request.msg.html

(cl:defclass <JudgeIsolatedZone-request> (roslisp-msg-protocol:ros-message)
  ((task_info
    :reader task_info
    :initarg :task_info
    :type robint_msgs-msg:NavigationTaskInfo
    :initform (cl:make-instance 'robint_msgs-msg:NavigationTaskInfo))
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0))
)

(cl:defclass JudgeIsolatedZone-request (<JudgeIsolatedZone-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JudgeIsolatedZone-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JudgeIsolatedZone-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<JudgeIsolatedZone-request> is deprecated: use robint_msgs-srv:JudgeIsolatedZone-request instead.")))

(cl:ensure-generic-function 'task_info-val :lambda-list '(m))
(cl:defmethod task_info-val ((m <JudgeIsolatedZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:task_info-val is deprecated.  Use robint_msgs-srv:task_info instead.")
  (task_info m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <JudgeIsolatedZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<JudgeIsolatedZone-request>)))
    "Constants for message type '<JudgeIsolatedZone-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'JudgeIsolatedZone-request)))
    "Constants for message type 'JudgeIsolatedZone-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JudgeIsolatedZone-request>) ostream)
  "Serializes a message object of type '<JudgeIsolatedZone-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JudgeIsolatedZone-request>) istream)
  "Deserializes a message object of type '<JudgeIsolatedZone-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_info) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JudgeIsolatedZone-request>)))
  "Returns string type for a service object of type '<JudgeIsolatedZone-request>"
  "robint_msgs/JudgeIsolatedZoneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JudgeIsolatedZone-request)))
  "Returns string type for a service object of type 'JudgeIsolatedZone-request"
  "robint_msgs/JudgeIsolatedZoneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JudgeIsolatedZone-request>)))
  "Returns md5sum for a message object of type '<JudgeIsolatedZone-request>"
  "511ff24d4c9d29b2fb5f70e90296cf3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JudgeIsolatedZone-request)))
  "Returns md5sum for a message object of type 'JudgeIsolatedZone-request"
  "511ff24d4c9d29b2fb5f70e90296cf3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JudgeIsolatedZone-request>)))
  "Returns full string definition for message of type '<JudgeIsolatedZone-request>"
  (cl:format cl:nil "NavigationTaskInfo task_info~%uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%~%================================================================================~%MSG: robint_msgs/NavigationTaskInfo~%string current_map_uuid~%string elevator_building_uuid~%string current_floor_id~%string target_map_uuid~%string target_floor_id~%string target_loc_uuid~%string target_loc_group_uuid~%string enter_elevator_loc_uuid~%string current_elevator_interior_loc_uuid~%string target_elevator_interior_loc_uuid~%string elevator_wait_loc_uuid~%string current_exit_elevator_loc_uuid~%string target_exit_elevator_loc_uuid~%geometry_msgs/PoseStamped dock_anchor_pose~%GateInfo[] current_floor_gates~%GateInfo[] target_floor_gates~%IsolatedZone[] current_floor_isolated_zones~%IsolatedZone[] target_floor_isolated_zones~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: robint_msgs/GateInfo~%string gate_uuid~%string gate_name~%Location enter_loc~%Location exit_loc~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: robint_msgs/IsolatedZone~%Zone zone~%IsolatedWait[] wait_points~%string next_task~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: robint_msgs/IsolatedWait~%geometry_msgs/Pose pose~%string uuid~%bool direct~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JudgeIsolatedZone-request)))
  "Returns full string definition for message of type 'JudgeIsolatedZone-request"
  (cl:format cl:nil "NavigationTaskInfo task_info~%uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%~%================================================================================~%MSG: robint_msgs/NavigationTaskInfo~%string current_map_uuid~%string elevator_building_uuid~%string current_floor_id~%string target_map_uuid~%string target_floor_id~%string target_loc_uuid~%string target_loc_group_uuid~%string enter_elevator_loc_uuid~%string current_elevator_interior_loc_uuid~%string target_elevator_interior_loc_uuid~%string elevator_wait_loc_uuid~%string current_exit_elevator_loc_uuid~%string target_exit_elevator_loc_uuid~%geometry_msgs/PoseStamped dock_anchor_pose~%GateInfo[] current_floor_gates~%GateInfo[] target_floor_gates~%IsolatedZone[] current_floor_isolated_zones~%IsolatedZone[] target_floor_isolated_zones~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: robint_msgs/GateInfo~%string gate_uuid~%string gate_name~%Location enter_loc~%Location exit_loc~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: robint_msgs/IsolatedZone~%Zone zone~%IsolatedWait[] wait_points~%string next_task~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: robint_msgs/IsolatedWait~%geometry_msgs/Pose pose~%string uuid~%bool direct~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JudgeIsolatedZone-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_info))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JudgeIsolatedZone-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JudgeIsolatedZone-request
    (cl:cons ':task_info (task_info msg))
    (cl:cons ':command (command msg))
))
;//! \htmlinclude JudgeIsolatedZone-response.msg.html

(cl:defclass <JudgeIsolatedZone-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass JudgeIsolatedZone-response (<JudgeIsolatedZone-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JudgeIsolatedZone-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JudgeIsolatedZone-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<JudgeIsolatedZone-response> is deprecated: use robint_msgs-srv:JudgeIsolatedZone-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <JudgeIsolatedZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <JudgeIsolatedZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <JudgeIsolatedZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JudgeIsolatedZone-response>) ostream)
  "Serializes a message object of type '<JudgeIsolatedZone-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JudgeIsolatedZone-response>) istream)
  "Deserializes a message object of type '<JudgeIsolatedZone-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JudgeIsolatedZone-response>)))
  "Returns string type for a service object of type '<JudgeIsolatedZone-response>"
  "robint_msgs/JudgeIsolatedZoneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JudgeIsolatedZone-response)))
  "Returns string type for a service object of type 'JudgeIsolatedZone-response"
  "robint_msgs/JudgeIsolatedZoneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JudgeIsolatedZone-response>)))
  "Returns md5sum for a message object of type '<JudgeIsolatedZone-response>"
  "511ff24d4c9d29b2fb5f70e90296cf3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JudgeIsolatedZone-response)))
  "Returns md5sum for a message object of type 'JudgeIsolatedZone-response"
  "511ff24d4c9d29b2fb5f70e90296cf3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JudgeIsolatedZone-response>)))
  "Returns full string definition for message of type '<JudgeIsolatedZone-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JudgeIsolatedZone-response)))
  "Returns full string definition for message of type 'JudgeIsolatedZone-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JudgeIsolatedZone-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JudgeIsolatedZone-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JudgeIsolatedZone-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JudgeIsolatedZone)))
  'JudgeIsolatedZone-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JudgeIsolatedZone)))
  'JudgeIsolatedZone-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JudgeIsolatedZone)))
  "Returns string type for a service object of type '<JudgeIsolatedZone>"
  "robint_msgs/JudgeIsolatedZone")