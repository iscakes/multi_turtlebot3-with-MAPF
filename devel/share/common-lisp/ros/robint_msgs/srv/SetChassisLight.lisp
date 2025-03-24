; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude SetChassisLight-request.msg.html

(cl:defclass <SetChassisLight-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetChassisLight-request (<SetChassisLight-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetChassisLight-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetChassisLight-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<SetChassisLight-request> is deprecated: use robint_msgs-srv:SetChassisLight-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SetChassisLight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:id-val is deprecated.  Use robint_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetChassisLight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:mode-val is deprecated.  Use robint_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetChassisLight-request>) ostream)
  "Serializes a message object of type '<SetChassisLight-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetChassisLight-request>) istream)
  "Deserializes a message object of type '<SetChassisLight-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetChassisLight-request>)))
  "Returns string type for a service object of type '<SetChassisLight-request>"
  "robint_msgs/SetChassisLightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetChassisLight-request)))
  "Returns string type for a service object of type 'SetChassisLight-request"
  "robint_msgs/SetChassisLightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetChassisLight-request>)))
  "Returns md5sum for a message object of type '<SetChassisLight-request>"
  "c59ddd3dc5cf36023f798fddbf4f62a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetChassisLight-request)))
  "Returns md5sum for a message object of type 'SetChassisLight-request"
  "c59ddd3dc5cf36023f798fddbf4f62a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetChassisLight-request>)))
  "Returns full string definition for message of type '<SetChassisLight-request>"
  (cl:format cl:nil "uint8 id~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetChassisLight-request)))
  "Returns full string definition for message of type 'SetChassisLight-request"
  (cl:format cl:nil "uint8 id~%uint8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetChassisLight-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetChassisLight-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetChassisLight-request
    (cl:cons ':id (id msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetChassisLight-response.msg.html

(cl:defclass <SetChassisLight-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetChassisLight-response (<SetChassisLight-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetChassisLight-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetChassisLight-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<SetChassisLight-response> is deprecated: use robint_msgs-srv:SetChassisLight-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetChassisLight-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetChassisLight-response>) ostream)
  "Serializes a message object of type '<SetChassisLight-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetChassisLight-response>) istream)
  "Deserializes a message object of type '<SetChassisLight-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetChassisLight-response>)))
  "Returns string type for a service object of type '<SetChassisLight-response>"
  "robint_msgs/SetChassisLightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetChassisLight-response)))
  "Returns string type for a service object of type 'SetChassisLight-response"
  "robint_msgs/SetChassisLightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetChassisLight-response>)))
  "Returns md5sum for a message object of type '<SetChassisLight-response>"
  "c59ddd3dc5cf36023f798fddbf4f62a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetChassisLight-response)))
  "Returns md5sum for a message object of type 'SetChassisLight-response"
  "c59ddd3dc5cf36023f798fddbf4f62a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetChassisLight-response>)))
  "Returns full string definition for message of type '<SetChassisLight-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetChassisLight-response)))
  "Returns full string definition for message of type 'SetChassisLight-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetChassisLight-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetChassisLight-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetChassisLight-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetChassisLight)))
  'SetChassisLight-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetChassisLight)))
  'SetChassisLight-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetChassisLight)))
  "Returns string type for a service object of type '<SetChassisLight>"
  "robint_msgs/SetChassisLight")