; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude UpdateMap-request.msg.html

(cl:defclass <UpdateMap-request> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (time
    :reader time
    :initarg :time
    :type cl:string
    :initform ""))
)

(cl:defclass UpdateMap-request (<UpdateMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<UpdateMap-request> is deprecated: use robint_msgs-srv:UpdateMap-request instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <UpdateMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <UpdateMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:time-val is deprecated.  Use robint_msgs-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateMap-request>) ostream)
  "Serializes a message object of type '<UpdateMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateMap-request>) istream)
  "Deserializes a message object of type '<UpdateMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateMap-request>)))
  "Returns string type for a service object of type '<UpdateMap-request>"
  "robint_msgs/UpdateMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateMap-request)))
  "Returns string type for a service object of type 'UpdateMap-request"
  "robint_msgs/UpdateMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateMap-request>)))
  "Returns md5sum for a message object of type '<UpdateMap-request>"
  "49d9b66697645b860ecd5f2cb94a4fc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateMap-request)))
  "Returns md5sum for a message object of type 'UpdateMap-request"
  "49d9b66697645b860ecd5f2cb94a4fc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateMap-request>)))
  "Returns full string definition for message of type '<UpdateMap-request>"
  (cl:format cl:nil "string map_uuid~%string time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateMap-request)))
  "Returns full string definition for message of type 'UpdateMap-request"
  (cl:format cl:nil "string map_uuid~%string time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     4 (cl:length (cl:slot-value msg 'time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateMap-request
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':time (time msg))
))
;//! \htmlinclude UpdateMap-response.msg.html

(cl:defclass <UpdateMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UpdateMap-response (<UpdateMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<UpdateMap-response> is deprecated: use robint_msgs-srv:UpdateMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UpdateMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateMap-response>) ostream)
  "Serializes a message object of type '<UpdateMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateMap-response>) istream)
  "Deserializes a message object of type '<UpdateMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateMap-response>)))
  "Returns string type for a service object of type '<UpdateMap-response>"
  "robint_msgs/UpdateMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateMap-response)))
  "Returns string type for a service object of type 'UpdateMap-response"
  "robint_msgs/UpdateMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateMap-response>)))
  "Returns md5sum for a message object of type '<UpdateMap-response>"
  "49d9b66697645b860ecd5f2cb94a4fc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateMap-response)))
  "Returns md5sum for a message object of type 'UpdateMap-response"
  "49d9b66697645b860ecd5f2cb94a4fc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateMap-response>)))
  "Returns full string definition for message of type '<UpdateMap-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateMap-response)))
  "Returns full string definition for message of type 'UpdateMap-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateMap-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateMap-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateMap)))
  'UpdateMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateMap)))
  'UpdateMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateMap)))
  "Returns string type for a service object of type '<UpdateMap>"
  "robint_msgs/UpdateMap")