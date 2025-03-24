; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude RobotStatisticData.msg.html

(cl:defclass <RobotStatisticData> (roslisp-msg-protocol:ros-message)
  ((travel_mileage
    :reader travel_mileage
    :initarg :travel_mileage
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotStatisticData (<RobotStatisticData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatisticData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatisticData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<RobotStatisticData> is deprecated: use robint_msgs-msg:RobotStatisticData instead.")))

(cl:ensure-generic-function 'travel_mileage-val :lambda-list '(m))
(cl:defmethod travel_mileage-val ((m <RobotStatisticData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:travel_mileage-val is deprecated.  Use robint_msgs-msg:travel_mileage instead.")
  (travel_mileage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatisticData>) ostream)
  "Serializes a message object of type '<RobotStatisticData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'travel_mileage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'travel_mileage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'travel_mileage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'travel_mileage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'travel_mileage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'travel_mileage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'travel_mileage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'travel_mileage)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatisticData>) istream)
  "Deserializes a message object of type '<RobotStatisticData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'travel_mileage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'travel_mileage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'travel_mileage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'travel_mileage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'travel_mileage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'travel_mileage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'travel_mileage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'travel_mileage)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatisticData>)))
  "Returns string type for a message object of type '<RobotStatisticData>"
  "robint_msgs/RobotStatisticData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatisticData)))
  "Returns string type for a message object of type 'RobotStatisticData"
  "robint_msgs/RobotStatisticData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatisticData>)))
  "Returns md5sum for a message object of type '<RobotStatisticData>"
  "2895568322646d2b22600ac707f3da07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatisticData)))
  "Returns md5sum for a message object of type 'RobotStatisticData"
  "2895568322646d2b22600ac707f3da07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatisticData>)))
  "Returns full string definition for message of type '<RobotStatisticData>"
  (cl:format cl:nil "uint64 travel_mileage~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatisticData)))
  "Returns full string definition for message of type 'RobotStatisticData"
  (cl:format cl:nil "uint64 travel_mileage~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatisticData>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatisticData>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatisticData
    (cl:cons ':travel_mileage (travel_mileage msg))
))
