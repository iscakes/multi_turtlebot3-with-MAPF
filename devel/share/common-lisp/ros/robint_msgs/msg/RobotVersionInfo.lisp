; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude RobotVersionInfo.msg.html

(cl:defclass <RobotVersionInfo> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (firmware_version
    :reader firmware_version
    :initarg :firmware_version
    :type cl:string
    :initform ""))
)

(cl:defclass RobotVersionInfo (<RobotVersionInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotVersionInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotVersionInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<RobotVersionInfo> is deprecated: use robint_msgs-msg:RobotVersionInfo instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <RobotVersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:robot_id-val is deprecated.  Use robint_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'firmware_version-val :lambda-list '(m))
(cl:defmethod firmware_version-val ((m <RobotVersionInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:firmware_version-val is deprecated.  Use robint_msgs-msg:firmware_version instead.")
  (firmware_version m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotVersionInfo>) ostream)
  "Serializes a message object of type '<RobotVersionInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmware_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmware_version))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotVersionInfo>) istream)
  "Deserializes a message object of type '<RobotVersionInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmware_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotVersionInfo>)))
  "Returns string type for a message object of type '<RobotVersionInfo>"
  "robint_msgs/RobotVersionInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotVersionInfo)))
  "Returns string type for a message object of type 'RobotVersionInfo"
  "robint_msgs/RobotVersionInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotVersionInfo>)))
  "Returns md5sum for a message object of type '<RobotVersionInfo>"
  "3dc3f7c1863c6b92ab7be18be30122c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotVersionInfo)))
  "Returns md5sum for a message object of type 'RobotVersionInfo"
  "3dc3f7c1863c6b92ab7be18be30122c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotVersionInfo>)))
  "Returns full string definition for message of type '<RobotVersionInfo>"
  (cl:format cl:nil "string robot_id~%string firmware_version~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotVersionInfo)))
  "Returns full string definition for message of type 'RobotVersionInfo"
  (cl:format cl:nil "string robot_id~%string firmware_version~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotVersionInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'firmware_version))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotVersionInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotVersionInfo
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':firmware_version (firmware_version msg))
))
