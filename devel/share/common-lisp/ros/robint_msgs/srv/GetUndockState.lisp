; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetUndockState-request.msg.html

(cl:defclass <GetUndockState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetUndockState-request (<GetUndockState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUndockState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUndockState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetUndockState-request> is deprecated: use robint_msgs-srv:GetUndockState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUndockState-request>) ostream)
  "Serializes a message object of type '<GetUndockState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUndockState-request>) istream)
  "Deserializes a message object of type '<GetUndockState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUndockState-request>)))
  "Returns string type for a service object of type '<GetUndockState-request>"
  "robint_msgs/GetUndockStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUndockState-request)))
  "Returns string type for a service object of type 'GetUndockState-request"
  "robint_msgs/GetUndockStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUndockState-request>)))
  "Returns md5sum for a message object of type '<GetUndockState-request>"
  "d513c9c0fe2fb5b7d74e100f14d71c4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUndockState-request)))
  "Returns md5sum for a message object of type 'GetUndockState-request"
  "d513c9c0fe2fb5b7d74e100f14d71c4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUndockState-request>)))
  "Returns full string definition for message of type '<GetUndockState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUndockState-request)))
  "Returns full string definition for message of type 'GetUndockState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUndockState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUndockState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUndockState-request
))
;//! \htmlinclude GetUndockState-response.msg.html

(cl:defclass <GetUndockState-response> (roslisp-msg-protocol:ros-message)
  ((undock_state
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

(cl:defclass GetUndockState-response (<GetUndockState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetUndockState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetUndockState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetUndockState-response> is deprecated: use robint_msgs-srv:GetUndockState-response instead.")))

(cl:ensure-generic-function 'undock_state-val :lambda-list '(m))
(cl:defmethod undock_state-val ((m <GetUndockState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:undock_state-val is deprecated.  Use robint_msgs-srv:undock_state instead.")
  (undock_state m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetUndockState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetUndockState-response>) ostream)
  "Serializes a message object of type '<GetUndockState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'undock_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetUndockState-response>) istream)
  "Deserializes a message object of type '<GetUndockState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'undock_state) istream)
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetUndockState-response>)))
  "Returns string type for a service object of type '<GetUndockState-response>"
  "robint_msgs/GetUndockStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUndockState-response)))
  "Returns string type for a service object of type 'GetUndockState-response"
  "robint_msgs/GetUndockStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetUndockState-response>)))
  "Returns md5sum for a message object of type '<GetUndockState-response>"
  "d513c9c0fe2fb5b7d74e100f14d71c4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetUndockState-response)))
  "Returns md5sum for a message object of type 'GetUndockState-response"
  "d513c9c0fe2fb5b7d74e100f14d71c4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetUndockState-response>)))
  "Returns full string definition for message of type '<GetUndockState-response>"
  (cl:format cl:nil "UndockState undock_state~%bool result~%~%================================================================================~%MSG: robint_msgs/UndockState~%TaskStateHeader header~%uint8 status~%uint8 OBSTACLE_WARN=0~%uint8 MOVING=1~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetUndockState-response)))
  "Returns full string definition for message of type 'GetUndockState-response"
  (cl:format cl:nil "UndockState undock_state~%bool result~%~%================================================================================~%MSG: robint_msgs/UndockState~%TaskStateHeader header~%uint8 status~%uint8 OBSTACLE_WARN=0~%uint8 MOVING=1~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetUndockState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'undock_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetUndockState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetUndockState-response
    (cl:cons ':undock_state (undock_state msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetUndockState)))
  'GetUndockState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetUndockState)))
  'GetUndockState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetUndockState)))
  "Returns string type for a service object of type '<GetUndockState>"
  "robint_msgs/GetUndockState")