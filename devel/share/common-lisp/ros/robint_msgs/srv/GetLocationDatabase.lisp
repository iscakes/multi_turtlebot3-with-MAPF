; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetLocationDatabase-request.msg.html

(cl:defclass <GetLocationDatabase-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLocationDatabase-request (<GetLocationDatabase-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocationDatabase-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocationDatabase-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetLocationDatabase-request> is deprecated: use robint_msgs-srv:GetLocationDatabase-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocationDatabase-request>) ostream)
  "Serializes a message object of type '<GetLocationDatabase-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocationDatabase-request>) istream)
  "Deserializes a message object of type '<GetLocationDatabase-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocationDatabase-request>)))
  "Returns string type for a service object of type '<GetLocationDatabase-request>"
  "robint_msgs/GetLocationDatabaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocationDatabase-request)))
  "Returns string type for a service object of type 'GetLocationDatabase-request"
  "robint_msgs/GetLocationDatabaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocationDatabase-request>)))
  "Returns md5sum for a message object of type '<GetLocationDatabase-request>"
  "a8ac951fad735d422e3f6b85eb9240ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocationDatabase-request)))
  "Returns md5sum for a message object of type 'GetLocationDatabase-request"
  "a8ac951fad735d422e3f6b85eb9240ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocationDatabase-request>)))
  "Returns full string definition for message of type '<GetLocationDatabase-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocationDatabase-request)))
  "Returns full string definition for message of type 'GetLocationDatabase-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocationDatabase-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocationDatabase-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocationDatabase-request
))
;//! \htmlinclude GetLocationDatabase-response.msg.html

(cl:defclass <GetLocationDatabase-response> (roslisp-msg-protocol:ros-message)
  ((database
    :reader database
    :initarg :database
    :type (cl:vector robint_msgs-msg:LocationList)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:LocationList :initial-element (cl:make-instance 'robint_msgs-msg:LocationList)))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetLocationDatabase-response (<GetLocationDatabase-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocationDatabase-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocationDatabase-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetLocationDatabase-response> is deprecated: use robint_msgs-srv:GetLocationDatabase-response instead.")))

(cl:ensure-generic-function 'database-val :lambda-list '(m))
(cl:defmethod database-val ((m <GetLocationDatabase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:database-val is deprecated.  Use robint_msgs-srv:database instead.")
  (database m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetLocationDatabase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocationDatabase-response>) ostream)
  "Serializes a message object of type '<GetLocationDatabase-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'database))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'database))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocationDatabase-response>) istream)
  "Deserializes a message object of type '<GetLocationDatabase-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'database) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'database)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:LocationList))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocationDatabase-response>)))
  "Returns string type for a service object of type '<GetLocationDatabase-response>"
  "robint_msgs/GetLocationDatabaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocationDatabase-response)))
  "Returns string type for a service object of type 'GetLocationDatabase-response"
  "robint_msgs/GetLocationDatabaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocationDatabase-response>)))
  "Returns md5sum for a message object of type '<GetLocationDatabase-response>"
  "a8ac951fad735d422e3f6b85eb9240ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocationDatabase-response)))
  "Returns md5sum for a message object of type 'GetLocationDatabase-response"
  "a8ac951fad735d422e3f6b85eb9240ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocationDatabase-response>)))
  "Returns full string definition for message of type '<GetLocationDatabase-response>"
  (cl:format cl:nil "LocationList[] database~%bool success~%~%================================================================================~%MSG: robint_msgs/LocationList~%string map_name~%string map_uuid~%Location[] location_list~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocationDatabase-response)))
  "Returns full string definition for message of type 'GetLocationDatabase-response"
  (cl:format cl:nil "LocationList[] database~%bool success~%~%================================================================================~%MSG: robint_msgs/LocationList~%string map_name~%string map_uuid~%Location[] location_list~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocationDatabase-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'database) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocationDatabase-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocationDatabase-response
    (cl:cons ':database (database msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLocationDatabase)))
  'GetLocationDatabase-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLocationDatabase)))
  'GetLocationDatabase-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocationDatabase)))
  "Returns string type for a service object of type '<GetLocationDatabase>"
  "robint_msgs/GetLocationDatabase")