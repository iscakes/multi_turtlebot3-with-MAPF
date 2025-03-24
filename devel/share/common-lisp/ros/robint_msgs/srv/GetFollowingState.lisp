; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetFollowingState-request.msg.html

(cl:defclass <GetFollowingState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetFollowingState-request (<GetFollowingState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFollowingState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFollowingState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetFollowingState-request> is deprecated: use robint_msgs-srv:GetFollowingState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFollowingState-request>) ostream)
  "Serializes a message object of type '<GetFollowingState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFollowingState-request>) istream)
  "Deserializes a message object of type '<GetFollowingState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFollowingState-request>)))
  "Returns string type for a service object of type '<GetFollowingState-request>"
  "robint_msgs/GetFollowingStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFollowingState-request)))
  "Returns string type for a service object of type 'GetFollowingState-request"
  "robint_msgs/GetFollowingStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFollowingState-request>)))
  "Returns md5sum for a message object of type '<GetFollowingState-request>"
  "3c134d8b81541d1ff34d0ac407ea4463")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFollowingState-request)))
  "Returns md5sum for a message object of type 'GetFollowingState-request"
  "3c134d8b81541d1ff34d0ac407ea4463")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFollowingState-request>)))
  "Returns full string definition for message of type '<GetFollowingState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFollowingState-request)))
  "Returns full string definition for message of type 'GetFollowingState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFollowingState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFollowingState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFollowingState-request
))
;//! \htmlinclude GetFollowingState-response.msg.html

(cl:defclass <GetFollowingState-response> (roslisp-msg-protocol:ros-message)
  ((following_state
    :reader following_state
    :initarg :following_state
    :type robint_msgs-msg:FollowingState
    :initform (cl:make-instance 'robint_msgs-msg:FollowingState))
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetFollowingState-response (<GetFollowingState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetFollowingState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetFollowingState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetFollowingState-response> is deprecated: use robint_msgs-srv:GetFollowingState-response instead.")))

(cl:ensure-generic-function 'following_state-val :lambda-list '(m))
(cl:defmethod following_state-val ((m <GetFollowingState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:following_state-val is deprecated.  Use robint_msgs-srv:following_state instead.")
  (following_state m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetFollowingState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetFollowingState-response>) ostream)
  "Serializes a message object of type '<GetFollowingState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'following_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetFollowingState-response>) istream)
  "Deserializes a message object of type '<GetFollowingState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'following_state) istream)
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetFollowingState-response>)))
  "Returns string type for a service object of type '<GetFollowingState-response>"
  "robint_msgs/GetFollowingStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFollowingState-response)))
  "Returns string type for a service object of type 'GetFollowingState-response"
  "robint_msgs/GetFollowingStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetFollowingState-response>)))
  "Returns md5sum for a message object of type '<GetFollowingState-response>"
  "3c134d8b81541d1ff34d0ac407ea4463")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetFollowingState-response)))
  "Returns md5sum for a message object of type 'GetFollowingState-response"
  "3c134d8b81541d1ff34d0ac407ea4463")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetFollowingState-response>)))
  "Returns full string definition for message of type '<GetFollowingState-response>"
  (cl:format cl:nil "FollowingState following_state~%bool result~%~%================================================================================~%MSG: robint_msgs/FollowingState~%TaskStateHeader header~%uint8 status~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetFollowingState-response)))
  "Returns full string definition for message of type 'GetFollowingState-response"
  (cl:format cl:nil "FollowingState following_state~%bool result~%~%================================================================================~%MSG: robint_msgs/FollowingState~%TaskStateHeader header~%uint8 status~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetFollowingState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'following_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetFollowingState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetFollowingState-response
    (cl:cons ':following_state (following_state msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetFollowingState)))
  'GetFollowingState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetFollowingState)))
  'GetFollowingState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetFollowingState)))
  "Returns string type for a service object of type '<GetFollowingState>"
  "robint_msgs/GetFollowingState")