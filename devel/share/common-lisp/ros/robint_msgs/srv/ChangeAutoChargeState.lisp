; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude ChangeAutoChargeState-request.msg.html

(cl:defclass <ChangeAutoChargeState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type robint_msgs-msg:AutoChargeState
    :initform (cl:make-instance 'robint_msgs-msg:AutoChargeState)))
)

(cl:defclass ChangeAutoChargeState-request (<ChangeAutoChargeState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeAutoChargeState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeAutoChargeState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ChangeAutoChargeState-request> is deprecated: use robint_msgs-srv:ChangeAutoChargeState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ChangeAutoChargeState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:state-val is deprecated.  Use robint_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeAutoChargeState-request>) ostream)
  "Serializes a message object of type '<ChangeAutoChargeState-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeAutoChargeState-request>) istream)
  "Deserializes a message object of type '<ChangeAutoChargeState-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeAutoChargeState-request>)))
  "Returns string type for a service object of type '<ChangeAutoChargeState-request>"
  "robint_msgs/ChangeAutoChargeStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeAutoChargeState-request)))
  "Returns string type for a service object of type 'ChangeAutoChargeState-request"
  "robint_msgs/ChangeAutoChargeStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeAutoChargeState-request>)))
  "Returns md5sum for a message object of type '<ChangeAutoChargeState-request>"
  "02cfeeb813567a97fc827cd789e6531b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeAutoChargeState-request)))
  "Returns md5sum for a message object of type 'ChangeAutoChargeState-request"
  "02cfeeb813567a97fc827cd789e6531b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeAutoChargeState-request>)))
  "Returns full string definition for message of type '<ChangeAutoChargeState-request>"
  (cl:format cl:nil "AutoChargeState state~%~%================================================================================~%MSG: robint_msgs/AutoChargeState~%TaskStateHeader header~%string state~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeAutoChargeState-request)))
  "Returns full string definition for message of type 'ChangeAutoChargeState-request"
  (cl:format cl:nil "AutoChargeState state~%~%================================================================================~%MSG: robint_msgs/AutoChargeState~%TaskStateHeader header~%string state~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeAutoChargeState-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeAutoChargeState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeAutoChargeState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ChangeAutoChargeState-response.msg.html

(cl:defclass <ChangeAutoChargeState-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeAutoChargeState-response (<ChangeAutoChargeState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeAutoChargeState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeAutoChargeState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<ChangeAutoChargeState-response> is deprecated: use robint_msgs-srv:ChangeAutoChargeState-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ChangeAutoChargeState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeAutoChargeState-response>) ostream)
  "Serializes a message object of type '<ChangeAutoChargeState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeAutoChargeState-response>) istream)
  "Deserializes a message object of type '<ChangeAutoChargeState-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeAutoChargeState-response>)))
  "Returns string type for a service object of type '<ChangeAutoChargeState-response>"
  "robint_msgs/ChangeAutoChargeStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeAutoChargeState-response)))
  "Returns string type for a service object of type 'ChangeAutoChargeState-response"
  "robint_msgs/ChangeAutoChargeStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeAutoChargeState-response>)))
  "Returns md5sum for a message object of type '<ChangeAutoChargeState-response>"
  "02cfeeb813567a97fc827cd789e6531b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeAutoChargeState-response)))
  "Returns md5sum for a message object of type 'ChangeAutoChargeState-response"
  "02cfeeb813567a97fc827cd789e6531b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeAutoChargeState-response>)))
  "Returns full string definition for message of type '<ChangeAutoChargeState-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeAutoChargeState-response)))
  "Returns full string definition for message of type 'ChangeAutoChargeState-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeAutoChargeState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeAutoChargeState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeAutoChargeState-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeAutoChargeState)))
  'ChangeAutoChargeState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeAutoChargeState)))
  'ChangeAutoChargeState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeAutoChargeState)))
  "Returns string type for a service object of type '<ChangeAutoChargeState>"
  "robint_msgs/ChangeAutoChargeState")