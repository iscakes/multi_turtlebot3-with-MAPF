; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude ChangePatrolState-request.msg.html

(cl:defclass <ChangePatrolState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type robint_msgs-msg:PatrolState
    :initform (cl:make-instance 'robint_msgs-msg:PatrolState)))
)

(cl:defclass ChangePatrolState-request (<ChangePatrolState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangePatrolState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangePatrolState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ChangePatrolState-request> is deprecated: use robint_msgs-srv:ChangePatrolState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ChangePatrolState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:state-val is deprecated.  Use robint_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangePatrolState-request>) ostream)
  "Serializes a message object of type '<ChangePatrolState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangePatrolState-request>) istream)
  "Deserializes a message object of type '<ChangePatrolState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangePatrolState-request>)))
  "Returns string type for a service object of type '<ChangePatrolState-request>"
  "robint_msgs/ChangePatrolStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangePatrolState-request)))
  "Returns string type for a service object of type 'ChangePatrolState-request"
  "robint_msgs/ChangePatrolStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangePatrolState-request>)))
  "Returns md5sum for a message object of type '<ChangePatrolState-request>"
  "fe45eb3e06327f9be9820eacec95ce2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangePatrolState-request)))
  "Returns md5sum for a message object of type 'ChangePatrolState-request"
  "fe45eb3e06327f9be9820eacec95ce2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangePatrolState-request>)))
  "Returns full string definition for message of type '<ChangePatrolState-request>"
  (cl:format cl:nil "PatrolState state~%~%================================================================================~%MSG: robint_msgs/PatrolState~%TaskStateHeader header~%string state             # \"Running\", \"Stop\", \"Pause\"~%string current_route_name~%string current_goal_name~%bool current_goal_isReached~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangePatrolState-request)))
  "Returns full string definition for message of type 'ChangePatrolState-request"
  (cl:format cl:nil "PatrolState state~%~%================================================================================~%MSG: robint_msgs/PatrolState~%TaskStateHeader header~%string state             # \"Running\", \"Stop\", \"Pause\"~%string current_route_name~%string current_goal_name~%bool current_goal_isReached~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangePatrolState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangePatrolState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangePatrolState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ChangePatrolState-response.msg.html

(cl:defclass <ChangePatrolState-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangePatrolState-response (<ChangePatrolState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangePatrolState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangePatrolState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ChangePatrolState-response> is deprecated: use robint_msgs-srv:ChangePatrolState-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ChangePatrolState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangePatrolState-response>) ostream)
  "Serializes a message object of type '<ChangePatrolState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangePatrolState-response>) istream)
  "Deserializes a message object of type '<ChangePatrolState-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangePatrolState-response>)))
  "Returns string type for a service object of type '<ChangePatrolState-response>"
  "robint_msgs/ChangePatrolStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangePatrolState-response)))
  "Returns string type for a service object of type 'ChangePatrolState-response"
  "robint_msgs/ChangePatrolStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangePatrolState-response>)))
  "Returns md5sum for a message object of type '<ChangePatrolState-response>"
  "fe45eb3e06327f9be9820eacec95ce2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangePatrolState-response)))
  "Returns md5sum for a message object of type 'ChangePatrolState-response"
  "fe45eb3e06327f9be9820eacec95ce2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangePatrolState-response>)))
  "Returns full string definition for message of type '<ChangePatrolState-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangePatrolState-response)))
  "Returns full string definition for message of type 'ChangePatrolState-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangePatrolState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangePatrolState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangePatrolState-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangePatrolState)))
  'ChangePatrolState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangePatrolState)))
  'ChangePatrolState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangePatrolState)))
  "Returns string type for a service object of type '<ChangePatrolState>"
  "robint_msgs/ChangePatrolState")