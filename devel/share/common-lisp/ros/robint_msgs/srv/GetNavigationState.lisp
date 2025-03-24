; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetNavigationState-request.msg.html

(cl:defclass <GetNavigationState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNavigationState-request (<GetNavigationState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNavigationState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNavigationState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetNavigationState-request> is deprecated: use robint_msgs-srv:GetNavigationState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNavigationState-request>) ostream)
  "Serializes a message object of type '<GetNavigationState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNavigationState-request>) istream)
  "Deserializes a message object of type '<GetNavigationState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNavigationState-request>)))
  "Returns string type for a service object of type '<GetNavigationState-request>"
  "robint_msgs/GetNavigationStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavigationState-request)))
  "Returns string type for a service object of type 'GetNavigationState-request"
  "robint_msgs/GetNavigationStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNavigationState-request>)))
  "Returns md5sum for a message object of type '<GetNavigationState-request>"
  "f3610dd921b0fb5ea6025bf47fc93512")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNavigationState-request)))
  "Returns md5sum for a message object of type 'GetNavigationState-request"
  "f3610dd921b0fb5ea6025bf47fc93512")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNavigationState-request>)))
  "Returns full string definition for message of type '<GetNavigationState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNavigationState-request)))
  "Returns full string definition for message of type 'GetNavigationState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNavigationState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNavigationState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNavigationState-request
))
;//! \htmlinclude GetNavigationState-response.msg.html

(cl:defclass <GetNavigationState-response> (roslisp-msg-protocol:ros-message)
  ((navigation_state
    :reader navigation_state
    :initarg :navigation_state
    :type robint_msgs-msg:NavigationState
    :initform (cl:make-instance 'robint_msgs-msg:NavigationState))
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetNavigationState-response (<GetNavigationState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNavigationState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNavigationState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetNavigationState-response> is deprecated: use robint_msgs-srv:GetNavigationState-response instead.")))

(cl:ensure-generic-function 'navigation_state-val :lambda-list '(m))
(cl:defmethod navigation_state-val ((m <GetNavigationState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:navigation_state-val is deprecated.  Use robint_msgs-srv:navigation_state instead.")
  (navigation_state m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetNavigationState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNavigationState-response>) ostream)
  "Serializes a message object of type '<GetNavigationState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navigation_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNavigationState-response>) istream)
  "Deserializes a message object of type '<GetNavigationState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navigation_state) istream)
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNavigationState-response>)))
  "Returns string type for a service object of type '<GetNavigationState-response>"
  "robint_msgs/GetNavigationStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavigationState-response)))
  "Returns string type for a service object of type 'GetNavigationState-response"
  "robint_msgs/GetNavigationStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNavigationState-response>)))
  "Returns md5sum for a message object of type '<GetNavigationState-response>"
  "f3610dd921b0fb5ea6025bf47fc93512")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNavigationState-response)))
  "Returns md5sum for a message object of type 'GetNavigationState-response"
  "f3610dd921b0fb5ea6025bf47fc93512")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNavigationState-response>)))
  "Returns full string definition for message of type '<GetNavigationState-response>"
  (cl:format cl:nil "NavigationState navigation_state~%bool result~%~%================================================================================~%MSG: robint_msgs/NavigationState~%TaskStateHeader header ~%string goal_name~%string location_name~%string goal_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%bool reached~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNavigationState-response)))
  "Returns full string definition for message of type 'GetNavigationState-response"
  (cl:format cl:nil "NavigationState navigation_state~%bool result~%~%================================================================================~%MSG: robint_msgs/NavigationState~%TaskStateHeader header ~%string goal_name~%string location_name~%string goal_group_uuid~%string state~%string feedback~%uint8 r_state~%uint8 r_feedback~%bool reached~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNavigationState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navigation_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNavigationState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNavigationState-response
    (cl:cons ':navigation_state (navigation_state msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNavigationState)))
  'GetNavigationState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNavigationState)))
  'GetNavigationState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavigationState)))
  "Returns string type for a service object of type '<GetNavigationState>"
  "robint_msgs/GetNavigationState")