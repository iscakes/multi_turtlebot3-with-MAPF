; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude PositionStatus.msg.html

(cl:defclass <PositionStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (localization_status
    :reader localization_status
    :initarg :localization_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PositionStatus (<PositionStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<PositionStatus> is deprecated: use robint_msgs-msg:PositionStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PositionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:status-val is deprecated.  Use robint_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'localization_status-val :lambda-list '(m))
(cl:defmethod localization_status-val ((m <PositionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:localization_status-val is deprecated.  Use robint_msgs-msg:localization_status instead.")
  (localization_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PositionStatus>)))
    "Constants for message type '<PositionStatus>"
  '((:NORMAL . 0)
    (:UNKNOWN . 1)
    (:LOCALIZATION_ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PositionStatus)))
    "Constants for message type 'PositionStatus"
  '((:NORMAL . 0)
    (:UNKNOWN . 1)
    (:LOCALIZATION_ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionStatus>) ostream)
  "Serializes a message object of type '<PositionStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'localization_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionStatus>) istream)
  "Deserializes a message object of type '<PositionStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'localization_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionStatus>)))
  "Returns string type for a message object of type '<PositionStatus>"
  "robint_msgs/PositionStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionStatus)))
  "Returns string type for a message object of type 'PositionStatus"
  "robint_msgs/PositionStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionStatus>)))
  "Returns md5sum for a message object of type '<PositionStatus>"
  "9f79e0da31ae4de315253c90cc1b04d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionStatus)))
  "Returns md5sum for a message object of type 'PositionStatus"
  "9f79e0da31ae4de315253c90cc1b04d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionStatus>)))
  "Returns full string definition for message of type '<PositionStatus>"
  (cl:format cl:nil "uint8 status~%uint8 localization_status~%uint8 NORMAL=0~%uint8 UNKNOWN=1~%uint8 LOCALIZATION_ERROR=2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionStatus)))
  "Returns full string definition for message of type 'PositionStatus"
  (cl:format cl:nil "uint8 status~%uint8 localization_status~%uint8 NORMAL=0~%uint8 UNKNOWN=1~%uint8 LOCALIZATION_ERROR=2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionStatus>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionStatus
    (cl:cons ':status (status msg))
    (cl:cons ':localization_status (localization_status msg))
))
