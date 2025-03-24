; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude Mqtt.msg.html

(cl:defclass <Mqtt> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform "")
   (payload
    :reader payload
    :initarg :payload
    :type cl:string
    :initform "")
   (qos
    :reader qos
    :initarg :qos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Mqtt (<Mqtt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mqtt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mqtt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<Mqtt> is deprecated: use robint_msgs-msg:Mqtt instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <Mqtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:topic-val is deprecated.  Use robint_msgs-msg:topic instead.")
  (topic m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <Mqtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:payload-val is deprecated.  Use robint_msgs-msg:payload instead.")
  (payload m))

(cl:ensure-generic-function 'qos-val :lambda-list '(m))
(cl:defmethod qos-val ((m <Mqtt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:qos-val is deprecated.  Use robint_msgs-msg:qos instead.")
  (qos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mqtt>) ostream)
  "Serializes a message object of type '<Mqtt>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'payload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'payload))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'qos)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mqtt>) istream)
  "Deserializes a message object of type '<Mqtt>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'payload) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'payload) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'qos)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mqtt>)))
  "Returns string type for a message object of type '<Mqtt>"
  "robint_msgs/Mqtt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mqtt)))
  "Returns string type for a message object of type 'Mqtt"
  "robint_msgs/Mqtt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mqtt>)))
  "Returns md5sum for a message object of type '<Mqtt>"
  "f2fdbbfebea18db613efd560d5285dbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mqtt)))
  "Returns md5sum for a message object of type 'Mqtt"
  "f2fdbbfebea18db613efd560d5285dbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mqtt>)))
  "Returns full string definition for message of type '<Mqtt>"
  (cl:format cl:nil "string topic~%string payload~%uint8 qos~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mqtt)))
  "Returns full string definition for message of type 'Mqtt"
  (cl:format cl:nil "string topic~%string payload~%uint8 qos~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mqtt>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
     4 (cl:length (cl:slot-value msg 'payload))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mqtt>))
  "Converts a ROS message object to a list"
  (cl:list 'Mqtt
    (cl:cons ':topic (topic msg))
    (cl:cons ':payload (payload msg))
    (cl:cons ':qos (qos msg))
))
