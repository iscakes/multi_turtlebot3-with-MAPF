; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude ConvertToImagePose-request.msg.html

(cl:defclass <ConvertToImagePose-request> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ConvertToImagePose-request (<ConvertToImagePose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertToImagePose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertToImagePose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ConvertToImagePose-request> is deprecated: use robint_msgs-srv:ConvertToImagePose-request instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <ConvertToImagePose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ConvertToImagePose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:pose-val is deprecated.  Use robint_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertToImagePose-request>) ostream)
  "Serializes a message object of type '<ConvertToImagePose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertToImagePose-request>) istream)
  "Deserializes a message object of type '<ConvertToImagePose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertToImagePose-request>)))
  "Returns string type for a service object of type '<ConvertToImagePose-request>"
  "robint_msgs/ConvertToImagePoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToImagePose-request)))
  "Returns string type for a service object of type 'ConvertToImagePose-request"
  "robint_msgs/ConvertToImagePoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertToImagePose-request>)))
  "Returns md5sum for a message object of type '<ConvertToImagePose-request>"
  "98f246256c6be12ca761c5ac673adcea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertToImagePose-request)))
  "Returns md5sum for a message object of type 'ConvertToImagePose-request"
  "98f246256c6be12ca761c5ac673adcea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertToImagePose-request>)))
  "Returns full string definition for message of type '<ConvertToImagePose-request>"
  (cl:format cl:nil "string map_uuid~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertToImagePose-request)))
  "Returns full string definition for message of type 'ConvertToImagePose-request"
  (cl:format cl:nil "string map_uuid~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertToImagePose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertToImagePose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertToImagePose-request
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude ConvertToImagePose-response.msg.html

(cl:defclass <ConvertToImagePose-response> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (pose2d
    :reader pose2d
    :initarg :pose2d
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ConvertToImagePose-response (<ConvertToImagePose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertToImagePose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertToImagePose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ConvertToImagePose-response> is deprecated: use robint_msgs-srv:ConvertToImagePose-response instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <ConvertToImagePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'pose2d-val :lambda-list '(m))
(cl:defmethod pose2d-val ((m <ConvertToImagePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:pose2d-val is deprecated.  Use robint_msgs-srv:pose2d instead.")
  (pose2d m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ConvertToImagePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConvertToImagePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertToImagePose-response>) ostream)
  "Serializes a message object of type '<ConvertToImagePose-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose2d) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertToImagePose-response>) istream)
  "Deserializes a message object of type '<ConvertToImagePose-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose2d) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertToImagePose-response>)))
  "Returns string type for a service object of type '<ConvertToImagePose-response>"
  "robint_msgs/ConvertToImagePoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToImagePose-response)))
  "Returns string type for a service object of type 'ConvertToImagePose-response"
  "robint_msgs/ConvertToImagePoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertToImagePose-response>)))
  "Returns md5sum for a message object of type '<ConvertToImagePose-response>"
  "98f246256c6be12ca761c5ac673adcea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertToImagePose-response)))
  "Returns md5sum for a message object of type 'ConvertToImagePose-response"
  "98f246256c6be12ca761c5ac673adcea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertToImagePose-response>)))
  "Returns full string definition for message of type '<ConvertToImagePose-response>"
  (cl:format cl:nil "string map_uuid~%geometry_msgs/Pose2D pose2d~%uint8 error_code~%bool success~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertToImagePose-response)))
  "Returns full string definition for message of type 'ConvertToImagePose-response"
  (cl:format cl:nil "string map_uuid~%geometry_msgs/Pose2D pose2d~%uint8 error_code~%bool success~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertToImagePose-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose2d))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertToImagePose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertToImagePose-response
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':pose2d (pose2d msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConvertToImagePose)))
  'ConvertToImagePose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConvertToImagePose)))
  'ConvertToImagePose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToImagePose)))
  "Returns string type for a service object of type '<ConvertToImagePose>"
  "robint_msgs/ConvertToImagePose")