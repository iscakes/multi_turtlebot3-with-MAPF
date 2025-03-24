; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude ChargeBaseInfo.msg.html

(cl:defclass <ChargeBaseInfo> (roslisp-msg-protocol:ros-message)
  ((location_uuid
    :reader location_uuid
    :initarg :location_uuid
    :type cl:string
    :initform "")
   (location_name
    :reader location_name
    :initarg :location_name
    :type cl:string
    :initform "")
   (group_uuid
    :reader group_uuid
    :initarg :group_uuid
    :type cl:string
    :initform "")
   (map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (floor_id
    :reader floor_id
    :initarg :floor_id
    :type cl:string
    :initform "")
   (building_id
    :reader building_id
    :initarg :building_id
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (anchor_pose
    :reader anchor_pose
    :initarg :anchor_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass ChargeBaseInfo (<ChargeBaseInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChargeBaseInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChargeBaseInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<ChargeBaseInfo> is deprecated: use robint_msgs-msg:ChargeBaseInfo instead.")))

(cl:ensure-generic-function 'location_uuid-val :lambda-list '(m))
(cl:defmethod location_uuid-val ((m <ChargeBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:location_uuid-val is deprecated.  Use robint_msgs-msg:location_uuid instead.")
  (location_uuid m))

(cl:ensure-generic-function 'location_name-val :lambda-list '(m))
(cl:defmethod location_name-val ((m <ChargeBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:location_name-val is deprecated.  Use robint_msgs-msg:location_name instead.")
  (location_name m))

(cl:ensure-generic-function 'group_uuid-val :lambda-list '(m))
(cl:defmethod group_uuid-val ((m <ChargeBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:group_uuid-val is deprecated.  Use robint_msgs-msg:group_uuid instead.")
  (group_uuid m))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <ChargeBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:map_uuid-val is deprecated.  Use robint_msgs-msg:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'floor_id-val :lambda-list '(m))
(cl:defmethod floor_id-val ((m <ChargeBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:floor_id-val is deprecated.  Use robint_msgs-msg:floor_id instead.")
  (floor_id m))

(cl:ensure-generic-function 'building_id-val :lambda-list '(m))
(cl:defmethod building_id-val ((m <ChargeBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:building_id-val is deprecated.  Use robint_msgs-msg:building_id instead.")
  (building_id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ChargeBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:pose-val is deprecated.  Use robint_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'anchor_pose-val :lambda-list '(m))
(cl:defmethod anchor_pose-val ((m <ChargeBaseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:anchor_pose-val is deprecated.  Use robint_msgs-msg:anchor_pose instead.")
  (anchor_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChargeBaseInfo>) ostream)
  "Serializes a message object of type '<ChargeBaseInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'floor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'floor_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'building_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'building_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChargeBaseInfo>) istream)
  "Deserializes a message object of type '<ChargeBaseInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'group_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'floor_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'floor_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'building_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'building_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChargeBaseInfo>)))
  "Returns string type for a message object of type '<ChargeBaseInfo>"
  "robint_msgs/ChargeBaseInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChargeBaseInfo)))
  "Returns string type for a message object of type 'ChargeBaseInfo"
  "robint_msgs/ChargeBaseInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChargeBaseInfo>)))
  "Returns md5sum for a message object of type '<ChargeBaseInfo>"
  "f0d4cbfd1ab263fc96b403946bd97599")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChargeBaseInfo)))
  "Returns md5sum for a message object of type 'ChargeBaseInfo"
  "f0d4cbfd1ab263fc96b403946bd97599")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChargeBaseInfo>)))
  "Returns full string definition for message of type '<ChargeBaseInfo>"
  (cl:format cl:nil "string location_uuid~%string location_name~%string group_uuid~%string map_uuid~%string floor_id~%string building_id~%geometry_msgs/PoseStamped pose~%geometry_msgs/PoseStamped anchor_pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChargeBaseInfo)))
  "Returns full string definition for message of type 'ChargeBaseInfo"
  (cl:format cl:nil "string location_uuid~%string location_name~%string group_uuid~%string map_uuid~%string floor_id~%string building_id~%geometry_msgs/PoseStamped pose~%geometry_msgs/PoseStamped anchor_pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChargeBaseInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location_uuid))
     4 (cl:length (cl:slot-value msg 'location_name))
     4 (cl:length (cl:slot-value msg 'group_uuid))
     4 (cl:length (cl:slot-value msg 'map_uuid))
     4 (cl:length (cl:slot-value msg 'floor_id))
     4 (cl:length (cl:slot-value msg 'building_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChargeBaseInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ChargeBaseInfo
    (cl:cons ':location_uuid (location_uuid msg))
    (cl:cons ':location_name (location_name msg))
    (cl:cons ':group_uuid (group_uuid msg))
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':floor_id (floor_id msg))
    (cl:cons ':building_id (building_id msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':anchor_pose (anchor_pose msg))
))
