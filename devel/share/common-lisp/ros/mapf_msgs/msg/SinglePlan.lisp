; Auto-generated. Do not edit!


(cl:in-package mapf_msgs-msg)


;//! \htmlinclude SinglePlan.msg.html

(cl:defclass <SinglePlan> (roslisp-msg-protocol:ros-message)
  ((time_step
    :reader time_step
    :initarg :time_step
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (plan
    :reader plan
    :initarg :plan
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass SinglePlan (<SinglePlan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SinglePlan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SinglePlan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mapf_msgs-msg:<SinglePlan> is deprecated: use mapf_msgs-msg:SinglePlan instead.")))

(cl:ensure-generic-function 'time_step-val :lambda-list '(m))
(cl:defmethod time_step-val ((m <SinglePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapf_msgs-msg:time_step-val is deprecated.  Use mapf_msgs-msg:time_step instead.")
  (time_step m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <SinglePlan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapf_msgs-msg:plan-val is deprecated.  Use mapf_msgs-msg:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SinglePlan>) ostream)
  "Serializes a message object of type '<SinglePlan>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time_step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'time_step))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SinglePlan>) istream)
  "Deserializes a message object of type '<SinglePlan>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'time_step) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time_step)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SinglePlan>)))
  "Returns string type for a message object of type '<SinglePlan>"
  "mapf_msgs/SinglePlan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SinglePlan)))
  "Returns string type for a message object of type 'SinglePlan"
  "mapf_msgs/SinglePlan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SinglePlan>)))
  "Returns md5sum for a message object of type '<SinglePlan>"
  "bee8d3f33f362001a6964a4d3ecc61ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SinglePlan)))
  "Returns md5sum for a message object of type 'SinglePlan"
  "bee8d3f33f362001a6964a4d3ecc61ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SinglePlan>)))
  "Returns full string definition for message of type '<SinglePlan>"
  (cl:format cl:nil "int32[] time_step~%nav_msgs/Path plan~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SinglePlan)))
  "Returns full string definition for message of type 'SinglePlan"
  (cl:format cl:nil "int32[] time_step~%nav_msgs/Path plan~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SinglePlan>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time_step) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SinglePlan>))
  "Converts a ROS message object to a list"
  (cl:list 'SinglePlan
    (cl:cons ':time_step (time_step msg))
    (cl:cons ':plan (plan msg))
))
