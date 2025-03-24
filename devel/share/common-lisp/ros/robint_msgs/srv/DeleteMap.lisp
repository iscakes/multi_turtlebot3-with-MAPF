; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude DeleteMap-request.msg.html

(cl:defclass <DeleteMap-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteMap-request (<DeleteMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteMap-request> is deprecated: use robint_msgs-srv:DeleteMap-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <DeleteMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteMap-request>) ostream)
  "Serializes a message object of type '<DeleteMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteMap-request>) istream)
  "Deserializes a message object of type '<DeleteMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteMap-request>)))
  "Returns string type for a service object of type '<DeleteMap-request>"
  "robint_msgs/DeleteMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMap-request)))
  "Returns string type for a service object of type 'DeleteMap-request"
  "robint_msgs/DeleteMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteMap-request>)))
  "Returns md5sum for a message object of type '<DeleteMap-request>"
  "064aeca76673f2a462ec6871c0fe6870")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteMap-request)))
  "Returns md5sum for a message object of type 'DeleteMap-request"
  "064aeca76673f2a462ec6871c0fe6870")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteMap-request>)))
  "Returns full string definition for message of type '<DeleteMap-request>"
  (cl:format cl:nil "string map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteMap-request)))
  "Returns full string definition for message of type 'DeleteMap-request"
  (cl:format cl:nil "string map_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteMap-request
    (cl:cons ':map_name (map_name msg))
))
;//! \htmlinclude DeleteMap-response.msg.html

(cl:defclass <DeleteMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteMap-response (<DeleteMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteMap-response> is deprecated: use robint_msgs-srv:DeleteMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteMap-response>) ostream)
  "Serializes a message object of type '<DeleteMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteMap-response>) istream)
  "Deserializes a message object of type '<DeleteMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteMap-response>)))
  "Returns string type for a service object of type '<DeleteMap-response>"
  "robint_msgs/DeleteMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMap-response)))
  "Returns string type for a service object of type 'DeleteMap-response"
  "robint_msgs/DeleteMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteMap-response>)))
  "Returns md5sum for a message object of type '<DeleteMap-response>"
  "064aeca76673f2a462ec6871c0fe6870")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteMap-response)))
  "Returns md5sum for a message object of type 'DeleteMap-response"
  "064aeca76673f2a462ec6871c0fe6870")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteMap-response>)))
  "Returns full string definition for message of type '<DeleteMap-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteMap-response)))
  "Returns full string definition for message of type 'DeleteMap-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteMap-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteMap-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteMap)))
  'DeleteMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteMap)))
  'DeleteMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMap)))
  "Returns string type for a service object of type '<DeleteMap>"
  "robint_msgs/DeleteMap")