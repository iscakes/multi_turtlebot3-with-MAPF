; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude DeleteMapList-request.msg.html

(cl:defclass <DeleteMapList-request> (roslisp-msg-protocol:ros-message)
  ((map_name_list
    :reader map_name_list
    :initarg :map_name_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (map_uuid_list
    :reader map_uuid_list
    :initarg :map_uuid_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass DeleteMapList-request (<DeleteMapList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteMapList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteMapList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteMapList-request> is deprecated: use robint_msgs-srv:DeleteMapList-request instead.")))

(cl:ensure-generic-function 'map_name_list-val :lambda-list '(m))
(cl:defmethod map_name_list-val ((m <DeleteMapList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name_list-val is deprecated.  Use robint_msgs-srv:map_name_list instead.")
  (map_name_list m))

(cl:ensure-generic-function 'map_uuid_list-val :lambda-list '(m))
(cl:defmethod map_uuid_list-val ((m <DeleteMapList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid_list-val is deprecated.  Use robint_msgs-srv:map_uuid_list instead.")
  (map_uuid_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteMapList-request>) ostream)
  "Serializes a message object of type '<DeleteMapList-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_name_list))))
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
   (cl:slot-value msg 'map_name_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_uuid_list))))
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
   (cl:slot-value msg 'map_uuid_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteMapList-request>) istream)
  "Deserializes a message object of type '<DeleteMapList-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_name_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_name_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_uuid_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_uuid_list)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteMapList-request>)))
  "Returns string type for a service object of type '<DeleteMapList-request>"
  "robint_msgs/DeleteMapListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMapList-request)))
  "Returns string type for a service object of type 'DeleteMapList-request"
  "robint_msgs/DeleteMapListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteMapList-request>)))
  "Returns md5sum for a message object of type '<DeleteMapList-request>"
  "5b79296d0ca619a3fadac0e357b7f539")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteMapList-request)))
  "Returns md5sum for a message object of type 'DeleteMapList-request"
  "5b79296d0ca619a3fadac0e357b7f539")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteMapList-request>)))
  "Returns full string definition for message of type '<DeleteMapList-request>"
  (cl:format cl:nil "string[] map_name_list~%string[] map_uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteMapList-request)))
  "Returns full string definition for message of type 'DeleteMapList-request"
  (cl:format cl:nil "string[] map_name_list~%string[] map_uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteMapList-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_name_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_uuid_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteMapList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteMapList-request
    (cl:cons ':map_name_list (map_name_list msg))
    (cl:cons ':map_uuid_list (map_uuid_list msg))
))
;//! \htmlinclude DeleteMapList-response.msg.html

(cl:defclass <DeleteMapList-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteMapList-response (<DeleteMapList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteMapList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteMapList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteMapList-response> is deprecated: use robint_msgs-srv:DeleteMapList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <DeleteMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteMapList-response>) ostream)
  "Serializes a message object of type '<DeleteMapList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteMapList-response>) istream)
  "Deserializes a message object of type '<DeleteMapList-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteMapList-response>)))
  "Returns string type for a service object of type '<DeleteMapList-response>"
  "robint_msgs/DeleteMapListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMapList-response)))
  "Returns string type for a service object of type 'DeleteMapList-response"
  "robint_msgs/DeleteMapListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteMapList-response>)))
  "Returns md5sum for a message object of type '<DeleteMapList-response>"
  "5b79296d0ca619a3fadac0e357b7f539")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteMapList-response)))
  "Returns md5sum for a message object of type 'DeleteMapList-response"
  "5b79296d0ca619a3fadac0e357b7f539")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteMapList-response>)))
  "Returns full string definition for message of type '<DeleteMapList-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteMapList-response)))
  "Returns full string definition for message of type 'DeleteMapList-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteMapList-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteMapList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteMapList-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteMapList)))
  'DeleteMapList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteMapList)))
  'DeleteMapList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteMapList)))
  "Returns string type for a service object of type '<DeleteMapList>"
  "robint_msgs/DeleteMapList")