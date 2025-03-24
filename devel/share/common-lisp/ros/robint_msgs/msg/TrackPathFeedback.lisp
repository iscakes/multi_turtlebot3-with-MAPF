; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude TrackPathFeedback.msg.html

(cl:defclass <TrackPathFeedback> (roslisp-msg-protocol:ros-message)
  ((base_position
    :reader base_position
    :initarg :base_position
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (current_loop_index
    :reader current_loop_index
    :initarg :current_loop_index
    :type cl:integer
    :initform 0)
   (progress
    :reader progress
    :initarg :progress
    :type cl:float
    :initform 0.0)
   (high_speed_status
    :reader high_speed_status
    :initarg :high_speed_status
    :type cl:boolean
    :initform cl:nil)
   (subtask
    :reader subtask
    :initarg :subtask
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrackPathFeedback (<TrackPathFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackPathFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackPathFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<TrackPathFeedback> is deprecated: use robint_msgs-msg:TrackPathFeedback instead.")))

(cl:ensure-generic-function 'base_position-val :lambda-list '(m))
(cl:defmethod base_position-val ((m <TrackPathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:base_position-val is deprecated.  Use robint_msgs-msg:base_position instead.")
  (base_position m))

(cl:ensure-generic-function 'current_loop_index-val :lambda-list '(m))
(cl:defmethod current_loop_index-val ((m <TrackPathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_loop_index-val is deprecated.  Use robint_msgs-msg:current_loop_index instead.")
  (current_loop_index m))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <TrackPathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:progress-val is deprecated.  Use robint_msgs-msg:progress instead.")
  (progress m))

(cl:ensure-generic-function 'high_speed_status-val :lambda-list '(m))
(cl:defmethod high_speed_status-val ((m <TrackPathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:high_speed_status-val is deprecated.  Use robint_msgs-msg:high_speed_status instead.")
  (high_speed_status m))

(cl:ensure-generic-function 'subtask-val :lambda-list '(m))
(cl:defmethod subtask-val ((m <TrackPathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:subtask-val is deprecated.  Use robint_msgs-msg:subtask instead.")
  (subtask m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <TrackPathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:state-val is deprecated.  Use robint_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TrackPathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:status-val is deprecated.  Use robint_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackPathFeedback>) ostream)
  "Serializes a message object of type '<TrackPathFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base_position) ostream)
  (cl:let* ((signed (cl:slot-value msg 'current_loop_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'high_speed_status) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subtask))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subtask))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackPathFeedback>) istream)
  "Deserializes a message object of type '<TrackPathFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base_position) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_loop_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'progress) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'high_speed_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subtask) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subtask) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackPathFeedback>)))
  "Returns string type for a message object of type '<TrackPathFeedback>"
  "robint_msgs/TrackPathFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackPathFeedback)))
  "Returns string type for a message object of type 'TrackPathFeedback"
  "robint_msgs/TrackPathFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackPathFeedback>)))
  "Returns md5sum for a message object of type '<TrackPathFeedback>"
  "eb8e7ca299d8bec46f0c1dba808f611c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackPathFeedback)))
  "Returns md5sum for a message object of type 'TrackPathFeedback"
  "eb8e7ca299d8bec46f0c1dba808f611c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackPathFeedback>)))
  "Returns full string definition for message of type '<TrackPathFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped base_position~%int32 current_loop_index~%float32 progress~%bool high_speed_status~%string subtask # \"None\", \"Follow_Wall\", \"Track_OuterPath\", \"Track_InnerPath\"~%string state~%uint8 status~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackPathFeedback)))
  "Returns full string definition for message of type 'TrackPathFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped base_position~%int32 current_loop_index~%float32 progress~%bool high_speed_status~%string subtask # \"None\", \"Follow_Wall\", \"Track_OuterPath\", \"Track_InnerPath\"~%string state~%uint8 status~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackPathFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base_position))
     4
     4
     1
     4 (cl:length (cl:slot-value msg 'subtask))
     4 (cl:length (cl:slot-value msg 'state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackPathFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackPathFeedback
    (cl:cons ':base_position (base_position msg))
    (cl:cons ':current_loop_index (current_loop_index msg))
    (cl:cons ':progress (progress msg))
    (cl:cons ':high_speed_status (high_speed_status msg))
    (cl:cons ':subtask (subtask msg))
    (cl:cons ':state (state msg))
    (cl:cons ':status (status msg))
))
