; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetCurrentRobotPose-request.msg.html

(cl:defclass <GetCurrentRobotPose-request> (roslisp-msg-protocol:ros-message)
  ((target_frame
    :reader target_frame
    :initarg :target_frame
    :type cl:string
    :initform "")
   (robot_frame
    :reader robot_frame
    :initarg :robot_frame
    :type cl:string
    :initform ""))
)

(cl:defclass GetCurrentRobotPose-request (<GetCurrentRobotPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentRobotPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentRobotPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCurrentRobotPose-request> is deprecated: use robint_msgs-srv:GetCurrentRobotPose-request instead.")))

(cl:ensure-generic-function 'target_frame-val :lambda-list '(m))
(cl:defmethod target_frame-val ((m <GetCurrentRobotPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_frame-val is deprecated.  Use robint_msgs-srv:target_frame instead.")
  (target_frame m))

(cl:ensure-generic-function 'robot_frame-val :lambda-list '(m))
(cl:defmethod robot_frame-val ((m <GetCurrentRobotPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:robot_frame-val is deprecated.  Use robint_msgs-srv:robot_frame instead.")
  (robot_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentRobotPose-request>) ostream)
  "Serializes a message object of type '<GetCurrentRobotPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentRobotPose-request>) istream)
  "Deserializes a message object of type '<GetCurrentRobotPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentRobotPose-request>)))
  "Returns string type for a service object of type '<GetCurrentRobotPose-request>"
  "robint_msgs/GetCurrentRobotPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentRobotPose-request)))
  "Returns string type for a service object of type 'GetCurrentRobotPose-request"
  "robint_msgs/GetCurrentRobotPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentRobotPose-request>)))
  "Returns md5sum for a message object of type '<GetCurrentRobotPose-request>"
  "e893e35ee69a289c4ba9dfb64de7b851")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentRobotPose-request)))
  "Returns md5sum for a message object of type 'GetCurrentRobotPose-request"
  "e893e35ee69a289c4ba9dfb64de7b851")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentRobotPose-request>)))
  "Returns full string definition for message of type '<GetCurrentRobotPose-request>"
  (cl:format cl:nil "string target_frame~%string robot_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentRobotPose-request)))
  "Returns full string definition for message of type 'GetCurrentRobotPose-request"
  (cl:format cl:nil "string target_frame~%string robot_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentRobotPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'target_frame))
     4 (cl:length (cl:slot-value msg 'robot_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentRobotPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentRobotPose-request
    (cl:cons ':target_frame (target_frame msg))
    (cl:cons ':robot_frame (robot_frame msg))
))
;//! \htmlinclude GetCurrentRobotPose-response.msg.html

(cl:defclass <GetCurrentRobotPose-response> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (image_pose
    :reader image_pose
    :initarg :image_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetCurrentRobotPose-response (<GetCurrentRobotPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentRobotPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentRobotPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCurrentRobotPose-response> is deprecated: use robint_msgs-srv:GetCurrentRobotPose-response instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <GetCurrentRobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <GetCurrentRobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'image_pose-val :lambda-list '(m))
(cl:defmethod image_pose-val ((m <GetCurrentRobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:image_pose-val is deprecated.  Use robint_msgs-srv:image_pose instead.")
  (image_pose m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetCurrentRobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:pose-val is deprecated.  Use robint_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCurrentRobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentRobotPose-response>) ostream)
  "Serializes a message object of type '<GetCurrentRobotPose-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentRobotPose-response>) istream)
  "Deserializes a message object of type '<GetCurrentRobotPose-response>"
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
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentRobotPose-response>)))
  "Returns string type for a service object of type '<GetCurrentRobotPose-response>"
  "robint_msgs/GetCurrentRobotPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentRobotPose-response)))
  "Returns string type for a service object of type 'GetCurrentRobotPose-response"
  "robint_msgs/GetCurrentRobotPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentRobotPose-response>)))
  "Returns md5sum for a message object of type '<GetCurrentRobotPose-response>"
  "e893e35ee69a289c4ba9dfb64de7b851")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentRobotPose-response)))
  "Returns md5sum for a message object of type 'GetCurrentRobotPose-response"
  "e893e35ee69a289c4ba9dfb64de7b851")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentRobotPose-response>)))
  "Returns full string definition for message of type '<GetCurrentRobotPose-response>"
  (cl:format cl:nil "string map_name~%string map_uuid~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%bool success~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentRobotPose-response)))
  "Returns full string definition for message of type 'GetCurrentRobotPose-response"
  (cl:format cl:nil "string map_name~%string map_uuid~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%bool success~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentRobotPose-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'map_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentRobotPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentRobotPose-response
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':image_pose (image_pose msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurrentRobotPose)))
  'GetCurrentRobotPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurrentRobotPose)))
  'GetCurrentRobotPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentRobotPose)))
  "Returns string type for a service object of type '<GetCurrentRobotPose>"
  "robint_msgs/GetCurrentRobotPose")