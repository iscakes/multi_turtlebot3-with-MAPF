; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude AddCurrentLocation-request.msg.html

(cl:defclass <AddCurrentLocation-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (type_name
    :reader type_name
    :initarg :type_name
    :type cl:string
    :initform "")
   (location_name
    :reader location_name
    :initarg :location_name
    :type cl:string
    :initform "")
   (map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (group_uuid
    :reader group_uuid
    :initarg :group_uuid
    :type cl:string
    :initform ""))
)

(cl:defclass AddCurrentLocation-request (<AddCurrentLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddCurrentLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddCurrentLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddCurrentLocation-request> is deprecated: use robint_msgs-srv:AddCurrentLocation-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <AddCurrentLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'type_name-val :lambda-list '(m))
(cl:defmethod type_name-val ((m <AddCurrentLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:type_name-val is deprecated.  Use robint_msgs-srv:type_name instead.")
  (type_name m))

(cl:ensure-generic-function 'location_name-val :lambda-list '(m))
(cl:defmethod location_name-val ((m <AddCurrentLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location_name-val is deprecated.  Use robint_msgs-srv:location_name instead.")
  (location_name m))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <AddCurrentLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'group_uuid-val :lambda-list '(m))
(cl:defmethod group_uuid-val ((m <AddCurrentLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:group_uuid-val is deprecated.  Use robint_msgs-srv:group_uuid instead.")
  (group_uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddCurrentLocation-request>) ostream)
  "Serializes a message object of type '<AddCurrentLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddCurrentLocation-request>) istream)
  "Deserializes a message object of type '<AddCurrentLocation-request>"
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
      (cl:setf (cl:slot-value msg 'type_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddCurrentLocation-request>)))
  "Returns string type for a service object of type '<AddCurrentLocation-request>"
  "robint_msgs/AddCurrentLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCurrentLocation-request)))
  "Returns string type for a service object of type 'AddCurrentLocation-request"
  "robint_msgs/AddCurrentLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddCurrentLocation-request>)))
  "Returns md5sum for a message object of type '<AddCurrentLocation-request>"
  "b06bd95ad79c8912392a1b4469764813")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddCurrentLocation-request)))
  "Returns md5sum for a message object of type 'AddCurrentLocation-request"
  "b06bd95ad79c8912392a1b4469764813")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddCurrentLocation-request>)))
  "Returns full string definition for message of type '<AddCurrentLocation-request>"
  (cl:format cl:nil "string map_name~%string type_name~%string location_name~%string map_uuid~%string group_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddCurrentLocation-request)))
  "Returns full string definition for message of type 'AddCurrentLocation-request"
  (cl:format cl:nil "string map_name~%string type_name~%string location_name~%string map_uuid~%string group_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddCurrentLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'type_name))
     4 (cl:length (cl:slot-value msg 'location_name))
     4 (cl:length (cl:slot-value msg 'map_uuid))
     4 (cl:length (cl:slot-value msg 'group_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddCurrentLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddCurrentLocation-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':type_name (type_name msg))
    (cl:cons ':location_name (location_name msg))
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':group_uuid (group_uuid msg))
))
;//! \htmlinclude AddCurrentLocation-response.msg.html

(cl:defclass <AddCurrentLocation-response> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type robint_msgs-msg:Location
    :initform (cl:make-instance 'robint_msgs-msg:Location))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AddCurrentLocation-response (<AddCurrentLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddCurrentLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddCurrentLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddCurrentLocation-response> is deprecated: use robint_msgs-srv:AddCurrentLocation-response instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <AddCurrentLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location-val is deprecated.  Use robint_msgs-srv:location instead.")
  (location m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddCurrentLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <AddCurrentLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddCurrentLocation-response>) ostream)
  "Serializes a message object of type '<AddCurrentLocation-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddCurrentLocation-response>) istream)
  "Deserializes a message object of type '<AddCurrentLocation-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddCurrentLocation-response>)))
  "Returns string type for a service object of type '<AddCurrentLocation-response>"
  "robint_msgs/AddCurrentLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCurrentLocation-response)))
  "Returns string type for a service object of type 'AddCurrentLocation-response"
  "robint_msgs/AddCurrentLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddCurrentLocation-response>)))
  "Returns md5sum for a message object of type '<AddCurrentLocation-response>"
  "b06bd95ad79c8912392a1b4469764813")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddCurrentLocation-response)))
  "Returns md5sum for a message object of type 'AddCurrentLocation-response"
  "b06bd95ad79c8912392a1b4469764813")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddCurrentLocation-response>)))
  "Returns full string definition for message of type '<AddCurrentLocation-response>"
  (cl:format cl:nil "Location location~%bool success~%uint8 error_code~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddCurrentLocation-response)))
  "Returns full string definition for message of type 'AddCurrentLocation-response"
  (cl:format cl:nil "Location location~%bool success~%uint8 error_code~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddCurrentLocation-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddCurrentLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddCurrentLocation-response
    (cl:cons ':location (location msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddCurrentLocation)))
  'AddCurrentLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddCurrentLocation)))
  'AddCurrentLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCurrentLocation)))
  "Returns string type for a service object of type '<AddCurrentLocation>"
  "robint_msgs/AddCurrentLocation")