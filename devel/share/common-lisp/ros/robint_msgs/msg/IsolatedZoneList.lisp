; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude IsolatedZoneList.msg.html

(cl:defclass <IsolatedZoneList> (roslisp-msg-protocol:ros-message)
  ((zone_list
    :reader zone_list
    :initarg :zone_list
    :type (cl:vector robint_msgs-msg:IsolatedZone)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:IsolatedZone :initial-element (cl:make-instance 'robint_msgs-msg:IsolatedZone))))
)

(cl:defclass IsolatedZoneList (<IsolatedZoneList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsolatedZoneList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsolatedZoneList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<IsolatedZoneList> is deprecated: use robint_msgs-msg:IsolatedZoneList instead.")))

(cl:ensure-generic-function 'zone_list-val :lambda-list '(m))
(cl:defmethod zone_list-val ((m <IsolatedZoneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:zone_list-val is deprecated.  Use robint_msgs-msg:zone_list instead.")
  (zone_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsolatedZoneList>) ostream)
  "Serializes a message object of type '<IsolatedZoneList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'zone_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'zone_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsolatedZoneList>) istream)
  "Deserializes a message object of type '<IsolatedZoneList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'zone_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'zone_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:IsolatedZone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsolatedZoneList>)))
  "Returns string type for a message object of type '<IsolatedZoneList>"
  "robint_msgs/IsolatedZoneList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsolatedZoneList)))
  "Returns string type for a message object of type 'IsolatedZoneList"
  "robint_msgs/IsolatedZoneList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsolatedZoneList>)))
  "Returns md5sum for a message object of type '<IsolatedZoneList>"
  "2be48a82e856075e1d4177e40252d0e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsolatedZoneList)))
  "Returns md5sum for a message object of type 'IsolatedZoneList"
  "2be48a82e856075e1d4177e40252d0e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsolatedZoneList>)))
  "Returns full string definition for message of type '<IsolatedZoneList>"
  (cl:format cl:nil "IsolatedZone[] zone_list~%~%================================================================================~%MSG: robint_msgs/IsolatedZone~%Zone zone~%IsolatedWait[] wait_points~%string next_task~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: robint_msgs/IsolatedWait~%geometry_msgs/Pose pose~%string uuid~%bool direct~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsolatedZoneList)))
  "Returns full string definition for message of type 'IsolatedZoneList"
  (cl:format cl:nil "IsolatedZone[] zone_list~%~%================================================================================~%MSG: robint_msgs/IsolatedZone~%Zone zone~%IsolatedWait[] wait_points~%string next_task~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: robint_msgs/IsolatedWait~%geometry_msgs/Pose pose~%string uuid~%bool direct~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsolatedZoneList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'zone_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsolatedZoneList>))
  "Converts a ROS message object to a list"
  (cl:list 'IsolatedZoneList
    (cl:cons ':zone_list (zone_list msg))
))
