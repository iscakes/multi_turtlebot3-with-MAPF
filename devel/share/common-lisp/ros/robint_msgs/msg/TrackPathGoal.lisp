; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude TrackPathGoal.msg.html

(cl:defclass <TrackPathGoal> (roslisp-msg-protocol:ros-message)
  ((paths
    :reader paths
    :initarg :paths
    :type (cl:vector robint_msgs-msg:PathWithPose)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:PathWithPose :initial-element (cl:make-instance 'robint_msgs-msg:PathWithPose)))
   (boundary
    :reader boundary
    :initarg :boundary
    :type robint_msgs-msg:PathWithPoint
    :initform (cl:make-instance 'robint_msgs-msg:PathWithPoint))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (loop_count
    :reader loop_count
    :initarg :loop_count
    :type cl:integer
    :initform 0)
   (track_back_dist
    :reader track_back_dist
    :initarg :track_back_dist
    :type cl:float
    :initform 0.0)
   (enable_path_interpolation
    :reader enable_path_interpolation
    :initarg :enable_path_interpolation
    :type cl:boolean
    :initform cl:nil)
   (path_group_uuid
    :reader path_group_uuid
    :initarg :path_group_uuid
    :type cl:string
    :initform "")
   (coverage_method
    :reader coverage_method
    :initarg :coverage_method
    :type cl:string
    :initform "")
   (enable_break_point
    :reader enable_break_point
    :initarg :enable_break_point
    :type cl:boolean
    :initform cl:nil)
   (break_robot_pose
    :reader break_robot_pose
    :initarg :break_robot_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (break_subtask
    :reader break_subtask
    :initarg :break_subtask
    :type cl:string
    :initform "")
   (break_loop_index
    :reader break_loop_index
    :initarg :break_loop_index
    :type cl:integer
    :initform 0))
)

(cl:defclass TrackPathGoal (<TrackPathGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackPathGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackPathGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<TrackPathGoal> is deprecated: use robint_msgs-msg:TrackPathGoal instead.")))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:paths-val is deprecated.  Use robint_msgs-msg:paths instead.")
  (paths m))

(cl:ensure-generic-function 'boundary-val :lambda-list '(m))
(cl:defmethod boundary-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:boundary-val is deprecated.  Use robint_msgs-msg:boundary instead.")
  (boundary m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:mode-val is deprecated.  Use robint_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'loop_count-val :lambda-list '(m))
(cl:defmethod loop_count-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:loop_count-val is deprecated.  Use robint_msgs-msg:loop_count instead.")
  (loop_count m))

(cl:ensure-generic-function 'track_back_dist-val :lambda-list '(m))
(cl:defmethod track_back_dist-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:track_back_dist-val is deprecated.  Use robint_msgs-msg:track_back_dist instead.")
  (track_back_dist m))

(cl:ensure-generic-function 'enable_path_interpolation-val :lambda-list '(m))
(cl:defmethod enable_path_interpolation-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:enable_path_interpolation-val is deprecated.  Use robint_msgs-msg:enable_path_interpolation instead.")
  (enable_path_interpolation m))

(cl:ensure-generic-function 'path_group_uuid-val :lambda-list '(m))
(cl:defmethod path_group_uuid-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:path_group_uuid-val is deprecated.  Use robint_msgs-msg:path_group_uuid instead.")
  (path_group_uuid m))

(cl:ensure-generic-function 'coverage_method-val :lambda-list '(m))
(cl:defmethod coverage_method-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:coverage_method-val is deprecated.  Use robint_msgs-msg:coverage_method instead.")
  (coverage_method m))

(cl:ensure-generic-function 'enable_break_point-val :lambda-list '(m))
(cl:defmethod enable_break_point-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:enable_break_point-val is deprecated.  Use robint_msgs-msg:enable_break_point instead.")
  (enable_break_point m))

(cl:ensure-generic-function 'break_robot_pose-val :lambda-list '(m))
(cl:defmethod break_robot_pose-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:break_robot_pose-val is deprecated.  Use robint_msgs-msg:break_robot_pose instead.")
  (break_robot_pose m))

(cl:ensure-generic-function 'break_subtask-val :lambda-list '(m))
(cl:defmethod break_subtask-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:break_subtask-val is deprecated.  Use robint_msgs-msg:break_subtask instead.")
  (break_subtask m))

(cl:ensure-generic-function 'break_loop_index-val :lambda-list '(m))
(cl:defmethod break_loop_index-val ((m <TrackPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:break_loop_index-val is deprecated.  Use robint_msgs-msg:break_loop_index instead.")
  (break_loop_index m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrackPathGoal>)))
    "Constants for message type '<TrackPathGoal>"
  '((:BACKANDFORTH . 0)
    (:LOOP . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrackPathGoal)))
    "Constants for message type 'TrackPathGoal"
  '((:BACKANDFORTH . 0)
    (:LOOP . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackPathGoal>) ostream)
  "Serializes a message object of type '<TrackPathGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'paths))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'boundary) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'loop_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'track_back_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_path_interpolation) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_group_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_group_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'coverage_method))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'coverage_method))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_break_point) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'break_robot_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'break_subtask))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'break_subtask))
  (cl:let* ((signed (cl:slot-value msg 'break_loop_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackPathGoal>) istream)
  "Deserializes a message object of type '<TrackPathGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:PathWithPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'boundary) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'loop_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'track_back_dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'enable_path_interpolation) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_group_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_group_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'coverage_method) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'coverage_method) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enable_break_point) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'break_robot_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'break_subtask) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'break_subtask) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'break_loop_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackPathGoal>)))
  "Returns string type for a message object of type '<TrackPathGoal>"
  "robint_msgs/TrackPathGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackPathGoal)))
  "Returns string type for a message object of type 'TrackPathGoal"
  "robint_msgs/TrackPathGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackPathGoal>)))
  "Returns md5sum for a message object of type '<TrackPathGoal>"
  "61ffb591b1c795b53886c88a6d22f5c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackPathGoal)))
  "Returns md5sum for a message object of type 'TrackPathGoal"
  "61ffb591b1c795b53886c88a6d22f5c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackPathGoal>)))
  "Returns full string definition for message of type '<TrackPathGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%PathWithPose[] paths~%PathWithPoint boundary~%uint8 mode~%uint8 BackAndForth=0~%uint8 Loop=1~%int32 loop_count~%float64 track_back_dist~%bool enable_path_interpolation~%string path_group_uuid~%string coverage_method~%bool enable_break_point~%geometry_msgs/PoseStamped break_robot_pose~%string break_subtask~%int32 break_loop_index~%~%================================================================================~%MSG: robint_msgs/PathWithPose~%uint32 id~%string type~%geometry_msgs/PoseStamped[] poses~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackPathGoal)))
  "Returns full string definition for message of type 'TrackPathGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%PathWithPose[] paths~%PathWithPoint boundary~%uint8 mode~%uint8 BackAndForth=0~%uint8 Loop=1~%int32 loop_count~%float64 track_back_dist~%bool enable_path_interpolation~%string path_group_uuid~%string coverage_method~%bool enable_break_point~%geometry_msgs/PoseStamped break_robot_pose~%string break_subtask~%int32 break_loop_index~%~%================================================================================~%MSG: robint_msgs/PathWithPose~%uint32 id~%string type~%geometry_msgs/PoseStamped[] poses~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackPathGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'boundary))
     1
     4
     8
     1
     4 (cl:length (cl:slot-value msg 'path_group_uuid))
     4 (cl:length (cl:slot-value msg 'coverage_method))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'break_robot_pose))
     4 (cl:length (cl:slot-value msg 'break_subtask))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackPathGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackPathGoal
    (cl:cons ':paths (paths msg))
    (cl:cons ':boundary (boundary msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':loop_count (loop_count msg))
    (cl:cons ':track_back_dist (track_back_dist msg))
    (cl:cons ':enable_path_interpolation (enable_path_interpolation msg))
    (cl:cons ':path_group_uuid (path_group_uuid msg))
    (cl:cons ':coverage_method (coverage_method msg))
    (cl:cons ':enable_break_point (enable_break_point msg))
    (cl:cons ':break_robot_pose (break_robot_pose msg))
    (cl:cons ':break_subtask (break_subtask msg))
    (cl:cons ':break_loop_index (break_loop_index msg))
))
