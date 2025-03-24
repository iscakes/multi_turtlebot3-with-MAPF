; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude MapState.msg.html

(cl:defclass <MapState> (roslisp-msg-protocol:ros-message)
  ((floor_id
    :reader floor_id
    :initarg :floor_id
    :type cl:integer
    :initform 0))
)

(cl:defclass MapState (<MapState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<MapState> is deprecated: use robint_msgs-msg:MapState instead.")))

(cl:ensure-generic-function 'floor_id-val :lambda-list '(m))
(cl:defmethod floor_id-val ((m <MapState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:floor_id-val is deprecated.  Use robint_msgs-msg:floor_id instead.")
  (floor_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapState>) ostream)
  "Serializes a message object of type '<MapState>"
  (cl:let* ((signed (cl:slot-value msg 'floor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapState>) istream)
  "Deserializes a message object of type '<MapState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapState>)))
  "Returns string type for a message object of type '<MapState>"
  "robint_msgs/MapState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapState)))
  "Returns string type for a message object of type 'MapState"
  "robint_msgs/MapState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapState>)))
  "Returns md5sum for a message object of type '<MapState>"
  "91a758fc98f221cf5356ea3023ec3f39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapState)))
  "Returns md5sum for a message object of type 'MapState"
  "91a758fc98f221cf5356ea3023ec3f39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapState>)))
  "Returns full string definition for message of type '<MapState>"
  (cl:format cl:nil "int32 floor_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapState)))
  "Returns full string definition for message of type 'MapState"
  (cl:format cl:nil "int32 floor_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapState>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapState>))
  "Converts a ROS message object to a list"
  (cl:list 'MapState
    (cl:cons ':floor_id (floor_id msg))
))
