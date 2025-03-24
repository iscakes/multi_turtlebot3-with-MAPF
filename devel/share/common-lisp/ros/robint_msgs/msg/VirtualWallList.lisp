; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude VirtualWallList.msg.html

(cl:defclass <VirtualWallList> (roslisp-msg-protocol:ros-message)
  ((wall_list
    :reader wall_list
    :initarg :wall_list
    :type (cl:vector robint_msgs-msg:VirtualWall)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:VirtualWall :initial-element (cl:make-instance 'robint_msgs-msg:VirtualWall))))
)

(cl:defclass VirtualWallList (<VirtualWallList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VirtualWallList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VirtualWallList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<VirtualWallList> is deprecated: use robint_msgs-msg:VirtualWallList instead.")))

(cl:ensure-generic-function 'wall_list-val :lambda-list '(m))
(cl:defmethod wall_list-val ((m <VirtualWallList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:wall_list-val is deprecated.  Use robint_msgs-msg:wall_list instead.")
  (wall_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VirtualWallList>) ostream)
  "Serializes a message object of type '<VirtualWallList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wall_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wall_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VirtualWallList>) istream)
  "Deserializes a message object of type '<VirtualWallList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wall_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wall_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:VirtualWall))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VirtualWallList>)))
  "Returns string type for a message object of type '<VirtualWallList>"
  "robint_msgs/VirtualWallList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualWallList)))
  "Returns string type for a message object of type 'VirtualWallList"
  "robint_msgs/VirtualWallList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VirtualWallList>)))
  "Returns md5sum for a message object of type '<VirtualWallList>"
  "e31dc94ec8c76c82853f300c24dbb707")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VirtualWallList)))
  "Returns md5sum for a message object of type 'VirtualWallList"
  "e31dc94ec8c76c82853f300c24dbb707")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VirtualWallList>)))
  "Returns full string definition for message of type '<VirtualWallList>"
  (cl:format cl:nil "VirtualWall[] wall_list~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VirtualWallList)))
  "Returns full string definition for message of type 'VirtualWallList"
  (cl:format cl:nil "VirtualWall[] wall_list~%================================================================================~%MSG: robint_msgs/VirtualWall~%string id~%uint8 type~%uint8 Line = 0~%uint8 Rectangle = 1~%uint8 Polygon = 2~%string vw_uuid~%string vw_name~%string map_uuid~%string group_uuid~%geometry_msgs/Point[] points ~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VirtualWallList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wall_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VirtualWallList>))
  "Converts a ROS message object to a list"
  (cl:list 'VirtualWallList
    (cl:cons ':wall_list (wall_list msg))
))
