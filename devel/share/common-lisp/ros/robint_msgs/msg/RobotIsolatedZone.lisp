; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude RobotIsolatedZone.msg.html

(cl:defclass <RobotIsolatedZone> (roslisp-msg-protocol:ros-message)
  ((zone_uuid
    :reader zone_uuid
    :initarg :zone_uuid
    :type cl:string
    :initform "")
   (robot_list
    :reader robot_list
    :initarg :robot_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass RobotIsolatedZone (<RobotIsolatedZone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotIsolatedZone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotIsolatedZone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<RobotIsolatedZone> is deprecated: use robint_msgs-msg:RobotIsolatedZone instead.")))

(cl:ensure-generic-function 'zone_uuid-val :lambda-list '(m))
(cl:defmethod zone_uuid-val ((m <RobotIsolatedZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:zone_uuid-val is deprecated.  Use robint_msgs-msg:zone_uuid instead.")
  (zone_uuid m))

(cl:ensure-generic-function 'robot_list-val :lambda-list '(m))
(cl:defmethod robot_list-val ((m <RobotIsolatedZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:robot_list-val is deprecated.  Use robint_msgs-msg:robot_list instead.")
  (robot_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotIsolatedZone>) ostream)
  "Serializes a message object of type '<RobotIsolatedZone>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'zone_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'zone_uuid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'robot_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotIsolatedZone>) istream)
  "Deserializes a message object of type '<RobotIsolatedZone>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zone_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'zone_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotIsolatedZone>)))
  "Returns string type for a message object of type '<RobotIsolatedZone>"
  "robint_msgs/RobotIsolatedZone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotIsolatedZone)))
  "Returns string type for a message object of type 'RobotIsolatedZone"
  "robint_msgs/RobotIsolatedZone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotIsolatedZone>)))
  "Returns md5sum for a message object of type '<RobotIsolatedZone>"
  "ae9554ce58aef29ade4877f7ded80370")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotIsolatedZone)))
  "Returns md5sum for a message object of type 'RobotIsolatedZone"
  "ae9554ce58aef29ade4877f7ded80370")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotIsolatedZone>)))
  "Returns full string definition for message of type '<RobotIsolatedZone>"
  (cl:format cl:nil "string zone_uuid~%string[] robot_list~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotIsolatedZone)))
  "Returns full string definition for message of type 'RobotIsolatedZone"
  (cl:format cl:nil "string zone_uuid~%string[] robot_list~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotIsolatedZone>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'zone_uuid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotIsolatedZone>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotIsolatedZone
    (cl:cons ':zone_uuid (zone_uuid msg))
    (cl:cons ':robot_list (robot_list msg))
))
