; Auto-generated. Do not edit!


(cl:in-package mapf_msgs-msg)


;//! \htmlinclude GlobalPlan.msg.html

(cl:defclass <GlobalPlan> (roslisp-msg-protocol:ros-message)
  ((makespan
    :reader makespan
    :initarg :makespan
    :type cl:integer
    :initform 0)
   (global_plan
    :reader global_plan
    :initarg :global_plan
    :type (cl:vector mapf_msgs-msg:SinglePlan)
   :initform (cl:make-array 0 :element-type 'mapf_msgs-msg:SinglePlan :initial-element (cl:make-instance 'mapf_msgs-msg:SinglePlan))))
)

(cl:defclass GlobalPlan (<GlobalPlan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalPlan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalPlan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mapf_msgs-msg:<GlobalPlan> is deprecated: use mapf_msgs-msg:GlobalPlan instead.")))

(cl:ensure-generic-function 'makespan-val :lambda-list '(m))
(cl:defmethod makespan-val ((m <GlobalPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapf_msgs-msg:makespan-val is deprecated.  Use mapf_msgs-msg:makespan instead.")
  (makespan m))

(cl:ensure-generic-function 'global_plan-val :lambda-list '(m))
(cl:defmethod global_plan-val ((m <GlobalPlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapf_msgs-msg:global_plan-val is deprecated.  Use mapf_msgs-msg:global_plan instead.")
  (global_plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalPlan>) ostream)
  "Serializes a message object of type '<GlobalPlan>"
  (cl:let* ((signed (cl:slot-value msg 'makespan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'global_plan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'global_plan))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalPlan>) istream)
  "Deserializes a message object of type '<GlobalPlan>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'makespan) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'global_plan) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'global_plan)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mapf_msgs-msg:SinglePlan))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalPlan>)))
  "Returns string type for a message object of type '<GlobalPlan>"
  "mapf_msgs/GlobalPlan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPlan)))
  "Returns string type for a message object of type 'GlobalPlan"
  "mapf_msgs/GlobalPlan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalPlan>)))
  "Returns md5sum for a message object of type '<GlobalPlan>"
  "c88ab17b5e8e0853d09dd659498bc3eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalPlan)))
  "Returns md5sum for a message object of type 'GlobalPlan"
  "c88ab17b5e8e0853d09dd659498bc3eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalPlan>)))
  "Returns full string definition for message of type '<GlobalPlan>"
  (cl:format cl:nil "int32 makespan~%mapf_msgs/SinglePlan[] global_plan~%================================================================================~%MSG: mapf_msgs/SinglePlan~%int32[] time_step~%nav_msgs/Path plan~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalPlan)))
  "Returns full string definition for message of type 'GlobalPlan"
  (cl:format cl:nil "int32 makespan~%mapf_msgs/SinglePlan[] global_plan~%================================================================================~%MSG: mapf_msgs/SinglePlan~%int32[] time_step~%nav_msgs/Path plan~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalPlan>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'global_plan) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalPlan>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalPlan
    (cl:cons ':makespan (makespan msg))
    (cl:cons ':global_plan (global_plan msg))
))
