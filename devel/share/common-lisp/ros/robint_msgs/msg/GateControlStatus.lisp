; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude GateControlStatus.msg.html

(cl:defclass <GateControlStatus> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass GateControlStatus (<GateControlStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GateControlStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GateControlStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<GateControlStatus> is deprecated: use robint_msgs-msg:GateControlStatus instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <GateControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:task_id-val is deprecated.  Use robint_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GateControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:status-val is deprecated.  Use robint_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GateControlStatus>) ostream)
  "Serializes a message object of type '<GateControlStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GateControlStatus>) istream)
  "Deserializes a message object of type '<GateControlStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GateControlStatus>)))
  "Returns string type for a message object of type '<GateControlStatus>"
  "robint_msgs/GateControlStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GateControlStatus)))
  "Returns string type for a message object of type 'GateControlStatus"
  "robint_msgs/GateControlStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GateControlStatus>)))
  "Returns md5sum for a message object of type '<GateControlStatus>"
  "187cd9f691184be0241fb75eabc83f5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GateControlStatus)))
  "Returns md5sum for a message object of type 'GateControlStatus"
  "187cd9f691184be0241fb75eabc83f5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GateControlStatus>)))
  "Returns full string definition for message of type '<GateControlStatus>"
  (cl:format cl:nil "string task_id~%string status #\"opened\" ,\"closed\", \"failed\"~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GateControlStatus)))
  "Returns full string definition for message of type 'GateControlStatus"
  (cl:format cl:nil "string task_id~%string status #\"opened\" ,\"closed\", \"failed\"~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GateControlStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task_id))
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GateControlStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GateControlStatus
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':status (status msg))
))
