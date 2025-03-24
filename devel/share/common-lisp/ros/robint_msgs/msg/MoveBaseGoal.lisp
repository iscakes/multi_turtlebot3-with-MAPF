; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude MoveBaseGoal.msg.html

(cl:defclass <MoveBaseGoal> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_type
    :reader goal_type
    :initarg :goal_type
    :type cl:string
    :initform "")
   (enable_goal_candidate_search
    :reader enable_goal_candidate_search
    :initarg :enable_goal_candidate_search
    :type cl:boolean
    :initform cl:nil)
   (enable_goal_increase_tolerance
    :reader enable_goal_increase_tolerance
    :initarg :enable_goal_increase_tolerance
    :type cl:boolean
    :initform cl:nil)
   (enable_fixed_straight_path
    :reader enable_fixed_straight_path
    :initarg :enable_fixed_straight_path
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveBaseGoal (<MoveBaseGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveBaseGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveBaseGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<MoveBaseGoal> is deprecated: use robint_msgs-msg:MoveBaseGoal instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <MoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:target_pose-val is deprecated.  Use robint_msgs-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'goal_type-val :lambda-list '(m))
(cl:defmethod goal_type-val ((m <MoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:goal_type-val is deprecated.  Use robint_msgs-msg:goal_type instead.")
  (goal_type m))

(cl:ensure-generic-function 'enable_goal_candidate_search-val :lambda-list '(m))
(cl:defmethod enable_goal_candidate_search-val ((m <MoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:enable_goal_candidate_search-val is deprecated.  Use robint_msgs-msg:enable_goal_candidate_search instead.")
  (enable_goal_candidate_search m))

(cl:ensure-generic-function 'enable_goal_increase_tolerance-val :lambda-list '(m))
(cl:defmethod enable_goal_increase_tolerance-val ((m <MoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:enable_goal_increase_tolerance-val is deprecated.  Use robint_msgs-msg:enable_goal_increase_tolerance instead.")
  (enable_goal_increase_tolerance m))

(cl:ensure-generic-function 'enable_fixed_straight_path-val :lambda-list '(m))
(cl:defmethod enable_fixed_straight_path-val ((m <MoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:enable_fixed_straight_path-val is deprecated.  Use robint_msgs-msg:enable_fixed_straight_path instead.")
  (enable_fixed_straight_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveBaseGoal>) ostream)
  "Serializes a message object of type '<MoveBaseGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_goal_candidate_search) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_goal_increase_tolerance) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_fixed_straight_path) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveBaseGoal>) istream)
  "Deserializes a message object of type '<MoveBaseGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enable_goal_candidate_search) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_goal_increase_tolerance) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_fixed_straight_path) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveBaseGoal>)))
  "Returns string type for a message object of type '<MoveBaseGoal>"
  "robint_msgs/MoveBaseGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveBaseGoal)))
  "Returns string type for a message object of type 'MoveBaseGoal"
  "robint_msgs/MoveBaseGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveBaseGoal>)))
  "Returns md5sum for a message object of type '<MoveBaseGoal>"
  "fb8462c79e86387a5e3c986ae0b122df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveBaseGoal)))
  "Returns md5sum for a message object of type 'MoveBaseGoal"
  "fb8462c79e86387a5e3c986ae0b122df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveBaseGoal>)))
  "Returns full string definition for message of type '<MoveBaseGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped target_pose~%string goal_type~%bool enable_goal_candidate_search~%bool enable_goal_increase_tolerance~%bool enable_fixed_straight_path~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveBaseGoal)))
  "Returns full string definition for message of type 'MoveBaseGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/PoseStamped target_pose~%string goal_type~%bool enable_goal_candidate_search~%bool enable_goal_increase_tolerance~%bool enable_fixed_straight_path~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveBaseGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     4 (cl:length (cl:slot-value msg 'goal_type))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveBaseGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveBaseGoal
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':goal_type (goal_type msg))
    (cl:cons ':enable_goal_candidate_search (enable_goal_candidate_search msg))
    (cl:cons ':enable_goal_increase_tolerance (enable_goal_increase_tolerance msg))
    (cl:cons ':enable_fixed_straight_path (enable_fixed_straight_path msg))
))
