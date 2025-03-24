; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude CleaningCommand-request.msg.html

(cl:defclass <CleaningCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (cleaning_area_uuid
    :reader cleaning_area_uuid
    :initarg :cleaning_area_uuid
    :type cl:string
    :initform "")
   (resume_unfinished_task
    :reader resume_unfinished_task
    :initarg :resume_unfinished_task
    :type cl:boolean
    :initform cl:nil)
   (save_cleaning_process
    :reader save_cleaning_process
    :initarg :save_cleaning_process
    :type cl:boolean
    :initform cl:nil)
   (enable_track_contour
    :reader enable_track_contour
    :initarg :enable_track_contour
    :type cl:boolean
    :initform cl:nil)
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

(cl:defclass CleaningCommand-request (<CleaningCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CleaningCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CleaningCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CleaningCommand-request> is deprecated: use robint_msgs-srv:CleaningCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'cleaning_area_uuid-val :lambda-list '(m))
(cl:defmethod cleaning_area_uuid-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:cleaning_area_uuid-val is deprecated.  Use robint_msgs-srv:cleaning_area_uuid instead.")
  (cleaning_area_uuid m))

(cl:ensure-generic-function 'resume_unfinished_task-val :lambda-list '(m))
(cl:defmethod resume_unfinished_task-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:resume_unfinished_task-val is deprecated.  Use robint_msgs-srv:resume_unfinished_task instead.")
  (resume_unfinished_task m))

(cl:ensure-generic-function 'save_cleaning_process-val :lambda-list '(m))
(cl:defmethod save_cleaning_process-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:save_cleaning_process-val is deprecated.  Use robint_msgs-srv:save_cleaning_process instead.")
  (save_cleaning_process m))

(cl:ensure-generic-function 'enable_track_contour-val :lambda-list '(m))
(cl:defmethod enable_track_contour-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:enable_track_contour-val is deprecated.  Use robint_msgs-srv:enable_track_contour instead.")
  (enable_track_contour m))

(cl:ensure-generic-function 'loop_count-val :lambda-list '(m))
(cl:defmethod loop_count-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:loop_count-val is deprecated.  Use robint_msgs-srv:loop_count instead.")
  (loop_count m))

(cl:ensure-generic-function 'track_back_dist-val :lambda-list '(m))
(cl:defmethod track_back_dist-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:track_back_dist-val is deprecated.  Use robint_msgs-srv:track_back_dist instead.")
  (track_back_dist m))

(cl:ensure-generic-function 'enable_break_point-val :lambda-list '(m))
(cl:defmethod enable_break_point-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:enable_break_point-val is deprecated.  Use robint_msgs-srv:enable_break_point instead.")
  (enable_break_point m))

(cl:ensure-generic-function 'break_robot_pose-val :lambda-list '(m))
(cl:defmethod break_robot_pose-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:break_robot_pose-val is deprecated.  Use robint_msgs-srv:break_robot_pose instead.")
  (break_robot_pose m))

(cl:ensure-generic-function 'break_subtask-val :lambda-list '(m))
(cl:defmethod break_subtask-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:break_subtask-val is deprecated.  Use robint_msgs-srv:break_subtask instead.")
  (break_subtask m))

(cl:ensure-generic-function 'break_loop_index-val :lambda-list '(m))
(cl:defmethod break_loop_index-val ((m <CleaningCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:break_loop_index-val is deprecated.  Use robint_msgs-srv:break_loop_index instead.")
  (break_loop_index m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CleaningCommand-request>)))
    "Constants for message type '<CleaningCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:RESUME . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CleaningCommand-request)))
    "Constants for message type 'CleaningCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:RESUME . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CleaningCommand-request>) ostream)
  "Serializes a message object of type '<CleaningCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cleaning_area_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cleaning_area_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'resume_unfinished_task) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'save_cleaning_process) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_track_contour) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CleaningCommand-request>) istream)
  "Deserializes a message object of type '<CleaningCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cleaning_area_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cleaning_area_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'resume_unfinished_task) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'save_cleaning_process) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_track_contour) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CleaningCommand-request>)))
  "Returns string type for a service object of type '<CleaningCommand-request>"
  "robint_msgs/CleaningCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CleaningCommand-request)))
  "Returns string type for a service object of type 'CleaningCommand-request"
  "robint_msgs/CleaningCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CleaningCommand-request>)))
  "Returns md5sum for a message object of type '<CleaningCommand-request>"
  "53d75104790d5d4f0b3ebfae9d23803e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CleaningCommand-request)))
  "Returns md5sum for a message object of type 'CleaningCommand-request"
  "53d75104790d5d4f0b3ebfae9d23803e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CleaningCommand-request>)))
  "Returns full string definition for message of type '<CleaningCommand-request>"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Resume', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 RESUME=2~%uint8 STOP=3~%string cleaning_area_uuid~%bool resume_unfinished_task~%bool save_cleaning_process~%bool enable_track_contour~%int32 loop_count~%float64 track_back_dist~%bool enable_break_point~%geometry_msgs/PoseStamped break_robot_pose~%string break_subtask~%int32 break_loop_index~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CleaningCommand-request)))
  "Returns full string definition for message of type 'CleaningCommand-request"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Resume', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 RESUME=2~%uint8 STOP=3~%string cleaning_area_uuid~%bool resume_unfinished_task~%bool save_cleaning_process~%bool enable_track_contour~%int32 loop_count~%float64 track_back_dist~%bool enable_break_point~%geometry_msgs/PoseStamped break_robot_pose~%string break_subtask~%int32 break_loop_index~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CleaningCommand-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'cleaning_area_uuid))
     1
     1
     1
     4
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'break_robot_pose))
     4 (cl:length (cl:slot-value msg 'break_subtask))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CleaningCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CleaningCommand-request
    (cl:cons ':command (command msg))
    (cl:cons ':cleaning_area_uuid (cleaning_area_uuid msg))
    (cl:cons ':resume_unfinished_task (resume_unfinished_task msg))
    (cl:cons ':save_cleaning_process (save_cleaning_process msg))
    (cl:cons ':enable_track_contour (enable_track_contour msg))
    (cl:cons ':loop_count (loop_count msg))
    (cl:cons ':track_back_dist (track_back_dist msg))
    (cl:cons ':enable_break_point (enable_break_point msg))
    (cl:cons ':break_robot_pose (break_robot_pose msg))
    (cl:cons ':break_subtask (break_subtask msg))
    (cl:cons ':break_loop_index (break_loop_index msg))
))
;//! \htmlinclude CleaningCommand-response.msg.html

(cl:defclass <CleaningCommand-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass CleaningCommand-response (<CleaningCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CleaningCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CleaningCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CleaningCommand-response> is deprecated: use robint_msgs-srv:CleaningCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CleaningCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CleaningCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CleaningCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CleaningCommand-response>) ostream)
  "Serializes a message object of type '<CleaningCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CleaningCommand-response>) istream)
  "Deserializes a message object of type '<CleaningCommand-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CleaningCommand-response>)))
  "Returns string type for a service object of type '<CleaningCommand-response>"
  "robint_msgs/CleaningCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CleaningCommand-response)))
  "Returns string type for a service object of type 'CleaningCommand-response"
  "robint_msgs/CleaningCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CleaningCommand-response>)))
  "Returns md5sum for a message object of type '<CleaningCommand-response>"
  "53d75104790d5d4f0b3ebfae9d23803e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CleaningCommand-response)))
  "Returns md5sum for a message object of type 'CleaningCommand-response"
  "53d75104790d5d4f0b3ebfae9d23803e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CleaningCommand-response>)))
  "Returns full string definition for message of type '<CleaningCommand-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CleaningCommand-response)))
  "Returns full string definition for message of type 'CleaningCommand-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CleaningCommand-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CleaningCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CleaningCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CleaningCommand)))
  'CleaningCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CleaningCommand)))
  'CleaningCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CleaningCommand)))
  "Returns string type for a service object of type '<CleaningCommand>"
  "robint_msgs/CleaningCommand")