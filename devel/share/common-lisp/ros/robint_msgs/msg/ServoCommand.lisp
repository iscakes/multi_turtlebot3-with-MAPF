; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude ServoCommand.msg.html

(cl:defclass <ServoCommand> (roslisp-msg-protocol:ros-message)
  ((servo_ID
    :reader servo_ID
    :initarg :servo_ID
    :type cl:string
    :initform "")
   (angle
    :reader angle
    :initarg :angle
    :type cl:fixnum
    :initform 0)
   (runningtime
    :reader runningtime
    :initarg :runningtime
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ServoCommand (<ServoCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<ServoCommand> is deprecated: use robint_msgs-msg:ServoCommand instead.")))

(cl:ensure-generic-function 'servo_ID-val :lambda-list '(m))
(cl:defmethod servo_ID-val ((m <ServoCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:servo_ID-val is deprecated.  Use robint_msgs-msg:servo_ID instead.")
  (servo_ID m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ServoCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:angle-val is deprecated.  Use robint_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'runningtime-val :lambda-list '(m))
(cl:defmethod runningtime-val ((m <ServoCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:runningtime-val is deprecated.  Use robint_msgs-msg:runningtime instead.")
  (runningtime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoCommand>) ostream)
  "Serializes a message object of type '<ServoCommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'servo_ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'servo_ID))
  (cl:let* ((signed (cl:slot-value msg 'angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'runningtime)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoCommand>) istream)
  "Deserializes a message object of type '<ServoCommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo_ID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'servo_ID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'runningtime) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoCommand>)))
  "Returns string type for a message object of type '<ServoCommand>"
  "robint_msgs/ServoCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoCommand)))
  "Returns string type for a message object of type 'ServoCommand"
  "robint_msgs/ServoCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoCommand>)))
  "Returns md5sum for a message object of type '<ServoCommand>"
  "055df8167a6869ba237fd86867a5bca5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoCommand)))
  "Returns md5sum for a message object of type 'ServoCommand"
  "055df8167a6869ba237fd86867a5bca5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoCommand>)))
  "Returns full string definition for message of type '<ServoCommand>"
  (cl:format cl:nil "string servo_ID~%int16 angle~%int16 runningtime~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoCommand)))
  "Returns full string definition for message of type 'ServoCommand"
  (cl:format cl:nil "string servo_ID~%int16 angle~%int16 runningtime~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'servo_ID))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoCommand
    (cl:cons ':servo_ID (servo_ID msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':runningtime (runningtime msg))
))
