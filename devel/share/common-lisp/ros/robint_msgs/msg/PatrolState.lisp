; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude PatrolState.msg.html

(cl:defclass <PatrolState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type robint_msgs-msg:TaskStateHeader
    :initform (cl:make-instance 'robint_msgs-msg:TaskStateHeader))
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (current_route_name
    :reader current_route_name
    :initarg :current_route_name
    :type cl:string
    :initform "")
   (current_goal_name
    :reader current_goal_name
    :initarg :current_goal_name
    :type cl:string
    :initform "")
   (current_goal_isReached
    :reader current_goal_isReached
    :initarg :current_goal_isReached
    :type cl:boolean
    :initform cl:nil)
   (finished
    :reader finished
    :initarg :finished
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PatrolState (<PatrolState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrolState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrolState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<PatrolState> is deprecated: use robint_msgs-msg:PatrolState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PatrolState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:header-val is deprecated.  Use robint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PatrolState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:state-val is deprecated.  Use robint_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'current_route_name-val :lambda-list '(m))
(cl:defmethod current_route_name-val ((m <PatrolState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_route_name-val is deprecated.  Use robint_msgs-msg:current_route_name instead.")
  (current_route_name m))

(cl:ensure-generic-function 'current_goal_name-val :lambda-list '(m))
(cl:defmethod current_goal_name-val ((m <PatrolState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_goal_name-val is deprecated.  Use robint_msgs-msg:current_goal_name instead.")
  (current_goal_name m))

(cl:ensure-generic-function 'current_goal_isReached-val :lambda-list '(m))
(cl:defmethod current_goal_isReached-val ((m <PatrolState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:current_goal_isReached-val is deprecated.  Use robint_msgs-msg:current_goal_isReached instead.")
  (current_goal_isReached m))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <PatrolState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:finished-val is deprecated.  Use robint_msgs-msg:finished instead.")
  (finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrolState>) ostream)
  "Serializes a message object of type '<PatrolState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_route_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_route_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_goal_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_goal_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'current_goal_isReached) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finished) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrolState>) istream)
  "Deserializes a message object of type '<PatrolState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
      (cl:setf (cl:slot-value msg 'current_route_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_route_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_goal_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_goal_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'current_goal_isReached) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'finished) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PatrolState>)))
  "Returns string type for a message object of type '<PatrolState>"
  "robint_msgs/PatrolState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PatrolState)))
  "Returns string type for a message object of type 'PatrolState"
  "robint_msgs/PatrolState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PatrolState>)))
  "Returns md5sum for a message object of type '<PatrolState>"
  "785c44df0181d563e8f2584a56d60a67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrolState)))
  "Returns md5sum for a message object of type 'PatrolState"
  "785c44df0181d563e8f2584a56d60a67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrolState>)))
  "Returns full string definition for message of type '<PatrolState>"
  (cl:format cl:nil "TaskStateHeader header~%string state             # \"Running\", \"Stop\", \"Pause\"~%string current_route_name~%string current_goal_name~%bool current_goal_isReached~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrolState)))
  "Returns full string definition for message of type 'PatrolState"
  (cl:format cl:nil "TaskStateHeader header~%string state             # \"Running\", \"Stop\", \"Pause\"~%string current_route_name~%string current_goal_name~%bool current_goal_isReached~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrolState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'current_route_name))
     4 (cl:length (cl:slot-value msg 'current_goal_name))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrolState>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrolState
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':current_route_name (current_route_name msg))
    (cl:cons ':current_goal_name (current_goal_name msg))
    (cl:cons ':current_goal_isReached (current_goal_isReached msg))
    (cl:cons ':finished (finished msg))
))
