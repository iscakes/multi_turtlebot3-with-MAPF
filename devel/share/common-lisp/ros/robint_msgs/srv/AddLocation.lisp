; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude AddLocation-request.msg.html

(cl:defclass <AddLocation-request> (roslisp-msg-protocol:ros-message)
  ((location_mode
    :reader location_mode
    :initarg :location_mode
    :type cl:fixnum
    :initform 0)
   (location
    :reader location
    :initarg :location
    :type robint_msgs-msg:Location
    :initform (cl:make-instance 'robint_msgs-msg:Location)))
)

(cl:defclass AddLocation-request (<AddLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddLocation-request> is deprecated: use robint_msgs-srv:AddLocation-request instead.")))

(cl:ensure-generic-function 'location_mode-val :lambda-list '(m))
(cl:defmethod location_mode-val ((m <AddLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location_mode-val is deprecated.  Use robint_msgs-srv:location_mode instead.")
  (location_mode m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <AddLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location-val is deprecated.  Use robint_msgs-srv:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AddLocation-request>)))
    "Constants for message type '<AddLocation-request>"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AddLocation-request)))
    "Constants for message type 'AddLocation-request"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddLocation-request>) ostream)
  "Serializes a message object of type '<AddLocation-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'location_mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddLocation-request>) istream)
  "Deserializes a message object of type '<AddLocation-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'location_mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddLocation-request>)))
  "Returns string type for a service object of type '<AddLocation-request>"
  "robint_msgs/AddLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLocation-request)))
  "Returns string type for a service object of type 'AddLocation-request"
  "robint_msgs/AddLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddLocation-request>)))
  "Returns md5sum for a message object of type '<AddLocation-request>"
  "e7bdfdb420d7c889969f8ee848aa57ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddLocation-request)))
  "Returns md5sum for a message object of type 'AddLocation-request"
  "e7bdfdb420d7c889969f8ee848aa57ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddLocation-request>)))
  "Returns full string definition for message of type '<AddLocation-request>"
  (cl:format cl:nil "uint8 location_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%Location location~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddLocation-request)))
  "Returns full string definition for message of type 'AddLocation-request"
  (cl:format cl:nil "uint8 location_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%Location location~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddLocation-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddLocation-request
    (cl:cons ':location_mode (location_mode msg))
    (cl:cons ':location (location msg))
))
;//! \htmlinclude AddLocation-response.msg.html

(cl:defclass <AddLocation-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AddLocation-response (<AddLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddLocation-response> is deprecated: use robint_msgs-srv:AddLocation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddLocation-response>) ostream)
  "Serializes a message object of type '<AddLocation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddLocation-response>) istream)
  "Deserializes a message object of type '<AddLocation-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddLocation-response>)))
  "Returns string type for a service object of type '<AddLocation-response>"
  "robint_msgs/AddLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLocation-response)))
  "Returns string type for a service object of type 'AddLocation-response"
  "robint_msgs/AddLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddLocation-response>)))
  "Returns md5sum for a message object of type '<AddLocation-response>"
  "e7bdfdb420d7c889969f8ee848aa57ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddLocation-response)))
  "Returns md5sum for a message object of type 'AddLocation-response"
  "e7bdfdb420d7c889969f8ee848aa57ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddLocation-response>)))
  "Returns full string definition for message of type '<AddLocation-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddLocation-response)))
  "Returns full string definition for message of type 'AddLocation-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddLocation-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddLocation-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddLocation)))
  'AddLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddLocation)))
  'AddLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddLocation)))
  "Returns string type for a service object of type '<AddLocation>"
  "robint_msgs/AddLocation")