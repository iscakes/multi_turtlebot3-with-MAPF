; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude TrackingPathState.msg.html

(cl:defclass <TrackingPathState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type robint_msgs-msg:TaskStateHeader
    :initform (cl:make-instance 'robint_msgs-msg:TaskStateHeader))
   (path_name
    :reader path_name
    :initarg :path_name
    :type cl:string
    :initform "")
   (path_uuid
    :reader path_uuid
    :initarg :path_uuid
    :type cl:string
    :initform "")
   (path_group_uuid
    :reader path_group_uuid
    :initarg :path_group_uuid
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform "")
   (r_state
    :reader r_state
    :initarg :r_state
    :type cl:fixnum
    :initform 0)
   (r_feedback
    :reader r_feedback
    :initarg :r_feedback
    :type cl:fixnum
    :initform 0)
   (progress
    :reader progress
    :initarg :progress
    :type cl:float
    :initform 0.0)
   (current_loop_index
    :reader current_loop_index
    :initarg :current_loop_index
    :type cl:integer
    :initform 0)
   (subtask
    :reader subtask
    :initarg :subtask
    :type cl:string
    :initform "")
   (high_speed_status
    :reader high_speed_status
    :initarg :high_speed_status
    :type cl:boolean
    :initform cl:nil)
   (finished
    :reader finished
    :initarg :finished
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrackingPathState (<TrackingPathState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackingPathState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackingPathState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<TrackingPathState> is deprecated: use robint_msgs-msg:TrackingPathState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:header-val is deprecated.  Use robint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'path_name-val :lambda-list '(m))
(cl:defmethod path_name-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:path_name-val is deprecated.  Use robint_msgs-msg:path_name instead.")
  (path_name m))

(cl:ensure-generic-function 'path_uuid-val :lambda-list '(m))
(cl:defmethod path_uuid-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:path_uuid-val is deprecated.  Use robint_msgs-msg:path_uuid instead.")
  (path_uuid m))

(cl:ensure-generic-function 'path_group_uuid-val :lambda-list '(m))
(cl:defmethod path_group_uuid-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:path_group_uuid-val is deprecated.  Use robint_msgs-msg:path_group_uuid instead.")
  (path_group_uuid m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:state-val is deprecated.  Use robint_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:feedback-val is deprecated.  Use robint_msgs-msg:feedback instead.")
  (feedback m))

(cl:ensure-generic-function 'r_state-val :lambda-list '(m))
(cl:defmethod r_state-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:r_state-val is deprecated.  Use robint_msgs-msg:r_state instead.")
  (r_state m))

(cl:ensure-generic-function 'r_feedback-val :lambda-list '(m))
(cl:defmethod r_feedback-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:r_feedback-val is deprecated.  Use robint_msgs-msg:r_feedback instead.")
  (r_feedback m))

(cl:ensure-generic-function 'progress-val :lambda-list '(m))
(cl:defmethod progress-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:progress-val is deprecated.  Use robint_msgs-msg:progress instead.")
  (progress m))

(cl:ensure-generic-function 'current_loop_index-val :lambda-list '(m))
(cl:defmethod current_loop_index-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_loop_index-val is deprecated.  Use robint_msgs-msg:current_loop_index instead.")
  (current_loop_index m))

(cl:ensure-generic-function 'subtask-val :lambda-list '(m))
(cl:defmethod subtask-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:subtask-val is deprecated.  Use robint_msgs-msg:subtask instead.")
  (subtask m))

(cl:ensure-generic-function 'high_speed_status-val :lambda-list '(m))
(cl:defmethod high_speed_status-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:high_speed_status-val is deprecated.  Use robint_msgs-msg:high_speed_status instead.")
  (high_speed_status m))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <TrackingPathState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:finished-val is deprecated.  Use robint_msgs-msg:finished instead.")
  (finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackingPathState>) ostream)
  "Serializes a message object of type '<TrackingPathState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_group_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_group_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_feedback)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'progress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'current_loop_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'subtask))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'subtask))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'high_speed_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finished) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackingPathState>) istream)
  "Deserializes a message object of type '<TrackingPathState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_feedback)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'progress) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_loop_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subtask) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'subtask) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'high_speed_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'finished) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackingPathState>)))
  "Returns string type for a message object of type '<TrackingPathState>"
  "robint_msgs/TrackingPathState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackingPathState)))
  "Returns string type for a message object of type 'TrackingPathState"
  "robint_msgs/TrackingPathState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackingPathState>)))
  "Returns md5sum for a message object of type '<TrackingPathState>"
  "e85e55ca5dc1fe8c31d4a12fbf57df8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackingPathState)))
  "Returns md5sum for a message object of type 'TrackingPathState"
  "e85e55ca5dc1fe8c31d4a12fbf57df8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackingPathState>)))
  "Returns full string definition for message of type '<TrackingPathState>"
  (cl:format cl:nil "TaskStateHeader header ~%string path_name~%string path_uuid~%string path_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%float32 progress~%int32 current_loop_index~%string subtask~%bool high_speed_status~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackingPathState)))
  "Returns full string definition for message of type 'TrackingPathState"
  (cl:format cl:nil "TaskStateHeader header ~%string path_name~%string path_uuid~%string path_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%float32 progress~%int32 current_loop_index~%string subtask~%bool high_speed_status~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackingPathState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'path_name))
     4 (cl:length (cl:slot-value msg 'path_uuid))
     4 (cl:length (cl:slot-value msg 'path_group_uuid))
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'feedback))
     1
     1
     4
     4
     4 (cl:length (cl:slot-value msg 'subtask))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackingPathState>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackingPathState
    (cl:cons ':header (header msg))
    (cl:cons ':path_name (path_name msg))
    (cl:cons ':path_uuid (path_uuid msg))
    (cl:cons ':path_group_uuid (path_group_uuid msg))
    (cl:cons ':state (state msg))
    (cl:cons ':feedback (feedback msg))
    (cl:cons ':r_state (r_state msg))
    (cl:cons ':r_feedback (r_feedback msg))
    (cl:cons ':progress (progress msg))
    (cl:cons ':current_loop_index (current_loop_index msg))
    (cl:cons ':subtask (subtask msg))
    (cl:cons ':high_speed_status (high_speed_status msg))
    (cl:cons ':finished (finished msg))
))
