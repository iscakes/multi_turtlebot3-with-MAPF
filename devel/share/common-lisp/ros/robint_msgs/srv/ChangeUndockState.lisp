; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude ChangeUndockState-request.msg.html

(cl:defclass <ChangeUndockState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type robint_msgs-msg:UndockState
    :initform (cl:make-instance 'robint_msgs-msg:UndockState)))
)

(cl:defclass ChangeUndockState-request (<ChangeUndockState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeUndockState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeUndockState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ChangeUndockState-request> is deprecated: use robint_msgs-srv:ChangeUndockState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ChangeUndockState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:state-val is deprecated.  Use robint_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeUndockState-request>) ostream)
  "Serializes a message object of type '<ChangeUndockState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeUndockState-request>) istream)
  "Deserializes a message object of type '<ChangeUndockState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeUndockState-request>)))
  "Returns string type for a service object of type '<ChangeUndockState-request>"
  "robint_msgs/ChangeUndockStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeUndockState-request)))
  "Returns string type for a service object of type 'ChangeUndockState-request"
  "robint_msgs/ChangeUndockStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeUndockState-request>)))
  "Returns md5sum for a message object of type '<ChangeUndockState-request>"
  "1df2b32e00d9659a7afd807940e0bc0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeUndockState-request)))
  "Returns md5sum for a message object of type 'ChangeUndockState-request"
  "1df2b32e00d9659a7afd807940e0bc0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeUndockState-request>)))
  "Returns full string definition for message of type '<ChangeUndockState-request>"
  (cl:format cl:nil "UndockState state~%~%================================================================================~%MSG: robint_msgs/UndockState~%TaskStateHeader header~%uint8 status~%uint8 OBSTACLE_WARN=0~%uint8 MOVING=1~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeUndockState-request)))
  "Returns full string definition for message of type 'ChangeUndockState-request"
  (cl:format cl:nil "UndockState state~%~%================================================================================~%MSG: robint_msgs/UndockState~%TaskStateHeader header~%uint8 status~%uint8 OBSTACLE_WARN=0~%uint8 MOVING=1~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeUndockState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeUndockState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeUndockState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ChangeUndockState-response.msg.html

(cl:defclass <ChangeUndockState-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeUndockState-response (<ChangeUndockState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeUndockState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeUndockState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ChangeUndockState-response> is deprecated: use robint_msgs-srv:ChangeUndockState-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ChangeUndockState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeUndockState-response>) ostream)
  "Serializes a message object of type '<ChangeUndockState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeUndockState-response>) istream)
  "Deserializes a message object of type '<ChangeUndockState-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeUndockState-response>)))
  "Returns string type for a service object of type '<ChangeUndockState-response>"
  "robint_msgs/ChangeUndockStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeUndockState-response)))
  "Returns string type for a service object of type 'ChangeUndockState-response"
  "robint_msgs/ChangeUndockStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeUndockState-response>)))
  "Returns md5sum for a message object of type '<ChangeUndockState-response>"
  "1df2b32e00d9659a7afd807940e0bc0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeUndockState-response)))
  "Returns md5sum for a message object of type 'ChangeUndockState-response"
  "1df2b32e00d9659a7afd807940e0bc0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeUndockState-response>)))
  "Returns full string definition for message of type '<ChangeUndockState-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeUndockState-response)))
  "Returns full string definition for message of type 'ChangeUndockState-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeUndockState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeUndockState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeUndockState-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeUndockState)))
  'ChangeUndockState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeUndockState)))
  'ChangeUndockState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeUndockState)))
  "Returns string type for a service object of type '<ChangeUndockState>"
  "robint_msgs/ChangeUndockState")