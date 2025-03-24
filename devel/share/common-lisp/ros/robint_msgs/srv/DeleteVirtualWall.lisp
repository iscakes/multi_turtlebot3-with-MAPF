; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude DeleteVirtualWall-request.msg.html

(cl:defclass <DeleteVirtualWall-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteVirtualWall-request (<DeleteVirtualWall-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteVirtualWall-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteVirtualWall-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteVirtualWall-request> is deprecated: use robint_msgs-srv:DeleteVirtualWall-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <DeleteVirtualWall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <DeleteVirtualWall-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:id-val is deprecated.  Use robint_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteVirtualWall-request>) ostream)
  "Serializes a message object of type '<DeleteVirtualWall-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteVirtualWall-request>) istream)
  "Deserializes a message object of type '<DeleteVirtualWall-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteVirtualWall-request>)))
  "Returns string type for a service object of type '<DeleteVirtualWall-request>"
  "robint_msgs/DeleteVirtualWallRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteVirtualWall-request)))
  "Returns string type for a service object of type 'DeleteVirtualWall-request"
  "robint_msgs/DeleteVirtualWallRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteVirtualWall-request>)))
  "Returns md5sum for a message object of type '<DeleteVirtualWall-request>"
  "be1a6ec15d3a7c0da62c91d324d28390")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteVirtualWall-request)))
  "Returns md5sum for a message object of type 'DeleteVirtualWall-request"
  "be1a6ec15d3a7c0da62c91d324d28390")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteVirtualWall-request>)))
  "Returns full string definition for message of type '<DeleteVirtualWall-request>"
  (cl:format cl:nil "string map_name~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteVirtualWall-request)))
  "Returns full string definition for message of type 'DeleteVirtualWall-request"
  (cl:format cl:nil "string map_name~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteVirtualWall-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteVirtualWall-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteVirtualWall-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude DeleteVirtualWall-response.msg.html

(cl:defclass <DeleteVirtualWall-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteVirtualWall-response (<DeleteVirtualWall-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteVirtualWall-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteVirtualWall-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteVirtualWall-response> is deprecated: use robint_msgs-srv:DeleteVirtualWall-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteVirtualWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <DeleteVirtualWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteVirtualWall-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteVirtualWall-response>) ostream)
  "Serializes a message object of type '<DeleteVirtualWall-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteVirtualWall-response>) istream)
  "Deserializes a message object of type '<DeleteVirtualWall-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteVirtualWall-response>)))
  "Returns string type for a service object of type '<DeleteVirtualWall-response>"
  "robint_msgs/DeleteVirtualWallResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteVirtualWall-response)))
  "Returns string type for a service object of type 'DeleteVirtualWall-response"
  "robint_msgs/DeleteVirtualWallResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteVirtualWall-response>)))
  "Returns md5sum for a message object of type '<DeleteVirtualWall-response>"
  "be1a6ec15d3a7c0da62c91d324d28390")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteVirtualWall-response)))
  "Returns md5sum for a message object of type 'DeleteVirtualWall-response"
  "be1a6ec15d3a7c0da62c91d324d28390")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteVirtualWall-response>)))
  "Returns full string definition for message of type '<DeleteVirtualWall-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteVirtualWall-response)))
  "Returns full string definition for message of type 'DeleteVirtualWall-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteVirtualWall-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteVirtualWall-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteVirtualWall-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteVirtualWall)))
  'DeleteVirtualWall-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteVirtualWall)))
  'DeleteVirtualWall-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteVirtualWall)))
  "Returns string type for a service object of type '<DeleteVirtualWall>"
  "robint_msgs/DeleteVirtualWall")