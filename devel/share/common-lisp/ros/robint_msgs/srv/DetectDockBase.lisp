; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude DetectDockBase-request.msg.html

(cl:defclass <DetectDockBase-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DetectDockBase-request (<DetectDockBase-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectDockBase-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectDockBase-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DetectDockBase-request> is deprecated: use robint_msgs-srv:DetectDockBase-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectDockBase-request>) ostream)
  "Serializes a message object of type '<DetectDockBase-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectDockBase-request>) istream)
  "Deserializes a message object of type '<DetectDockBase-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectDockBase-request>)))
  "Returns string type for a service object of type '<DetectDockBase-request>"
  "robint_msgs/DetectDockBaseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectDockBase-request)))
  "Returns string type for a service object of type 'DetectDockBase-request"
  "robint_msgs/DetectDockBaseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectDockBase-request>)))
  "Returns md5sum for a message object of type '<DetectDockBase-request>"
  "4ead082030f3dc019a260fec9bdd9d31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectDockBase-request)))
  "Returns md5sum for a message object of type 'DetectDockBase-request"
  "4ead082030f3dc019a260fec9bdd9d31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectDockBase-request>)))
  "Returns full string definition for message of type '<DetectDockBase-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectDockBase-request)))
  "Returns full string definition for message of type 'DetectDockBase-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectDockBase-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectDockBase-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectDockBase-request
))
;//! \htmlinclude DetectDockBase-response.msg.html

(cl:defclass <DetectDockBase-response> (roslisp-msg-protocol:ros-message)
  ((dock_pose
    :reader dock_pose
    :initarg :dock_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DetectDockBase-response (<DetectDockBase-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectDockBase-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectDockBase-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DetectDockBase-response> is deprecated: use robint_msgs-srv:DetectDockBase-response instead.")))

(cl:ensure-generic-function 'dock_pose-val :lambda-list '(m))
(cl:defmethod dock_pose-val ((m <DetectDockBase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:dock_pose-val is deprecated.  Use robint_msgs-srv:dock_pose instead.")
  (dock_pose m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DetectDockBase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <DetectDockBase-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectDockBase-response>) ostream)
  "Serializes a message object of type '<DetectDockBase-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dock_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectDockBase-response>) istream)
  "Deserializes a message object of type '<DetectDockBase-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dock_pose) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectDockBase-response>)))
  "Returns string type for a service object of type '<DetectDockBase-response>"
  "robint_msgs/DetectDockBaseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectDockBase-response)))
  "Returns string type for a service object of type 'DetectDockBase-response"
  "robint_msgs/DetectDockBaseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectDockBase-response>)))
  "Returns md5sum for a message object of type '<DetectDockBase-response>"
  "4ead082030f3dc019a260fec9bdd9d31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectDockBase-response)))
  "Returns md5sum for a message object of type 'DetectDockBase-response"
  "4ead082030f3dc019a260fec9bdd9d31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectDockBase-response>)))
  "Returns full string definition for message of type '<DetectDockBase-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped dock_pose~%bool success~%uint8 error_code~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectDockBase-response)))
  "Returns full string definition for message of type 'DetectDockBase-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped dock_pose~%bool success~%uint8 error_code~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectDockBase-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dock_pose))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectDockBase-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectDockBase-response
    (cl:cons ':dock_pose (dock_pose msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetectDockBase)))
  'DetectDockBase-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetectDockBase)))
  'DetectDockBase-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectDockBase)))
  "Returns string type for a service object of type '<DetectDockBase>"
  "robint_msgs/DetectDockBase")