; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude DeleteVirtualWallList-request.msg.html

(cl:defclass <DeleteVirtualWallList-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (vw_uuid_list
    :reader vw_uuid_list
    :initarg :vw_uuid_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass DeleteVirtualWallList-request (<DeleteVirtualWallList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteVirtualWallList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteVirtualWallList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteVirtualWallList-request> is deprecated: use robint_msgs-srv:DeleteVirtualWallList-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <DeleteVirtualWallList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'vw_uuid_list-val :lambda-list '(m))
(cl:defmethod vw_uuid_list-val ((m <DeleteVirtualWallList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:vw_uuid_list-val is deprecated.  Use robint_msgs-srv:vw_uuid_list instead.")
  (vw_uuid_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteVirtualWallList-request>) ostream)
  "Serializes a message object of type '<DeleteVirtualWallList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vw_uuid_list))))
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
   (cl:slot-value msg 'vw_uuid_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteVirtualWallList-request>) istream)
  "Deserializes a message object of type '<DeleteVirtualWallList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vw_uuid_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vw_uuid_list)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteVirtualWallList-request>)))
  "Returns string type for a service object of type '<DeleteVirtualWallList-request>"
  "robint_msgs/DeleteVirtualWallListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteVirtualWallList-request)))
  "Returns string type for a service object of type 'DeleteVirtualWallList-request"
  "robint_msgs/DeleteVirtualWallListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteVirtualWallList-request>)))
  "Returns md5sum for a message object of type '<DeleteVirtualWallList-request>"
  "f680126c6902059790e66ef254ef72f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteVirtualWallList-request)))
  "Returns md5sum for a message object of type 'DeleteVirtualWallList-request"
  "f680126c6902059790e66ef254ef72f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteVirtualWallList-request>)))
  "Returns full string definition for message of type '<DeleteVirtualWallList-request>"
  (cl:format cl:nil "string map_name~%string[] vw_uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteVirtualWallList-request)))
  "Returns full string definition for message of type 'DeleteVirtualWallList-request"
  (cl:format cl:nil "string map_name~%string[] vw_uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteVirtualWallList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vw_uuid_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteVirtualWallList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteVirtualWallList-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':vw_uuid_list (vw_uuid_list msg))
))
;//! \htmlinclude DeleteVirtualWallList-response.msg.html

(cl:defclass <DeleteVirtualWallList-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteVirtualWallList-response (<DeleteVirtualWallList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteVirtualWallList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteVirtualWallList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteVirtualWallList-response> is deprecated: use robint_msgs-srv:DeleteVirtualWallList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <DeleteVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteVirtualWallList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteVirtualWallList-response>) ostream)
  "Serializes a message object of type '<DeleteVirtualWallList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteVirtualWallList-response>) istream)
  "Deserializes a message object of type '<DeleteVirtualWallList-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteVirtualWallList-response>)))
  "Returns string type for a service object of type '<DeleteVirtualWallList-response>"
  "robint_msgs/DeleteVirtualWallListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteVirtualWallList-response)))
  "Returns string type for a service object of type 'DeleteVirtualWallList-response"
  "robint_msgs/DeleteVirtualWallListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteVirtualWallList-response>)))
  "Returns md5sum for a message object of type '<DeleteVirtualWallList-response>"
  "f680126c6902059790e66ef254ef72f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteVirtualWallList-response)))
  "Returns md5sum for a message object of type 'DeleteVirtualWallList-response"
  "f680126c6902059790e66ef254ef72f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteVirtualWallList-response>)))
  "Returns full string definition for message of type '<DeleteVirtualWallList-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteVirtualWallList-response)))
  "Returns full string definition for message of type 'DeleteVirtualWallList-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteVirtualWallList-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteVirtualWallList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteVirtualWallList-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteVirtualWallList)))
  'DeleteVirtualWallList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteVirtualWallList)))
  'DeleteVirtualWallList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteVirtualWallList)))
  "Returns string type for a service object of type '<DeleteVirtualWallList>"
  "robint_msgs/DeleteVirtualWallList")