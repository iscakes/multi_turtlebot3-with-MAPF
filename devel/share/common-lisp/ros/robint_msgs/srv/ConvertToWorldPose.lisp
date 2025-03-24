; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude ConvertToWorldPose-request.msg.html

(cl:defclass <ConvertToWorldPose-request> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (pose2d
    :reader pose2d
    :initarg :pose2d
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass ConvertToWorldPose-request (<ConvertToWorldPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertToWorldPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertToWorldPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ConvertToWorldPose-request> is deprecated: use robint_msgs-srv:ConvertToWorldPose-request instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <ConvertToWorldPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'pose2d-val :lambda-list '(m))
(cl:defmethod pose2d-val ((m <ConvertToWorldPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:pose2d-val is deprecated.  Use robint_msgs-srv:pose2d instead.")
  (pose2d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertToWorldPose-request>) ostream)
  "Serializes a message object of type '<ConvertToWorldPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose2d) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertToWorldPose-request>) istream)
  "Deserializes a message object of type '<ConvertToWorldPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose2d) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertToWorldPose-request>)))
  "Returns string type for a service object of type '<ConvertToWorldPose-request>"
  "robint_msgs/ConvertToWorldPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToWorldPose-request)))
  "Returns string type for a service object of type 'ConvertToWorldPose-request"
  "robint_msgs/ConvertToWorldPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertToWorldPose-request>)))
  "Returns md5sum for a message object of type '<ConvertToWorldPose-request>"
  "71ebe842d35949565d497843290d72e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertToWorldPose-request)))
  "Returns md5sum for a message object of type 'ConvertToWorldPose-request"
  "71ebe842d35949565d497843290d72e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertToWorldPose-request>)))
  "Returns full string definition for message of type '<ConvertToWorldPose-request>"
  (cl:format cl:nil "string map_uuid~%geometry_msgs/Pose2D pose2d~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertToWorldPose-request)))
  "Returns full string definition for message of type 'ConvertToWorldPose-request"
  (cl:format cl:nil "string map_uuid~%geometry_msgs/Pose2D pose2d~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertToWorldPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose2d))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertToWorldPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertToWorldPose-request
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':pose2d (pose2d msg))
))
;//! \htmlinclude ConvertToWorldPose-response.msg.html

(cl:defclass <ConvertToWorldPose-response> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
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

(cl:defclass ConvertToWorldPose-response (<ConvertToWorldPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConvertToWorldPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConvertToWorldPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ConvertToWorldPose-response> is deprecated: use robint_msgs-srv:ConvertToWorldPose-response instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <ConvertToWorldPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ConvertToWorldPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:pose-val is deprecated.  Use robint_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ConvertToWorldPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ConvertToWorldPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConvertToWorldPose-response>) ostream)
  "Serializes a message object of type '<ConvertToWorldPose-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConvertToWorldPose-response>) istream)
  "Deserializes a message object of type '<ConvertToWorldPose-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConvertToWorldPose-response>)))
  "Returns string type for a service object of type '<ConvertToWorldPose-response>"
  "robint_msgs/ConvertToWorldPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToWorldPose-response)))
  "Returns string type for a service object of type 'ConvertToWorldPose-response"
  "robint_msgs/ConvertToWorldPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConvertToWorldPose-response>)))
  "Returns md5sum for a message object of type '<ConvertToWorldPose-response>"
  "71ebe842d35949565d497843290d72e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConvertToWorldPose-response)))
  "Returns md5sum for a message object of type 'ConvertToWorldPose-response"
  "71ebe842d35949565d497843290d72e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConvertToWorldPose-response>)))
  "Returns full string definition for message of type '<ConvertToWorldPose-response>"
  (cl:format cl:nil "string map_uuid~%geometry_msgs/Pose pose~%uint8 error_code~%bool success~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConvertToWorldPose-response)))
  "Returns full string definition for message of type 'ConvertToWorldPose-response"
  (cl:format cl:nil "string map_uuid~%geometry_msgs/Pose pose~%uint8 error_code~%bool success~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConvertToWorldPose-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConvertToWorldPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ConvertToWorldPose-response
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ConvertToWorldPose)))
  'ConvertToWorldPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ConvertToWorldPose)))
  'ConvertToWorldPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConvertToWorldPose)))
  "Returns string type for a service object of type '<ConvertToWorldPose>"
  "robint_msgs/ConvertToWorldPose")