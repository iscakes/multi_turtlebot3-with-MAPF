; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude TrackPathResult.msg.html

(cl:defclass <TrackPathResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TrackPathResult (<TrackPathResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackPathResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackPathResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<TrackPathResult> is deprecated: use robint_msgs-msg:TrackPathResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackPathResult>) ostream)
  "Serializes a message object of type '<TrackPathResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackPathResult>) istream)
  "Deserializes a message object of type '<TrackPathResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackPathResult>)))
  "Returns string type for a message object of type '<TrackPathResult>"
  "robint_msgs/TrackPathResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackPathResult)))
  "Returns string type for a message object of type 'TrackPathResult"
  "robint_msgs/TrackPathResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackPathResult>)))
  "Returns md5sum for a message object of type '<TrackPathResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackPathResult)))
  "Returns md5sum for a message object of type 'TrackPathResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackPathResult>)))
  "Returns full string definition for message of type '<TrackPathResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackPathResult)))
  "Returns full string definition for message of type 'TrackPathResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackPathResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackPathResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackPathResult
))
