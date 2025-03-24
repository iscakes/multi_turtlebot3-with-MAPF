; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude TaskStateHeader.msg.html

(cl:defclass <TaskStateHeader> (roslisp-msg-protocol:ros-message)
  ((activate
    :reader activate
    :initarg :activate
    :type cl:boolean
    :initform cl:nil)
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:real
    :initform 0)
   (stop_time
    :reader stop_time
    :initarg :stop_time
    :type cl:real
    :initform 0))
)

(cl:defclass TaskStateHeader (<TaskStateHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskStateHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskStateHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<TaskStateHeader> is deprecated: use robint_msgs-msg:TaskStateHeader instead.")))

(cl:ensure-generic-function 'activate-val :lambda-list '(m))
(cl:defmethod activate-val ((m <TaskStateHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:activate-val is deprecated.  Use robint_msgs-msg:activate instead.")
  (activate m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <TaskStateHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:start_time-val is deprecated.  Use robint_msgs-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'stop_time-val :lambda-list '(m))
(cl:defmethod stop_time-val ((m <TaskStateHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:stop_time-val is deprecated.  Use robint_msgs-msg:stop_time instead.")
  (stop_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskStateHeader>) ostream)
  "Serializes a message object of type '<TaskStateHeader>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activate) 1 0)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'start_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'start_time) (cl:floor (cl:slot-value msg 'start_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stop_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stop_time) (cl:floor (cl:slot-value msg 'stop_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskStateHeader>) istream)
  "Deserializes a message object of type '<TaskStateHeader>"
    (cl:setf (cl:slot-value msg 'activate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskStateHeader>)))
  "Returns string type for a message object of type '<TaskStateHeader>"
  "robint_msgs/TaskStateHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskStateHeader)))
  "Returns string type for a message object of type 'TaskStateHeader"
  "robint_msgs/TaskStateHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskStateHeader>)))
  "Returns md5sum for a message object of type '<TaskStateHeader>"
  "53ecbf7332c0dcaa581370b90fa039a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskStateHeader)))
  "Returns md5sum for a message object of type 'TaskStateHeader"
  "53ecbf7332c0dcaa581370b90fa039a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskStateHeader>)))
  "Returns full string definition for message of type '<TaskStateHeader>"
  (cl:format cl:nil "bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskStateHeader)))
  "Returns full string definition for message of type 'TaskStateHeader"
  (cl:format cl:nil "bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskStateHeader>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskStateHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskStateHeader
    (cl:cons ':activate (activate msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':stop_time (stop_time msg))
))
