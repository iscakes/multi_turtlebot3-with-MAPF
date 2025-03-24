; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude CurrentTaskState.msg.html

(cl:defclass <CurrentTaskState> (roslisp-msg-protocol:ros-message)
  ((activated_task_name
    :reader activated_task_name
    :initarg :activated_task_name
    :type cl:string
    :initform "")
   (navigation_state
    :reader navigation_state
    :initarg :navigation_state
    :type robint_msgs-msg:NavigationState
    :initform (cl:make-instance 'robint_msgs-msg:NavigationState))
   (following_state
    :reader following_state
    :initarg :following_state
    :type robint_msgs-msg:FollowingState
    :initform (cl:make-instance 'robint_msgs-msg:FollowingState))
   (patrol_state
    :reader patrol_state
    :initarg :patrol_state
    :type robint_msgs-msg:PatrolState
    :initform (cl:make-instance 'robint_msgs-msg:PatrolState))
   (auto_charge_state
    :reader auto_charge_state
    :initarg :auto_charge_state
    :type robint_msgs-msg:AutoChargeState
    :initform (cl:make-instance 'robint_msgs-msg:AutoChargeState))
   (undock_state
    :reader undock_state
    :initarg :undock_state
    :type robint_msgs-msg:UndockState
    :initform (cl:make-instance 'robint_msgs-msg:UndockState)))
)

(cl:defclass CurrentTaskState (<CurrentTaskState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentTaskState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentTaskState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<CurrentTaskState> is deprecated: use robint_msgs-msg:CurrentTaskState instead.")))

(cl:ensure-generic-function 'activated_task_name-val :lambda-list '(m))
(cl:defmethod activated_task_name-val ((m <CurrentTaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:activated_task_name-val is deprecated.  Use robint_msgs-msg:activated_task_name instead.")
  (activated_task_name m))

(cl:ensure-generic-function 'navigation_state-val :lambda-list '(m))
(cl:defmethod navigation_state-val ((m <CurrentTaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:navigation_state-val is deprecated.  Use robint_msgs-msg:navigation_state instead.")
  (navigation_state m))

(cl:ensure-generic-function 'following_state-val :lambda-list '(m))
(cl:defmethod following_state-val ((m <CurrentTaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:following_state-val is deprecated.  Use robint_msgs-msg:following_state instead.")
  (following_state m))

(cl:ensure-generic-function 'patrol_state-val :lambda-list '(m))
(cl:defmethod patrol_state-val ((m <CurrentTaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:patrol_state-val is deprecated.  Use robint_msgs-msg:patrol_state instead.")
  (patrol_state m))

(cl:ensure-generic-function 'auto_charge_state-val :lambda-list '(m))
(cl:defmethod auto_charge_state-val ((m <CurrentTaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:auto_charge_state-val is deprecated.  Use robint_msgs-msg:auto_charge_state instead.")
  (auto_charge_state m))

(cl:ensure-generic-function 'undock_state-val :lambda-list '(m))
(cl:defmethod undock_state-val ((m <CurrentTaskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:undock_state-val is deprecated.  Use robint_msgs-msg:undock_state instead.")
  (undock_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentTaskState>) ostream)
  "Serializes a message object of type '<CurrentTaskState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'activated_task_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'activated_task_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navigation_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'following_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'patrol_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'auto_charge_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'undock_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentTaskState>) istream)
  "Deserializes a message object of type '<CurrentTaskState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'activated_task_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'activated_task_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navigation_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'following_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'patrol_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'auto_charge_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'undock_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentTaskState>)))
  "Returns string type for a message object of type '<CurrentTaskState>"
  "robint_msgs/CurrentTaskState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentTaskState)))
  "Returns string type for a message object of type 'CurrentTaskState"
  "robint_msgs/CurrentTaskState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentTaskState>)))
  "Returns md5sum for a message object of type '<CurrentTaskState>"
  "9de3599c586d0abeed093da92159956c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentTaskState)))
  "Returns md5sum for a message object of type 'CurrentTaskState"
  "9de3599c586d0abeed093da92159956c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentTaskState>)))
  "Returns full string definition for message of type '<CurrentTaskState>"
  (cl:format cl:nil "string activated_task_name~%NavigationState navigation_state~%FollowingState following_state~%PatrolState patrol_state~%AutoChargeState auto_charge_state~%UndockState undock_state~%================================================================================~%MSG: robint_msgs/NavigationState~%TaskStateHeader header ~%string goal_name~%string location_name~%string goal_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%bool reached~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%================================================================================~%MSG: robint_msgs/FollowingState~%TaskStateHeader header~%uint8 status~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/PatrolState~%TaskStateHeader header~%string state             # \"Running\", \"Stop\", \"Pause\"~%string current_route_name~%string current_goal_name~%bool current_goal_isReached~%bool finished~%================================================================================~%MSG: robint_msgs/AutoChargeState~%TaskStateHeader header~%string state~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/UndockState~%TaskStateHeader header~%uint8 status~%uint8 OBSTACLE_WARN=0~%uint8 MOVING=1~%uint8 r_state~%uint8 r_feedback~%bool finished~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentTaskState)))
  "Returns full string definition for message of type 'CurrentTaskState"
  (cl:format cl:nil "string activated_task_name~%NavigationState navigation_state~%FollowingState following_state~%PatrolState patrol_state~%AutoChargeState auto_charge_state~%UndockState undock_state~%================================================================================~%MSG: robint_msgs/NavigationState~%TaskStateHeader header ~%string goal_name~%string location_name~%string goal_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%bool reached~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%================================================================================~%MSG: robint_msgs/FollowingState~%TaskStateHeader header~%uint8 status~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/PatrolState~%TaskStateHeader header~%string state             # \"Running\", \"Stop\", \"Pause\"~%string current_route_name~%string current_goal_name~%bool current_goal_isReached~%bool finished~%================================================================================~%MSG: robint_msgs/AutoChargeState~%TaskStateHeader header~%string state~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/UndockState~%TaskStateHeader header~%uint8 status~%uint8 OBSTACLE_WARN=0~%uint8 MOVING=1~%uint8 r_state~%uint8 r_feedback~%bool finished~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentTaskState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'activated_task_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navigation_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'following_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'patrol_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auto_charge_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'undock_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentTaskState>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentTaskState
    (cl:cons ':activated_task_name (activated_task_name msg))
    (cl:cons ':navigation_state (navigation_state msg))
    (cl:cons ':following_state (following_state msg))
    (cl:cons ':patrol_state (patrol_state msg))
    (cl:cons ':auto_charge_state (auto_charge_state msg))
    (cl:cons ':undock_state (undock_state msg))
))
