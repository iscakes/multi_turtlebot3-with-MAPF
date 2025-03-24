; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude UpdateNavGoal-request.msg.html

(cl:defclass <UpdateNavGoal-request> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass UpdateNavGoal-request (<UpdateNavGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateNavGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateNavGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<UpdateNavGoal-request> is deprecated: use robint_msgs-srv:UpdateNavGoal-request instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <UpdateNavGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_pose-val is deprecated.  Use robint_msgs-srv:target_pose instead.")
  (target_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateNavGoal-request>) ostream)
  "Serializes a message object of type '<UpdateNavGoal-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateNavGoal-request>) istream)
  "Deserializes a message object of type '<UpdateNavGoal-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateNavGoal-request>)))
  "Returns string type for a service object of type '<UpdateNavGoal-request>"
  "robint_msgs/UpdateNavGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateNavGoal-request)))
  "Returns string type for a service object of type 'UpdateNavGoal-request"
  "robint_msgs/UpdateNavGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateNavGoal-request>)))
  "Returns md5sum for a message object of type '<UpdateNavGoal-request>"
  "548e99f135dd6026231a1f7b41de0e99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateNavGoal-request)))
  "Returns md5sum for a message object of type 'UpdateNavGoal-request"
  "548e99f135dd6026231a1f7b41de0e99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateNavGoal-request>)))
  "Returns full string definition for message of type '<UpdateNavGoal-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped target_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateNavGoal-request)))
  "Returns full string definition for message of type 'UpdateNavGoal-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped target_pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateNavGoal-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateNavGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateNavGoal-request
    (cl:cons ':target_pose (target_pose msg))
))
;//! \htmlinclude UpdateNavGoal-response.msg.html

(cl:defclass <UpdateNavGoal-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UpdateNavGoal-response (<UpdateNavGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateNavGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateNavGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<UpdateNavGoal-response> is deprecated: use robint_msgs-srv:UpdateNavGoal-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UpdateNavGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateNavGoal-response>) ostream)
  "Serializes a message object of type '<UpdateNavGoal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateNavGoal-response>) istream)
  "Deserializes a message object of type '<UpdateNavGoal-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateNavGoal-response>)))
  "Returns string type for a service object of type '<UpdateNavGoal-response>"
  "robint_msgs/UpdateNavGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateNavGoal-response)))
  "Returns string type for a service object of type 'UpdateNavGoal-response"
  "robint_msgs/UpdateNavGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateNavGoal-response>)))
  "Returns md5sum for a message object of type '<UpdateNavGoal-response>"
  "548e99f135dd6026231a1f7b41de0e99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateNavGoal-response)))
  "Returns md5sum for a message object of type 'UpdateNavGoal-response"
  "548e99f135dd6026231a1f7b41de0e99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateNavGoal-response>)))
  "Returns full string definition for message of type '<UpdateNavGoal-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateNavGoal-response)))
  "Returns full string definition for message of type 'UpdateNavGoal-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateNavGoal-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateNavGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateNavGoal-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateNavGoal)))
  'UpdateNavGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateNavGoal)))
  'UpdateNavGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateNavGoal)))
  "Returns string type for a service object of type '<UpdateNavGoal>"
  "robint_msgs/UpdateNavGoal")