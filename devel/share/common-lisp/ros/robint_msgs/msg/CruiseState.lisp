; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude CruiseState.msg.html

(cl:defclass <CruiseState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type robint_msgs-msg:TaskStateHeader
    :initform (cl:make-instance 'robint_msgs-msg:TaskStateHeader))
   (task_name
    :reader task_name
    :initarg :task_name
    :type cl:string
    :initform "")
   (task_uuid
    :reader task_uuid
    :initarg :task_uuid
    :type cl:string
    :initform "")
   (current_goal_name
    :reader current_goal_name
    :initarg :current_goal_name
    :type cl:string
    :initform "")
   (current_goal_group_uuid
    :reader current_goal_group_uuid
    :initarg :current_goal_group_uuid
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
   (percent
    :reader percent
    :initarg :percent
    :type cl:fixnum
    :initform 0)
   (reached
    :reader reached
    :initarg :reached
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CruiseState (<CruiseState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CruiseState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CruiseState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<CruiseState> is deprecated: use robint_msgs-msg:CruiseState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:header-val is deprecated.  Use robint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'task_name-val :lambda-list '(m))
(cl:defmethod task_name-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:task_name-val is deprecated.  Use robint_msgs-msg:task_name instead.")
  (task_name m))

(cl:ensure-generic-function 'task_uuid-val :lambda-list '(m))
(cl:defmethod task_uuid-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:task_uuid-val is deprecated.  Use robint_msgs-msg:task_uuid instead.")
  (task_uuid m))

(cl:ensure-generic-function 'current_goal_name-val :lambda-list '(m))
(cl:defmethod current_goal_name-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_goal_name-val is deprecated.  Use robint_msgs-msg:current_goal_name instead.")
  (current_goal_name m))

(cl:ensure-generic-function 'current_goal_group_uuid-val :lambda-list '(m))
(cl:defmethod current_goal_group_uuid-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_goal_group_uuid-val is deprecated.  Use robint_msgs-msg:current_goal_group_uuid instead.")
  (current_goal_group_uuid m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:state-val is deprecated.  Use robint_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:feedback-val is deprecated.  Use robint_msgs-msg:feedback instead.")
  (feedback m))

(cl:ensure-generic-function 'r_state-val :lambda-list '(m))
(cl:defmethod r_state-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:r_state-val is deprecated.  Use robint_msgs-msg:r_state instead.")
  (r_state m))

(cl:ensure-generic-function 'r_feedback-val :lambda-list '(m))
(cl:defmethod r_feedback-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:r_feedback-val is deprecated.  Use robint_msgs-msg:r_feedback instead.")
  (r_feedback m))

(cl:ensure-generic-function 'percent-val :lambda-list '(m))
(cl:defmethod percent-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:percent-val is deprecated.  Use robint_msgs-msg:percent instead.")
  (percent m))

(cl:ensure-generic-function 'reached-val :lambda-list '(m))
(cl:defmethod reached-val ((m <CruiseState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:reached-val is deprecated.  Use robint_msgs-msg:reached instead.")
  (reached m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CruiseState>) ostream)
  "Serializes a message object of type '<CruiseState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_goal_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_goal_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_goal_group_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_goal_group_uuid))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'percent)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reached) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CruiseState>) istream)
  "Deserializes a message object of type '<CruiseState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
      (cl:setf (cl:slot-value msg 'task_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_goal_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_goal_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_goal_group_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_goal_group_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'percent)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reached) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CruiseState>)))
  "Returns string type for a message object of type '<CruiseState>"
  "robint_msgs/CruiseState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CruiseState)))
  "Returns string type for a message object of type 'CruiseState"
  "robint_msgs/CruiseState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CruiseState>)))
  "Returns md5sum for a message object of type '<CruiseState>"
  "6469f12c17e96e9f4f6ffd773c955576")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CruiseState)))
  "Returns md5sum for a message object of type 'CruiseState"
  "6469f12c17e96e9f4f6ffd773c955576")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CruiseState>)))
  "Returns full string definition for message of type '<CruiseState>"
  (cl:format cl:nil "TaskStateHeader header~%string task_name~%string task_uuid~%string current_goal_name~%string current_goal_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%uint8 percent~%bool reached~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CruiseState)))
  "Returns full string definition for message of type 'CruiseState"
  (cl:format cl:nil "TaskStateHeader header~%string task_name~%string task_uuid~%string current_goal_name~%string current_goal_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%uint8 percent~%bool reached~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CruiseState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'task_name))
     4 (cl:length (cl:slot-value msg 'task_uuid))
     4 (cl:length (cl:slot-value msg 'current_goal_name))
     4 (cl:length (cl:slot-value msg 'current_goal_group_uuid))
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'feedback))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CruiseState>))
  "Converts a ROS message object to a list"
  (cl:list 'CruiseState
    (cl:cons ':header (header msg))
    (cl:cons ':task_name (task_name msg))
    (cl:cons ':task_uuid (task_uuid msg))
    (cl:cons ':current_goal_name (current_goal_name msg))
    (cl:cons ':current_goal_group_uuid (current_goal_group_uuid msg))
    (cl:cons ':state (state msg))
    (cl:cons ':feedback (feedback msg))
    (cl:cons ':r_state (r_state msg))
    (cl:cons ':r_feedback (r_feedback msg))
    (cl:cons ':percent (percent msg))
    (cl:cons ':reached (reached msg))
))
