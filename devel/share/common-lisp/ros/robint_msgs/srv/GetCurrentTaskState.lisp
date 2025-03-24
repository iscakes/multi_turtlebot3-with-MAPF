; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetCurrentTaskState-request.msg.html

(cl:defclass <GetCurrentTaskState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCurrentTaskState-request (<GetCurrentTaskState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentTaskState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentTaskState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCurrentTaskState-request> is deprecated: use robint_msgs-srv:GetCurrentTaskState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentTaskState-request>) ostream)
  "Serializes a message object of type '<GetCurrentTaskState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentTaskState-request>) istream)
  "Deserializes a message object of type '<GetCurrentTaskState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentTaskState-request>)))
  "Returns string type for a service object of type '<GetCurrentTaskState-request>"
  "robint_msgs/GetCurrentTaskStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentTaskState-request)))
  "Returns string type for a service object of type 'GetCurrentTaskState-request"
  "robint_msgs/GetCurrentTaskStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentTaskState-request>)))
  "Returns md5sum for a message object of type '<GetCurrentTaskState-request>"
  "0454dfaa757e94ce272e735ea4f5d978")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentTaskState-request)))
  "Returns md5sum for a message object of type 'GetCurrentTaskState-request"
  "0454dfaa757e94ce272e735ea4f5d978")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentTaskState-request>)))
  "Returns full string definition for message of type '<GetCurrentTaskState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentTaskState-request)))
  "Returns full string definition for message of type 'GetCurrentTaskState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentTaskState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentTaskState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentTaskState-request
))
;//! \htmlinclude GetCurrentTaskState-response.msg.html

(cl:defclass <GetCurrentTaskState-response> (roslisp-msg-protocol:ros-message)
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
    :initform (cl:make-instance 'robint_msgs-msg:UndockState))
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetCurrentTaskState-response (<GetCurrentTaskState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentTaskState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentTaskState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCurrentTaskState-response> is deprecated: use robint_msgs-srv:GetCurrentTaskState-response instead.")))

(cl:ensure-generic-function 'activated_task_name-val :lambda-list '(m))
(cl:defmethod activated_task_name-val ((m <GetCurrentTaskState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:activated_task_name-val is deprecated.  Use robint_msgs-srv:activated_task_name instead.")
  (activated_task_name m))

(cl:ensure-generic-function 'navigation_state-val :lambda-list '(m))
(cl:defmethod navigation_state-val ((m <GetCurrentTaskState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:navigation_state-val is deprecated.  Use robint_msgs-srv:navigation_state instead.")
  (navigation_state m))

(cl:ensure-generic-function 'following_state-val :lambda-list '(m))
(cl:defmethod following_state-val ((m <GetCurrentTaskState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:following_state-val is deprecated.  Use robint_msgs-srv:following_state instead.")
  (following_state m))

(cl:ensure-generic-function 'patrol_state-val :lambda-list '(m))
(cl:defmethod patrol_state-val ((m <GetCurrentTaskState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:patrol_state-val is deprecated.  Use robint_msgs-srv:patrol_state instead.")
  (patrol_state m))

(cl:ensure-generic-function 'auto_charge_state-val :lambda-list '(m))
(cl:defmethod auto_charge_state-val ((m <GetCurrentTaskState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:auto_charge_state-val is deprecated.  Use robint_msgs-srv:auto_charge_state instead.")
  (auto_charge_state m))

(cl:ensure-generic-function 'undock_state-val :lambda-list '(m))
(cl:defmethod undock_state-val ((m <GetCurrentTaskState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:undock_state-val is deprecated.  Use robint_msgs-srv:undock_state instead.")
  (undock_state m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetCurrentTaskState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentTaskState-response>) ostream)
  "Serializes a message object of type '<GetCurrentTaskState-response>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentTaskState-response>) istream)
  "Deserializes a message object of type '<GetCurrentTaskState-response>"
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
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentTaskState-response>)))
  "Returns string type for a service object of type '<GetCurrentTaskState-response>"
  "robint_msgs/GetCurrentTaskStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentTaskState-response)))
  "Returns string type for a service object of type 'GetCurrentTaskState-response"
  "robint_msgs/GetCurrentTaskStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentTaskState-response>)))
  "Returns md5sum for a message object of type '<GetCurrentTaskState-response>"
  "0454dfaa757e94ce272e735ea4f5d978")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentTaskState-response)))
  "Returns md5sum for a message object of type 'GetCurrentTaskState-response"
  "0454dfaa757e94ce272e735ea4f5d978")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentTaskState-response>)))
  "Returns full string definition for message of type '<GetCurrentTaskState-response>"
  (cl:format cl:nil "string activated_task_name~%NavigationState navigation_state~%FollowingState following_state~%PatrolState patrol_state~%AutoChargeState auto_charge_state~%UndockState undock_state~%bool result~%~%================================================================================~%MSG: robint_msgs/NavigationState~%TaskStateHeader header ~%string goal_name~%string location_name~%string goal_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%bool reached~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%================================================================================~%MSG: robint_msgs/FollowingState~%TaskStateHeader header~%uint8 status~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/PatrolState~%TaskStateHeader header~%string state             # \"Running\", \"Stop\", \"Pause\"~%string current_route_name~%string current_goal_name~%bool current_goal_isReached~%bool finished~%================================================================================~%MSG: robint_msgs/AutoChargeState~%TaskStateHeader header~%string state~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/UndockState~%TaskStateHeader header~%uint8 status~%uint8 OBSTACLE_WARN=0~%uint8 MOVING=1~%uint8 r_state~%uint8 r_feedback~%bool finished~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentTaskState-response)))
  "Returns full string definition for message of type 'GetCurrentTaskState-response"
  (cl:format cl:nil "string activated_task_name~%NavigationState navigation_state~%FollowingState following_state~%PatrolState patrol_state~%AutoChargeState auto_charge_state~%UndockState undock_state~%bool result~%~%================================================================================~%MSG: robint_msgs/NavigationState~%TaskStateHeader header ~%string goal_name~%string location_name~%string goal_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%bool reached~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%================================================================================~%MSG: robint_msgs/FollowingState~%TaskStateHeader header~%uint8 status~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/PatrolState~%TaskStateHeader header~%string state             # \"Running\", \"Stop\", \"Pause\"~%string current_route_name~%string current_goal_name~%bool current_goal_isReached~%bool finished~%================================================================================~%MSG: robint_msgs/AutoChargeState~%TaskStateHeader header~%string state~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/UndockState~%TaskStateHeader header~%uint8 status~%uint8 OBSTACLE_WARN=0~%uint8 MOVING=1~%uint8 r_state~%uint8 r_feedback~%bool finished~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentTaskState-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'activated_task_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navigation_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'following_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'patrol_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auto_charge_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'undock_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentTaskState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentTaskState-response
    (cl:cons ':activated_task_name (activated_task_name msg))
    (cl:cons ':navigation_state (navigation_state msg))
    (cl:cons ':following_state (following_state msg))
    (cl:cons ':patrol_state (patrol_state msg))
    (cl:cons ':auto_charge_state (auto_charge_state msg))
    (cl:cons ':undock_state (undock_state msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurrentTaskState)))
  'GetCurrentTaskState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurrentTaskState)))
  'GetCurrentTaskState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentTaskState)))
  "Returns string type for a service object of type '<GetCurrentTaskState>"
  "robint_msgs/GetCurrentTaskState")