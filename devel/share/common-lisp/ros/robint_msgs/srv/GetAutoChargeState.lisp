; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetAutoChargeState-request.msg.html

(cl:defclass <GetAutoChargeState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAutoChargeState-request (<GetAutoChargeState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAutoChargeState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAutoChargeState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetAutoChargeState-request> is deprecated: use robint_msgs-srv:GetAutoChargeState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAutoChargeState-request>) ostream)
  "Serializes a message object of type '<GetAutoChargeState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAutoChargeState-request>) istream)
  "Deserializes a message object of type '<GetAutoChargeState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAutoChargeState-request>)))
  "Returns string type for a service object of type '<GetAutoChargeState-request>"
  "robint_msgs/GetAutoChargeStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAutoChargeState-request)))
  "Returns string type for a service object of type 'GetAutoChargeState-request"
  "robint_msgs/GetAutoChargeStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAutoChargeState-request>)))
  "Returns md5sum for a message object of type '<GetAutoChargeState-request>"
  "f6d99ed8da38328f3d700d808197028c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAutoChargeState-request)))
  "Returns md5sum for a message object of type 'GetAutoChargeState-request"
  "f6d99ed8da38328f3d700d808197028c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAutoChargeState-request>)))
  "Returns full string definition for message of type '<GetAutoChargeState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAutoChargeState-request)))
  "Returns full string definition for message of type 'GetAutoChargeState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAutoChargeState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAutoChargeState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAutoChargeState-request
))
;//! \htmlinclude GetAutoChargeState-response.msg.html

(cl:defclass <GetAutoChargeState-response> (roslisp-msg-protocol:ros-message)
  ((auto_charge_state
    :reader auto_charge_state
    :initarg :auto_charge_state
    :type robint_msgs-msg:AutoChargeState
    :initform (cl:make-instance 'robint_msgs-msg:AutoChargeState))
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetAutoChargeState-response (<GetAutoChargeState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAutoChargeState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAutoChargeState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetAutoChargeState-response> is deprecated: use robint_msgs-srv:GetAutoChargeState-response instead.")))

(cl:ensure-generic-function 'auto_charge_state-val :lambda-list '(m))
(cl:defmethod auto_charge_state-val ((m <GetAutoChargeState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:auto_charge_state-val is deprecated.  Use robint_msgs-srv:auto_charge_state instead.")
  (auto_charge_state m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetAutoChargeState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAutoChargeState-response>) ostream)
  "Serializes a message object of type '<GetAutoChargeState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'auto_charge_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAutoChargeState-response>) istream)
  "Deserializes a message object of type '<GetAutoChargeState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'auto_charge_state) istream)
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAutoChargeState-response>)))
  "Returns string type for a service object of type '<GetAutoChargeState-response>"
  "robint_msgs/GetAutoChargeStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAutoChargeState-response)))
  "Returns string type for a service object of type 'GetAutoChargeState-response"
  "robint_msgs/GetAutoChargeStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAutoChargeState-response>)))
  "Returns md5sum for a message object of type '<GetAutoChargeState-response>"
  "f6d99ed8da38328f3d700d808197028c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAutoChargeState-response)))
  "Returns md5sum for a message object of type 'GetAutoChargeState-response"
  "f6d99ed8da38328f3d700d808197028c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAutoChargeState-response>)))
  "Returns full string definition for message of type '<GetAutoChargeState-response>"
  (cl:format cl:nil "AutoChargeState auto_charge_state~%bool result~%~%================================================================================~%MSG: robint_msgs/AutoChargeState~%TaskStateHeader header~%string state~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAutoChargeState-response)))
  "Returns full string definition for message of type 'GetAutoChargeState-response"
  (cl:format cl:nil "AutoChargeState auto_charge_state~%bool result~%~%================================================================================~%MSG: robint_msgs/AutoChargeState~%TaskStateHeader header~%string state~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAutoChargeState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'auto_charge_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAutoChargeState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAutoChargeState-response
    (cl:cons ':auto_charge_state (auto_charge_state msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAutoChargeState)))
  'GetAutoChargeState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAutoChargeState)))
  'GetAutoChargeState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAutoChargeState)))
  "Returns string type for a service object of type '<GetAutoChargeState>"
  "robint_msgs/GetAutoChargeState")