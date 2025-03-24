; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetCruiseTaskInfo-request.msg.html

(cl:defclass <GetCruiseTaskInfo-request> (roslisp-msg-protocol:ros-message)
  ((task_uuid
    :reader task_uuid
    :initarg :task_uuid
    :type cl:string
    :initform "")
   (task_name
    :reader task_name
    :initarg :task_name
    :type cl:string
    :initform "")
   (start_location_uuid
    :reader start_location_uuid
    :initarg :start_location_uuid
    :type cl:string
    :initform "")
   (end_location_uuid
    :reader end_location_uuid
    :initarg :end_location_uuid
    :type cl:string
    :initform ""))
)

(cl:defclass GetCruiseTaskInfo-request (<GetCruiseTaskInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCruiseTaskInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCruiseTaskInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCruiseTaskInfo-request> is deprecated: use robint_msgs-srv:GetCruiseTaskInfo-request instead.")))

(cl:ensure-generic-function 'task_uuid-val :lambda-list '(m))
(cl:defmethod task_uuid-val ((m <GetCruiseTaskInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:task_uuid-val is deprecated.  Use robint_msgs-srv:task_uuid instead.")
  (task_uuid m))

(cl:ensure-generic-function 'task_name-val :lambda-list '(m))
(cl:defmethod task_name-val ((m <GetCruiseTaskInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:task_name-val is deprecated.  Use robint_msgs-srv:task_name instead.")
  (task_name m))

(cl:ensure-generic-function 'start_location_uuid-val :lambda-list '(m))
(cl:defmethod start_location_uuid-val ((m <GetCruiseTaskInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:start_location_uuid-val is deprecated.  Use robint_msgs-srv:start_location_uuid instead.")
  (start_location_uuid m))

(cl:ensure-generic-function 'end_location_uuid-val :lambda-list '(m))
(cl:defmethod end_location_uuid-val ((m <GetCruiseTaskInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:end_location_uuid-val is deprecated.  Use robint_msgs-srv:end_location_uuid instead.")
  (end_location_uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCruiseTaskInfo-request>) ostream)
  "Serializes a message object of type '<GetCruiseTaskInfo-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start_location_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start_location_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_location_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_location_uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCruiseTaskInfo-request>) istream)
  "Deserializes a message object of type '<GetCruiseTaskInfo-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_location_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start_location_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_location_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_location_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCruiseTaskInfo-request>)))
  "Returns string type for a service object of type '<GetCruiseTaskInfo-request>"
  "robint_msgs/GetCruiseTaskInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCruiseTaskInfo-request)))
  "Returns string type for a service object of type 'GetCruiseTaskInfo-request"
  "robint_msgs/GetCruiseTaskInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCruiseTaskInfo-request>)))
  "Returns md5sum for a message object of type '<GetCruiseTaskInfo-request>"
  "30e01ca2aae78308577b217c8f03f041")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCruiseTaskInfo-request)))
  "Returns md5sum for a message object of type 'GetCruiseTaskInfo-request"
  "30e01ca2aae78308577b217c8f03f041")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCruiseTaskInfo-request>)))
  "Returns full string definition for message of type '<GetCruiseTaskInfo-request>"
  (cl:format cl:nil "string task_uuid~%string task_name~%string start_location_uuid~%string end_location_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCruiseTaskInfo-request)))
  "Returns full string definition for message of type 'GetCruiseTaskInfo-request"
  (cl:format cl:nil "string task_uuid~%string task_name~%string start_location_uuid~%string end_location_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCruiseTaskInfo-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_uuid))
     4 (cl:length (cl:slot-value msg 'task_name))
     4 (cl:length (cl:slot-value msg 'start_location_uuid))
     4 (cl:length (cl:slot-value msg 'end_location_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCruiseTaskInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCruiseTaskInfo-request
    (cl:cons ':task_uuid (task_uuid msg))
    (cl:cons ':task_name (task_name msg))
    (cl:cons ':start_location_uuid (start_location_uuid msg))
    (cl:cons ':end_location_uuid (end_location_uuid msg))
))
;//! \htmlinclude GetCruiseTaskInfo-response.msg.html

(cl:defclass <GetCruiseTaskInfo-response> (roslisp-msg-protocol:ros-message)
  ((task_info
    :reader task_info
    :initarg :task_info
    :type robint_msgs-msg:CruiseTaskInfo
    :initform (cl:make-instance 'robint_msgs-msg:CruiseTaskInfo))
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

(cl:defclass GetCruiseTaskInfo-response (<GetCruiseTaskInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCruiseTaskInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCruiseTaskInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCruiseTaskInfo-response> is deprecated: use robint_msgs-srv:GetCruiseTaskInfo-response instead.")))

(cl:ensure-generic-function 'task_info-val :lambda-list '(m))
(cl:defmethod task_info-val ((m <GetCruiseTaskInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:task_info-val is deprecated.  Use robint_msgs-srv:task_info instead.")
  (task_info m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCruiseTaskInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetCruiseTaskInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCruiseTaskInfo-response>) ostream)
  "Serializes a message object of type '<GetCruiseTaskInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_info) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCruiseTaskInfo-response>) istream)
  "Deserializes a message object of type '<GetCruiseTaskInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_info) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCruiseTaskInfo-response>)))
  "Returns string type for a service object of type '<GetCruiseTaskInfo-response>"
  "robint_msgs/GetCruiseTaskInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCruiseTaskInfo-response)))
  "Returns string type for a service object of type 'GetCruiseTaskInfo-response"
  "robint_msgs/GetCruiseTaskInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCruiseTaskInfo-response>)))
  "Returns md5sum for a message object of type '<GetCruiseTaskInfo-response>"
  "30e01ca2aae78308577b217c8f03f041")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCruiseTaskInfo-response)))
  "Returns md5sum for a message object of type 'GetCruiseTaskInfo-response"
  "30e01ca2aae78308577b217c8f03f041")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCruiseTaskInfo-response>)))
  "Returns full string definition for message of type '<GetCruiseTaskInfo-response>"
  (cl:format cl:nil "CruiseTaskInfo task_info~%bool success~%uint8 error_code~%~%================================================================================~%MSG: robint_msgs/CruiseTaskInfo~%Location[] location_list~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCruiseTaskInfo-response)))
  "Returns full string definition for message of type 'GetCruiseTaskInfo-response"
  (cl:format cl:nil "CruiseTaskInfo task_info~%bool success~%uint8 error_code~%~%================================================================================~%MSG: robint_msgs/CruiseTaskInfo~%Location[] location_list~%~%================================================================================~%MSG: robint_msgs/Location~%time timestamp~%string map_name~%string map_uuid~%string location_uuid~%string type_name~%string group_uuid~%string location_name~%geometry_msgs/Pose2D image_pose~%geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCruiseTaskInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_info))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCruiseTaskInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCruiseTaskInfo-response
    (cl:cons ':task_info (task_info msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCruiseTaskInfo)))
  'GetCruiseTaskInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCruiseTaskInfo)))
  'GetCruiseTaskInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCruiseTaskInfo)))
  "Returns string type for a service object of type '<GetCruiseTaskInfo>"
  "robint_msgs/GetCruiseTaskInfo")