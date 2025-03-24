; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude ChangeNavigationState-request.msg.html

(cl:defclass <ChangeNavigationState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type robint_msgs-msg:NavigationState
    :initform (cl:make-instance 'robint_msgs-msg:NavigationState)))
)

(cl:defclass ChangeNavigationState-request (<ChangeNavigationState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeNavigationState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeNavigationState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ChangeNavigationState-request> is deprecated: use robint_msgs-srv:ChangeNavigationState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ChangeNavigationState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:state-val is deprecated.  Use robint_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeNavigationState-request>) ostream)
  "Serializes a message object of type '<ChangeNavigationState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeNavigationState-request>) istream)
  "Deserializes a message object of type '<ChangeNavigationState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeNavigationState-request>)))
  "Returns string type for a service object of type '<ChangeNavigationState-request>"
  "robint_msgs/ChangeNavigationStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeNavigationState-request)))
  "Returns string type for a service object of type 'ChangeNavigationState-request"
  "robint_msgs/ChangeNavigationStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeNavigationState-request>)))
  "Returns md5sum for a message object of type '<ChangeNavigationState-request>"
  "7c9692bc48992779a3644fe54d668673")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeNavigationState-request)))
  "Returns md5sum for a message object of type 'ChangeNavigationState-request"
  "7c9692bc48992779a3644fe54d668673")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeNavigationState-request>)))
  "Returns full string definition for message of type '<ChangeNavigationState-request>"
  (cl:format cl:nil "NavigationState state~%~%================================================================================~%MSG: robint_msgs/NavigationState~%TaskStateHeader header ~%string goal_name~%string location_name~%string goal_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%bool reached~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeNavigationState-request)))
  "Returns full string definition for message of type 'ChangeNavigationState-request"
  (cl:format cl:nil "NavigationState state~%~%================================================================================~%MSG: robint_msgs/NavigationState~%TaskStateHeader header ~%string goal_name~%string location_name~%string goal_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%bool reached~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeNavigationState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeNavigationState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeNavigationState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ChangeNavigationState-response.msg.html

(cl:defclass <ChangeNavigationState-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeNavigationState-response (<ChangeNavigationState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeNavigationState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeNavigationState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ChangeNavigationState-response> is deprecated: use robint_msgs-srv:ChangeNavigationState-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ChangeNavigationState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeNavigationState-response>) ostream)
  "Serializes a message object of type '<ChangeNavigationState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeNavigationState-response>) istream)
  "Deserializes a message object of type '<ChangeNavigationState-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeNavigationState-response>)))
  "Returns string type for a service object of type '<ChangeNavigationState-response>"
  "robint_msgs/ChangeNavigationStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeNavigationState-response)))
  "Returns string type for a service object of type 'ChangeNavigationState-response"
  "robint_msgs/ChangeNavigationStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeNavigationState-response>)))
  "Returns md5sum for a message object of type '<ChangeNavigationState-response>"
  "7c9692bc48992779a3644fe54d668673")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeNavigationState-response)))
  "Returns md5sum for a message object of type 'ChangeNavigationState-response"
  "7c9692bc48992779a3644fe54d668673")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeNavigationState-response>)))
  "Returns full string definition for message of type '<ChangeNavigationState-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeNavigationState-response)))
  "Returns full string definition for message of type 'ChangeNavigationState-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeNavigationState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeNavigationState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeNavigationState-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeNavigationState)))
  'ChangeNavigationState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeNavigationState)))
  'ChangeNavigationState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeNavigationState)))
  "Returns string type for a service object of type '<ChangeNavigationState>"
  "robint_msgs/ChangeNavigationState")