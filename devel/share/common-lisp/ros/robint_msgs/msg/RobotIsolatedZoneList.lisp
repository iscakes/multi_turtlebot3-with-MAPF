; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude RobotIsolatedZoneList.msg.html

(cl:defclass <RobotIsolatedZoneList> (roslisp-msg-protocol:ros-message)
  ((robot_isolated_zone_list
    :reader robot_isolated_zone_list
    :initarg :robot_isolated_zone_list
    :type (cl:vector robint_msgs-msg:RobotIsolatedZone)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:RobotIsolatedZone :initial-element (cl:make-instance 'robint_msgs-msg:RobotIsolatedZone)))
   (self_isolated_zone_uuid
    :reader self_isolated_zone_uuid
    :initarg :self_isolated_zone_uuid
    :type cl:string
    :initform "")
   (robot_pose
    :reader robot_pose
    :initarg :robot_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass RobotIsolatedZoneList (<RobotIsolatedZoneList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotIsolatedZoneList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotIsolatedZoneList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<RobotIsolatedZoneList> is deprecated: use robint_msgs-msg:RobotIsolatedZoneList instead.")))

(cl:ensure-generic-function 'robot_isolated_zone_list-val :lambda-list '(m))
(cl:defmethod robot_isolated_zone_list-val ((m <RobotIsolatedZoneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:robot_isolated_zone_list-val is deprecated.  Use robint_msgs-msg:robot_isolated_zone_list instead.")
  (robot_isolated_zone_list m))

(cl:ensure-generic-function 'self_isolated_zone_uuid-val :lambda-list '(m))
(cl:defmethod self_isolated_zone_uuid-val ((m <RobotIsolatedZoneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:self_isolated_zone_uuid-val is deprecated.  Use robint_msgs-msg:self_isolated_zone_uuid instead.")
  (self_isolated_zone_uuid m))

(cl:ensure-generic-function 'robot_pose-val :lambda-list '(m))
(cl:defmethod robot_pose-val ((m <RobotIsolatedZoneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:robot_pose-val is deprecated.  Use robint_msgs-msg:robot_pose instead.")
  (robot_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotIsolatedZoneList>) ostream)
  "Serializes a message object of type '<RobotIsolatedZoneList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_isolated_zone_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robot_isolated_zone_list))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'self_isolated_zone_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'self_isolated_zone_uuid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotIsolatedZoneList>) istream)
  "Deserializes a message object of type '<RobotIsolatedZoneList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_isolated_zone_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_isolated_zone_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:RobotIsolatedZone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'self_isolated_zone_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'self_isolated_zone_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotIsolatedZoneList>)))
  "Returns string type for a message object of type '<RobotIsolatedZoneList>"
  "robint_msgs/RobotIsolatedZoneList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotIsolatedZoneList)))
  "Returns string type for a message object of type 'RobotIsolatedZoneList"
  "robint_msgs/RobotIsolatedZoneList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotIsolatedZoneList>)))
  "Returns md5sum for a message object of type '<RobotIsolatedZoneList>"
  "9d0afd21c4c4da4af1d82820d14e63e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotIsolatedZoneList)))
  "Returns md5sum for a message object of type 'RobotIsolatedZoneList"
  "9d0afd21c4c4da4af1d82820d14e63e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotIsolatedZoneList>)))
  "Returns full string definition for message of type '<RobotIsolatedZoneList>"
  (cl:format cl:nil "RobotIsolatedZone[] robot_isolated_zone_list~%string self_isolated_zone_uuid~%geometry_msgs/Pose2D robot_pose~%================================================================================~%MSG: robint_msgs/RobotIsolatedZone~%string zone_uuid~%string[] robot_list~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotIsolatedZoneList)))
  "Returns full string definition for message of type 'RobotIsolatedZoneList"
  (cl:format cl:nil "RobotIsolatedZone[] robot_isolated_zone_list~%string self_isolated_zone_uuid~%geometry_msgs/Pose2D robot_pose~%================================================================================~%MSG: robint_msgs/RobotIsolatedZone~%string zone_uuid~%string[] robot_list~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotIsolatedZoneList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_isolated_zone_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'self_isolated_zone_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotIsolatedZoneList>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotIsolatedZoneList
    (cl:cons ':robot_isolated_zone_list (robot_isolated_zone_list msg))
    (cl:cons ':self_isolated_zone_uuid (self_isolated_zone_uuid msg))
    (cl:cons ':robot_pose (robot_pose msg))
))
