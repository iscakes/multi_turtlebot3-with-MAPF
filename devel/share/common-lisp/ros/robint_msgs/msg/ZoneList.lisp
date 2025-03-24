; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude ZoneList.msg.html

(cl:defclass <ZoneList> (roslisp-msg-protocol:ros-message)
  ((zone_list
    :reader zone_list
    :initarg :zone_list
    :type (cl:vector robint_msgs-msg:Zone)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:Zone :initial-element (cl:make-instance 'robint_msgs-msg:Zone))))
)

(cl:defclass ZoneList (<ZoneList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ZoneList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ZoneList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<ZoneList> is deprecated: use robint_msgs-msg:ZoneList instead.")))

(cl:ensure-generic-function 'zone_list-val :lambda-list '(m))
(cl:defmethod zone_list-val ((m <ZoneList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:zone_list-val is deprecated.  Use robint_msgs-msg:zone_list instead.")
  (zone_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ZoneList>) ostream)
  "Serializes a message object of type '<ZoneList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'zone_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'zone_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ZoneList>) istream)
  "Deserializes a message object of type '<ZoneList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'zone_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'zone_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:Zone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ZoneList>)))
  "Returns string type for a message object of type '<ZoneList>"
  "robint_msgs/ZoneList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ZoneList)))
  "Returns string type for a message object of type 'ZoneList"
  "robint_msgs/ZoneList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ZoneList>)))
  "Returns md5sum for a message object of type '<ZoneList>"
  "78e20121c12878622efd248cb2a92c84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ZoneList)))
  "Returns md5sum for a message object of type 'ZoneList"
  "78e20121c12878622efd248cb2a92c84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ZoneList>)))
  "Returns full string definition for message of type '<ZoneList>"
  (cl:format cl:nil "Zone[] zone_list~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ZoneList)))
  "Returns full string definition for message of type 'ZoneList"
  (cl:format cl:nil "Zone[] zone_list~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ZoneList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'zone_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ZoneList>))
  "Converts a ROS message object to a list"
  (cl:list 'ZoneList
    (cl:cons ':zone_list (zone_list msg))
))
