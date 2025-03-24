; Auto-generated. Do not edit!


(cl:in-package coverage_path_planner-srv)


;//! \htmlinclude GetPathInZone-request.msg.html

(cl:defclass <GetPathInZone-request> (roslisp-msg-protocol:ros-message)
  ((zone
    :reader zone
    :initarg :zone
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetPathInZone-request (<GetPathInZone-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPathInZone-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPathInZone-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name coverage_path_planner-srv:<GetPathInZone-request> is deprecated: use coverage_path_planner-srv:GetPathInZone-request instead.")))

(cl:ensure-generic-function 'zone-val :lambda-list '(m))
(cl:defmethod zone-val ((m <GetPathInZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coverage_path_planner-srv:zone-val is deprecated.  Use coverage_path_planner-srv:zone instead.")
  (zone m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GetPathInZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coverage_path_planner-srv:type-val is deprecated.  Use coverage_path_planner-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPathInZone-request>) ostream)
  "Serializes a message object of type '<GetPathInZone-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'zone) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPathInZone-request>) istream)
  "Deserializes a message object of type '<GetPathInZone-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'zone) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPathInZone-request>)))
  "Returns string type for a service object of type '<GetPathInZone-request>"
  "coverage_path_planner/GetPathInZoneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPathInZone-request)))
  "Returns string type for a service object of type 'GetPathInZone-request"
  "coverage_path_planner/GetPathInZoneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPathInZone-request>)))
  "Returns md5sum for a message object of type '<GetPathInZone-request>"
  "a62f47b7218351dab297d7590620e91a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPathInZone-request)))
  "Returns md5sum for a message object of type 'GetPathInZone-request"
  "a62f47b7218351dab297d7590620e91a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPathInZone-request>)))
  "Returns full string definition for message of type '<GetPathInZone-request>"
  (cl:format cl:nil "nav_msgs/Path zone~%uint8 type # 0 - zigzag; 1 - backshaped~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPathInZone-request)))
  "Returns full string definition for message of type 'GetPathInZone-request"
  (cl:format cl:nil "nav_msgs/Path zone~%uint8 type # 0 - zigzag; 1 - backshaped~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPathInZone-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'zone))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPathInZone-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPathInZone-request
    (cl:cons ':zone (zone msg))
    (cl:cons ':type (type msg))
))
;//! \htmlinclude GetPathInZone-response.msg.html

(cl:defclass <GetPathInZone-response> (roslisp-msg-protocol:ros-message)
  ((coverage_paths
    :reader coverage_paths
    :initarg :coverage_paths
    :type (cl:vector nav_msgs-msg:Path)
   :initform (cl:make-array 0 :element-type 'nav_msgs-msg:Path :initial-element (cl:make-instance 'nav_msgs-msg:Path))))
)

(cl:defclass GetPathInZone-response (<GetPathInZone-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPathInZone-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPathInZone-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name coverage_path_planner-srv:<GetPathInZone-response> is deprecated: use coverage_path_planner-srv:GetPathInZone-response instead.")))

(cl:ensure-generic-function 'coverage_paths-val :lambda-list '(m))
(cl:defmethod coverage_paths-val ((m <GetPathInZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader coverage_path_planner-srv:coverage_paths-val is deprecated.  Use coverage_path_planner-srv:coverage_paths instead.")
  (coverage_paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPathInZone-response>) ostream)
  "Serializes a message object of type '<GetPathInZone-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coverage_paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'coverage_paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPathInZone-response>) istream)
  "Deserializes a message object of type '<GetPathInZone-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coverage_paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coverage_paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nav_msgs-msg:Path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPathInZone-response>)))
  "Returns string type for a service object of type '<GetPathInZone-response>"
  "coverage_path_planner/GetPathInZoneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPathInZone-response)))
  "Returns string type for a service object of type 'GetPathInZone-response"
  "coverage_path_planner/GetPathInZoneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPathInZone-response>)))
  "Returns md5sum for a message object of type '<GetPathInZone-response>"
  "a62f47b7218351dab297d7590620e91a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPathInZone-response)))
  "Returns md5sum for a message object of type 'GetPathInZone-response"
  "a62f47b7218351dab297d7590620e91a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPathInZone-response>)))
  "Returns full string definition for message of type '<GetPathInZone-response>"
  (cl:format cl:nil "nav_msgs/Path[] coverage_paths~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPathInZone-response)))
  "Returns full string definition for message of type 'GetPathInZone-response"
  (cl:format cl:nil "nav_msgs/Path[] coverage_paths~%~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPathInZone-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coverage_paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPathInZone-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPathInZone-response
    (cl:cons ':coverage_paths (coverage_paths msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPathInZone)))
  'GetPathInZone-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPathInZone)))
  'GetPathInZone-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPathInZone)))
  "Returns string type for a service object of type '<GetPathInZone>"
  "coverage_path_planner/GetPathInZone")