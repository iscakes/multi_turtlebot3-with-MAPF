; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude ChangeFollowingState-request.msg.html

(cl:defclass <ChangeFollowingState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type robint_msgs-msg:FollowingState
    :initform (cl:make-instance 'robint_msgs-msg:FollowingState)))
)

(cl:defclass ChangeFollowingState-request (<ChangeFollowingState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeFollowingState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeFollowingState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ChangeFollowingState-request> is deprecated: use robint_msgs-srv:ChangeFollowingState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ChangeFollowingState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:state-val is deprecated.  Use robint_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeFollowingState-request>) ostream)
  "Serializes a message object of type '<ChangeFollowingState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeFollowingState-request>) istream)
  "Deserializes a message object of type '<ChangeFollowingState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeFollowingState-request>)))
  "Returns string type for a service object of type '<ChangeFollowingState-request>"
  "robint_msgs/ChangeFollowingStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeFollowingState-request)))
  "Returns string type for a service object of type 'ChangeFollowingState-request"
  "robint_msgs/ChangeFollowingStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeFollowingState-request>)))
  "Returns md5sum for a message object of type '<ChangeFollowingState-request>"
  "2c8b3769a09c611adc7bf5ad44d8b225")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeFollowingState-request)))
  "Returns md5sum for a message object of type 'ChangeFollowingState-request"
  "2c8b3769a09c611adc7bf5ad44d8b225")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeFollowingState-request>)))
  "Returns full string definition for message of type '<ChangeFollowingState-request>"
  (cl:format cl:nil "FollowingState state~%~%================================================================================~%MSG: robint_msgs/FollowingState~%TaskStateHeader header~%uint8 status~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeFollowingState-request)))
  "Returns full string definition for message of type 'ChangeFollowingState-request"
  (cl:format cl:nil "FollowingState state~%~%================================================================================~%MSG: robint_msgs/FollowingState~%TaskStateHeader header~%uint8 status~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeFollowingState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeFollowingState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeFollowingState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ChangeFollowingState-response.msg.html

(cl:defclass <ChangeFollowingState-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeFollowingState-response (<ChangeFollowingState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeFollowingState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeFollowingState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ChangeFollowingState-response> is deprecated: use robint_msgs-srv:ChangeFollowingState-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ChangeFollowingState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeFollowingState-response>) ostream)
  "Serializes a message object of type '<ChangeFollowingState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeFollowingState-response>) istream)
  "Deserializes a message object of type '<ChangeFollowingState-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeFollowingState-response>)))
  "Returns string type for a service object of type '<ChangeFollowingState-response>"
  "robint_msgs/ChangeFollowingStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeFollowingState-response)))
  "Returns string type for a service object of type 'ChangeFollowingState-response"
  "robint_msgs/ChangeFollowingStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeFollowingState-response>)))
  "Returns md5sum for a message object of type '<ChangeFollowingState-response>"
  "2c8b3769a09c611adc7bf5ad44d8b225")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeFollowingState-response)))
  "Returns md5sum for a message object of type 'ChangeFollowingState-response"
  "2c8b3769a09c611adc7bf5ad44d8b225")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeFollowingState-response>)))
  "Returns full string definition for message of type '<ChangeFollowingState-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeFollowingState-response)))
  "Returns full string definition for message of type 'ChangeFollowingState-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeFollowingState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeFollowingState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeFollowingState-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeFollowingState)))
  'ChangeFollowingState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeFollowingState)))
  'ChangeFollowingState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeFollowingState)))
  "Returns string type for a service object of type '<ChangeFollowingState>"
  "robint_msgs/ChangeFollowingState")