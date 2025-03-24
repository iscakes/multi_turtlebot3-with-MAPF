; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude RobotImagePose.msg.html

(cl:defclass <RobotImagePose> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (image_pose
    :reader image_pose
    :initarg :image_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (normal
    :reader normal
    :initarg :normal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotImagePose (<RobotImagePose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotImagePose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotImagePose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<RobotImagePose> is deprecated: use robint_msgs-msg:RobotImagePose instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <RobotImagePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:map_uuid-val is deprecated.  Use robint_msgs-msg:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'image_pose-val :lambda-list '(m))
(cl:defmethod image_pose-val ((m <RobotImagePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:image_pose-val is deprecated.  Use robint_msgs-msg:image_pose instead.")
  (image_pose m))

(cl:ensure-generic-function 'normal-val :lambda-list '(m))
(cl:defmethod normal-val ((m <RobotImagePose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:normal-val is deprecated.  Use robint_msgs-msg:normal instead.")
  (normal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotImagePose>) ostream)
  "Serializes a message object of type '<RobotImagePose>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'normal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotImagePose>) istream)
  "Deserializes a message object of type '<RobotImagePose>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_pose) istream)
    (cl:setf (cl:slot-value msg 'normal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotImagePose>)))
  "Returns string type for a message object of type '<RobotImagePose>"
  "robint_msgs/RobotImagePose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotImagePose)))
  "Returns string type for a message object of type 'RobotImagePose"
  "robint_msgs/RobotImagePose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotImagePose>)))
  "Returns md5sum for a message object of type '<RobotImagePose>"
  "63c6918d070f32a3168513d2d33658bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotImagePose)))
  "Returns md5sum for a message object of type 'RobotImagePose"
  "63c6918d070f32a3168513d2d33658bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotImagePose>)))
  "Returns full string definition for message of type '<RobotImagePose>"
  (cl:format cl:nil "string map_uuid~%geometry_msgs/Pose2D image_pose~%bool normal~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotImagePose)))
  "Returns full string definition for message of type 'RobotImagePose"
  (cl:format cl:nil "string map_uuid~%geometry_msgs/Pose2D image_pose~%bool normal~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotImagePose>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotImagePose>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotImagePose
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':image_pose (image_pose msg))
    (cl:cons ':normal (normal msg))
))
