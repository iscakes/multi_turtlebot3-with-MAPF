; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude SyncStatus.msg.html

(cl:defclass <SyncStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (self_uuid
    :reader self_uuid
    :initarg :self_uuid
    :type cl:string
    :initform "")
   (sync_status
    :reader sync_status
    :initarg :sync_status
    :type cl:string
    :initform "")
   (sync_info_array
    :reader sync_info_array
    :initarg :sync_info_array
    :type (cl:vector robint_msgs-msg:SyncInfo)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:SyncInfo :initial-element (cl:make-instance 'robint_msgs-msg:SyncInfo))))
)

(cl:defclass SyncStatus (<SyncStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<SyncStatus> is deprecated: use robint_msgs-msg:SyncStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:header-val is deprecated.  Use robint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'self_uuid-val :lambda-list '(m))
(cl:defmethod self_uuid-val ((m <SyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:self_uuid-val is deprecated.  Use robint_msgs-msg:self_uuid instead.")
  (self_uuid m))

(cl:ensure-generic-function 'sync_status-val :lambda-list '(m))
(cl:defmethod sync_status-val ((m <SyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:sync_status-val is deprecated.  Use robint_msgs-msg:sync_status instead.")
  (sync_status m))

(cl:ensure-generic-function 'sync_info_array-val :lambda-list '(m))
(cl:defmethod sync_info_array-val ((m <SyncStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:sync_info_array-val is deprecated.  Use robint_msgs-msg:sync_info_array instead.")
  (sync_info_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncStatus>) ostream)
  "Serializes a message object of type '<SyncStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'self_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'self_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sync_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sync_status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sync_info_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sync_info_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncStatus>) istream)
  "Deserializes a message object of type '<SyncStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'self_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'self_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sync_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sync_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sync_info_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sync_info_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:SyncInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncStatus>)))
  "Returns string type for a message object of type '<SyncStatus>"
  "robint_msgs/SyncStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncStatus)))
  "Returns string type for a message object of type 'SyncStatus"
  "robint_msgs/SyncStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncStatus>)))
  "Returns md5sum for a message object of type '<SyncStatus>"
  "7d4fbf71e40475e522fea10a2de53cc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncStatus)))
  "Returns md5sum for a message object of type 'SyncStatus"
  "7d4fbf71e40475e522fea10a2de53cc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncStatus>)))
  "Returns full string definition for message of type '<SyncStatus>"
  (cl:format cl:nil "Header header~%# 本机uuid~%string self_uuid~%~%# 同步状态：opened,opening,closed,closing~%string sync_status~%~%SyncInfo[] sync_info_array~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robint_msgs/SyncInfo~%Header header~%string timestamp_string~%string robot_uuid~%string robot_index~%~%# Absorbed info~%string map_name~%string map_uuid~%geometry_msgs/Pose2D global_map_pose~%float32 linear_velocity~%float32 angular_velocity~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncStatus)))
  "Returns full string definition for message of type 'SyncStatus"
  (cl:format cl:nil "Header header~%# 本机uuid~%string self_uuid~%~%# 同步状态：opened,opening,closed,closing~%string sync_status~%~%SyncInfo[] sync_info_array~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robint_msgs/SyncInfo~%Header header~%string timestamp_string~%string robot_uuid~%string robot_index~%~%# Absorbed info~%string map_name~%string map_uuid~%geometry_msgs/Pose2D global_map_pose~%float32 linear_velocity~%float32 angular_velocity~%~%~%~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'self_uuid))
     4 (cl:length (cl:slot-value msg 'sync_status))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sync_info_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncStatus
    (cl:cons ':header (header msg))
    (cl:cons ':self_uuid (self_uuid msg))
    (cl:cons ':sync_status (sync_status msg))
    (cl:cons ':sync_info_array (sync_info_array msg))
))
