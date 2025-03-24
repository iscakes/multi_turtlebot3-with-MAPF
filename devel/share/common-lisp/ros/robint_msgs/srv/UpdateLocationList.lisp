; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude UpdateLocationList-request.msg.html

(cl:defclass <UpdateLocationList-request> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (location_mode
    :reader location_mode
    :initarg :location_mode
    :type cl:fixnum
    :initform 0)
   (location_list
    :reader location_list
    :initarg :location_list
    :type (cl:vector robint_msgs-msg:Location)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:Location :initial-element (cl:make-instance 'robint_msgs-msg:Location))))
)

(cl:defclass UpdateLocationList-request (<UpdateLocationList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateLocationList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateLocationList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<UpdateLocationList-request> is deprecated: use robint_msgs-srv:UpdateLocationList-request instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <UpdateLocationList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'location_mode-val :lambda-list '(m))
(cl:defmethod location_mode-val ((m <UpdateLocationList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location_mode-val is deprecated.  Use robint_msgs-srv:location_mode instead.")
  (location_mode m))

(cl:ensure-generic-function 'location_list-val :lambda-list '(m))
(cl:defmethod location_list-val ((m <UpdateLocationList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location_list-val is deprecated.  Use robint_msgs-srv:location_list instead.")
  (location_list m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UpdateLocationList-request>)))
    "Constants for message type '<UpdateLocationList-request>"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UpdateLocationList-request)))
    "Constants for message type 'UpdateLocationList-request"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateLocationList-request>) ostream)
  "Serializes a message object of type '<UpdateLocationList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'location_mode)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'location_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'location_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateLocationList-request>) istream)
  "Deserializes a message object of type '<UpdateLocationList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'location_mode)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'location_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'location_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:Location))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateLocationList-request>)))
  "Returns string type for a service object of type '<UpdateLocationList-request>"
  "robint_msgs/UpdateLocationListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateLocationList-request)))
  "Returns string type for a service object of type 'UpdateLocationList-request"
  "robint_msgs/UpdateLocationListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateLocationList-request>)))
  "Returns md5sum for a message object of type '<UpdateLocationList-request>"
  "db5536b5ff3cfe2e4559b7715d48a2fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateLocationList-request)))
  "Returns md5sum for a message object of type 'UpdateLocationList-request"
  "db5536b5ff3cfe2e4559b7715d48a2fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateLocationList-request>)))
  "Returns full string definition for message of type '<UpdateLocationList-request>"
  (cl:format cl:nil "string map_uuid~%uint8 location_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%Location[] location_list~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateLocationList-request)))
  "Returns full string definition for message of type 'UpdateLocationList-request"
  (cl:format cl:nil "string map_uuid~%uint8 location_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%Location[] location_list~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateLocationList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'location_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateLocationList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateLocationList-request
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':location_mode (location_mode msg))
    (cl:cons ':location_list (location_list msg))
))
;//! \htmlinclude UpdateLocationList-response.msg.html

(cl:defclass <UpdateLocationList-response> (roslisp-msg-protocol:ros-message)
  ((success
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

(cl:defclass UpdateLocationList-response (<UpdateLocationList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateLocationList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateLocationList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<UpdateLocationList-response> is deprecated: use robint_msgs-srv:UpdateLocationList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UpdateLocationList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <UpdateLocationList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateLocationList-response>) ostream)
  "Serializes a message object of type '<UpdateLocationList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateLocationList-response>) istream)
  "Deserializes a message object of type '<UpdateLocationList-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateLocationList-response>)))
  "Returns string type for a service object of type '<UpdateLocationList-response>"
  "robint_msgs/UpdateLocationListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateLocationList-response)))
  "Returns string type for a service object of type 'UpdateLocationList-response"
  "robint_msgs/UpdateLocationListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateLocationList-response>)))
  "Returns md5sum for a message object of type '<UpdateLocationList-response>"
  "db5536b5ff3cfe2e4559b7715d48a2fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateLocationList-response)))
  "Returns md5sum for a message object of type 'UpdateLocationList-response"
  "db5536b5ff3cfe2e4559b7715d48a2fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateLocationList-response>)))
  "Returns full string definition for message of type '<UpdateLocationList-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateLocationList-response)))
  "Returns full string definition for message of type 'UpdateLocationList-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateLocationList-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateLocationList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateLocationList-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateLocationList)))
  'UpdateLocationList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateLocationList)))
  'UpdateLocationList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateLocationList)))
  "Returns string type for a service object of type '<UpdateLocationList>"
  "robint_msgs/UpdateLocationList")