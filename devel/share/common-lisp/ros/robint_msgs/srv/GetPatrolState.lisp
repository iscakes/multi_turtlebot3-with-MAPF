; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetPatrolState-request.msg.html

(cl:defclass <GetPatrolState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPatrolState-request (<GetPatrolState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPatrolState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPatrolState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetPatrolState-request> is deprecated: use robint_msgs-srv:GetPatrolState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPatrolState-request>) ostream)
  "Serializes a message object of type '<GetPatrolState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPatrolState-request>) istream)
  "Deserializes a message object of type '<GetPatrolState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPatrolState-request>)))
  "Returns string type for a service object of type '<GetPatrolState-request>"
  "robint_msgs/GetPatrolStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPatrolState-request)))
  "Returns string type for a service object of type 'GetPatrolState-request"
  "robint_msgs/GetPatrolStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPatrolState-request>)))
  "Returns md5sum for a message object of type '<GetPatrolState-request>"
  "7e3cb361868f6beb35b772468bb8cf09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPatrolState-request)))
  "Returns md5sum for a message object of type 'GetPatrolState-request"
  "7e3cb361868f6beb35b772468bb8cf09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPatrolState-request>)))
  "Returns full string definition for message of type '<GetPatrolState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPatrolState-request)))
  "Returns full string definition for message of type 'GetPatrolState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPatrolState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPatrolState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPatrolState-request
))
;//! \htmlinclude GetPatrolState-response.msg.html

(cl:defclass <GetPatrolState-response> (roslisp-msg-protocol:ros-message)
  ((patrol_state
    :reader patrol_state
    :initarg :patrol_state
    :type robint_msgs-msg:PatrolState
    :initform (cl:make-instance 'robint_msgs-msg:PatrolState))
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetPatrolState-response (<GetPatrolState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPatrolState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPatrolState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetPatrolState-response> is deprecated: use robint_msgs-srv:GetPatrolState-response instead.")))

(cl:ensure-generic-function 'patrol_state-val :lambda-list '(m))
(cl:defmethod patrol_state-val ((m <GetPatrolState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:patrol_state-val is deprecated.  Use robint_msgs-srv:patrol_state instead.")
  (patrol_state m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetPatrolState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPatrolState-response>) ostream)
  "Serializes a message object of type '<GetPatrolState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'patrol_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPatrolState-response>) istream)
  "Deserializes a message object of type '<GetPatrolState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'patrol_state) istream)
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPatrolState-response>)))
  "Returns string type for a service object of type '<GetPatrolState-response>"
  "robint_msgs/GetPatrolStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPatrolState-response)))
  "Returns string type for a service object of type 'GetPatrolState-response"
  "robint_msgs/GetPatrolStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPatrolState-response>)))
  "Returns md5sum for a message object of type '<GetPatrolState-response>"
  "7e3cb361868f6beb35b772468bb8cf09")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPatrolState-response)))
  "Returns md5sum for a message object of type 'GetPatrolState-response"
  "7e3cb361868f6beb35b772468bb8cf09")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPatrolState-response>)))
  "Returns full string definition for message of type '<GetPatrolState-response>"
  (cl:format cl:nil "PatrolState patrol_state~%bool result~%~%================================================================================~%MSG: robint_msgs/PatrolState~%TaskStateHeader header~%string state             # \"Running\", \"Stop\", \"Pause\"~%string current_route_name~%string current_goal_name~%bool current_goal_isReached~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPatrolState-response)))
  "Returns full string definition for message of type 'GetPatrolState-response"
  (cl:format cl:nil "PatrolState patrol_state~%bool result~%~%================================================================================~%MSG: robint_msgs/PatrolState~%TaskStateHeader header~%string state             # \"Running\", \"Stop\", \"Pause\"~%string current_route_name~%string current_goal_name~%bool current_goal_isReached~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPatrolState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'patrol_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPatrolState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPatrolState-response
    (cl:cons ':patrol_state (patrol_state msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPatrolState)))
  'GetPatrolState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPatrolState)))
  'GetPatrolState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPatrolState)))
  "Returns string type for a service object of type '<GetPatrolState>"
  "robint_msgs/GetPatrolState")