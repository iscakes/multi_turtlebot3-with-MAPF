; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetDeliveryOrderList-request.msg.html

(cl:defclass <GetDeliveryOrderList-request> (roslisp-msg-protocol:ros-message)
  ((uuid_list
    :reader uuid_list
    :initarg :uuid_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetDeliveryOrderList-request (<GetDeliveryOrderList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeliveryOrderList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeliveryOrderList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetDeliveryOrderList-request> is deprecated: use robint_msgs-srv:GetDeliveryOrderList-request instead.")))

(cl:ensure-generic-function 'uuid_list-val :lambda-list '(m))
(cl:defmethod uuid_list-val ((m <GetDeliveryOrderList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:uuid_list-val is deprecated.  Use robint_msgs-srv:uuid_list instead.")
  (uuid_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeliveryOrderList-request>) ostream)
  "Serializes a message object of type '<GetDeliveryOrderList-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uuid_list))))
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
   (cl:slot-value msg 'uuid_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeliveryOrderList-request>) istream)
  "Deserializes a message object of type '<GetDeliveryOrderList-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uuid_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uuid_list)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeliveryOrderList-request>)))
  "Returns string type for a service object of type '<GetDeliveryOrderList-request>"
  "robint_msgs/GetDeliveryOrderListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeliveryOrderList-request)))
  "Returns string type for a service object of type 'GetDeliveryOrderList-request"
  "robint_msgs/GetDeliveryOrderListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeliveryOrderList-request>)))
  "Returns md5sum for a message object of type '<GetDeliveryOrderList-request>"
  "baee876c27499d21e1c7296f0006d656")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeliveryOrderList-request)))
  "Returns md5sum for a message object of type 'GetDeliveryOrderList-request"
  "baee876c27499d21e1c7296f0006d656")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeliveryOrderList-request>)))
  "Returns full string definition for message of type '<GetDeliveryOrderList-request>"
  (cl:format cl:nil "string[] uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeliveryOrderList-request)))
  "Returns full string definition for message of type 'GetDeliveryOrderList-request"
  (cl:format cl:nil "string[] uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeliveryOrderList-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uuid_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeliveryOrderList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeliveryOrderList-request
    (cl:cons ':uuid_list (uuid_list msg))
))
;//! \htmlinclude GetDeliveryOrderList-response.msg.html

(cl:defclass <GetDeliveryOrderList-response> (roslisp-msg-protocol:ros-message)
  ((uuid_list
    :reader uuid_list
    :initarg :uuid_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (success
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

(cl:defclass GetDeliveryOrderList-response (<GetDeliveryOrderList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDeliveryOrderList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDeliveryOrderList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetDeliveryOrderList-response> is deprecated: use robint_msgs-srv:GetDeliveryOrderList-response instead.")))

(cl:ensure-generic-function 'uuid_list-val :lambda-list '(m))
(cl:defmethod uuid_list-val ((m <GetDeliveryOrderList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:uuid_list-val is deprecated.  Use robint_msgs-srv:uuid_list instead.")
  (uuid_list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetDeliveryOrderList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetDeliveryOrderList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetDeliveryOrderList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDeliveryOrderList-response>) ostream)
  "Serializes a message object of type '<GetDeliveryOrderList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uuid_list))))
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
   (cl:slot-value msg 'uuid_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDeliveryOrderList-response>) istream)
  "Deserializes a message object of type '<GetDeliveryOrderList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uuid_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uuid_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDeliveryOrderList-response>)))
  "Returns string type for a service object of type '<GetDeliveryOrderList-response>"
  "robint_msgs/GetDeliveryOrderListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeliveryOrderList-response)))
  "Returns string type for a service object of type 'GetDeliveryOrderList-response"
  "robint_msgs/GetDeliveryOrderListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDeliveryOrderList-response>)))
  "Returns md5sum for a message object of type '<GetDeliveryOrderList-response>"
  "baee876c27499d21e1c7296f0006d656")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDeliveryOrderList-response)))
  "Returns md5sum for a message object of type 'GetDeliveryOrderList-response"
  "baee876c27499d21e1c7296f0006d656")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDeliveryOrderList-response>)))
  "Returns full string definition for message of type '<GetDeliveryOrderList-response>"
  (cl:format cl:nil "string[] uuid_list~%bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDeliveryOrderList-response)))
  "Returns full string definition for message of type 'GetDeliveryOrderList-response"
  (cl:format cl:nil "string[] uuid_list~%bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDeliveryOrderList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uuid_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDeliveryOrderList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDeliveryOrderList-response
    (cl:cons ':uuid_list (uuid_list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDeliveryOrderList)))
  'GetDeliveryOrderList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDeliveryOrderList)))
  'GetDeliveryOrderList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDeliveryOrderList)))
  "Returns string type for a service object of type '<GetDeliveryOrderList>"
  "robint_msgs/GetDeliveryOrderList")