; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude SetMotorControlMode-request.msg.html

(cl:defclass <SetMotorControlMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetMotorControlMode-request (<SetMotorControlMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorControlMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorControlMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<SetMotorControlMode-request> is deprecated: use robint_msgs-srv:SetMotorControlMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetMotorControlMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:mode-val is deprecated.  Use robint_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetMotorControlMode-request>)))
    "Constants for message type '<SetMotorControlMode-request>"
  '((:PARK . 0)
    (:MANUAL . 1)
    (:AUTO . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetMotorControlMode-request)))
    "Constants for message type 'SetMotorControlMode-request"
  '((:PARK . 0)
    (:MANUAL . 1)
    (:AUTO . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorControlMode-request>) ostream)
  "Serializes a message object of type '<SetMotorControlMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorControlMode-request>) istream)
  "Deserializes a message object of type '<SetMotorControlMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorControlMode-request>)))
  "Returns string type for a service object of type '<SetMotorControlMode-request>"
  "robint_msgs/SetMotorControlModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorControlMode-request)))
  "Returns string type for a service object of type 'SetMotorControlMode-request"
  "robint_msgs/SetMotorControlModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorControlMode-request>)))
  "Returns md5sum for a message object of type '<SetMotorControlMode-request>"
  "b40f8acade9ef49cd514ae09c667e3fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorControlMode-request)))
  "Returns md5sum for a message object of type 'SetMotorControlMode-request"
  "b40f8acade9ef49cd514ae09c667e3fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorControlMode-request>)))
  "Returns full string definition for message of type '<SetMotorControlMode-request>"
  (cl:format cl:nil "uint8 mode~%uint8 PARK=0~%uint8 MANUAL=1~%uint8 AUTO=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorControlMode-request)))
  "Returns full string definition for message of type 'SetMotorControlMode-request"
  (cl:format cl:nil "uint8 mode~%uint8 PARK=0~%uint8 MANUAL=1~%uint8 AUTO=2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorControlMode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorControlMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorControlMode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetMotorControlMode-response.msg.html

(cl:defclass <SetMotorControlMode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetMotorControlMode-response (<SetMotorControlMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorControlMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorControlMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<SetMotorControlMode-response> is deprecated: use robint_msgs-srv:SetMotorControlMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMotorControlMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorControlMode-response>) ostream)
  "Serializes a message object of type '<SetMotorControlMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorControlMode-response>) istream)
  "Deserializes a message object of type '<SetMotorControlMode-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorControlMode-response>)))
  "Returns string type for a service object of type '<SetMotorControlMode-response>"
  "robint_msgs/SetMotorControlModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorControlMode-response)))
  "Returns string type for a service object of type 'SetMotorControlMode-response"
  "robint_msgs/SetMotorControlModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorControlMode-response>)))
  "Returns md5sum for a message object of type '<SetMotorControlMode-response>"
  "b40f8acade9ef49cd514ae09c667e3fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorControlMode-response)))
  "Returns md5sum for a message object of type 'SetMotorControlMode-response"
  "b40f8acade9ef49cd514ae09c667e3fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorControlMode-response>)))
  "Returns full string definition for message of type '<SetMotorControlMode-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorControlMode-response)))
  "Returns full string definition for message of type 'SetMotorControlMode-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorControlMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorControlMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorControlMode-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMotorControlMode)))
  'SetMotorControlMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMotorControlMode)))
  'SetMotorControlMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorControlMode)))
  "Returns string type for a service object of type '<SetMotorControlMode>"
  "robint_msgs/SetMotorControlMode")