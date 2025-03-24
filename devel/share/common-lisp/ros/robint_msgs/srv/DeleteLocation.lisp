; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude DeleteLocation-request.msg.html

(cl:defclass <DeleteLocation-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (location_name
    :reader location_name
    :initarg :location_name
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteLocation-request (<DeleteLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteLocation-request> is deprecated: use robint_msgs-srv:DeleteLocation-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <DeleteLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'location_name-val :lambda-list '(m))
(cl:defmethod location_name-val ((m <DeleteLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location_name-val is deprecated.  Use robint_msgs-srv:location_name instead.")
  (location_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteLocation-request>) ostream)
  "Serializes a message object of type '<DeleteLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteLocation-request>) istream)
  "Deserializes a message object of type '<DeleteLocation-request>"
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
      (cl:setf (cl:slot-value msg 'location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteLocation-request>)))
  "Returns string type for a service object of type '<DeleteLocation-request>"
  "robint_msgs/DeleteLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteLocation-request)))
  "Returns string type for a service object of type 'DeleteLocation-request"
  "robint_msgs/DeleteLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteLocation-request>)))
  "Returns md5sum for a message object of type '<DeleteLocation-request>"
  "e455ff67939cb430aa8c8b048159a412")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteLocation-request)))
  "Returns md5sum for a message object of type 'DeleteLocation-request"
  "e455ff67939cb430aa8c8b048159a412")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteLocation-request>)))
  "Returns full string definition for message of type '<DeleteLocation-request>"
  (cl:format cl:nil "string map_name~%string location_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteLocation-request)))
  "Returns full string definition for message of type 'DeleteLocation-request"
  (cl:format cl:nil "string map_name~%string location_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'location_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteLocation-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':location_name (location_name msg))
))
;//! \htmlinclude DeleteLocation-response.msg.html

(cl:defclass <DeleteLocation-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DeleteLocation-response (<DeleteLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteLocation-response> is deprecated: use robint_msgs-srv:DeleteLocation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteLocation-response>) ostream)
  "Serializes a message object of type '<DeleteLocation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteLocation-response>) istream)
  "Deserializes a message object of type '<DeleteLocation-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteLocation-response>)))
  "Returns string type for a service object of type '<DeleteLocation-response>"
  "robint_msgs/DeleteLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteLocation-response)))
  "Returns string type for a service object of type 'DeleteLocation-response"
  "robint_msgs/DeleteLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteLocation-response>)))
  "Returns md5sum for a message object of type '<DeleteLocation-response>"
  "e455ff67939cb430aa8c8b048159a412")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteLocation-response)))
  "Returns md5sum for a message object of type 'DeleteLocation-response"
  "e455ff67939cb430aa8c8b048159a412")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteLocation-response>)))
  "Returns full string definition for message of type '<DeleteLocation-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteLocation-response)))
  "Returns full string definition for message of type 'DeleteLocation-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteLocation-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteLocation-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteLocation)))
  'DeleteLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteLocation)))
  'DeleteLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteLocation)))
  "Returns string type for a service object of type '<DeleteLocation>"
  "robint_msgs/DeleteLocation")