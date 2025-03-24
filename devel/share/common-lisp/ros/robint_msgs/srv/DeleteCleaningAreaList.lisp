; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude DeleteCleaningAreaList-request.msg.html

(cl:defclass <DeleteCleaningAreaList-request> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (uuid_list
    :reader uuid_list
    :initarg :uuid_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass DeleteCleaningAreaList-request (<DeleteCleaningAreaList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteCleaningAreaList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteCleaningAreaList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteCleaningAreaList-request> is deprecated: use robint_msgs-srv:DeleteCleaningAreaList-request instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <DeleteCleaningAreaList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'uuid_list-val :lambda-list '(m))
(cl:defmethod uuid_list-val ((m <DeleteCleaningAreaList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:uuid_list-val is deprecated.  Use robint_msgs-srv:uuid_list instead.")
  (uuid_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteCleaningAreaList-request>) ostream)
  "Serializes a message object of type '<DeleteCleaningAreaList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteCleaningAreaList-request>) istream)
  "Deserializes a message object of type '<DeleteCleaningAreaList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteCleaningAreaList-request>)))
  "Returns string type for a service object of type '<DeleteCleaningAreaList-request>"
  "robint_msgs/DeleteCleaningAreaListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteCleaningAreaList-request)))
  "Returns string type for a service object of type 'DeleteCleaningAreaList-request"
  "robint_msgs/DeleteCleaningAreaListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteCleaningAreaList-request>)))
  "Returns md5sum for a message object of type '<DeleteCleaningAreaList-request>"
  "92a6bbded456873cc100a7391042144d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteCleaningAreaList-request)))
  "Returns md5sum for a message object of type 'DeleteCleaningAreaList-request"
  "92a6bbded456873cc100a7391042144d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteCleaningAreaList-request>)))
  "Returns full string definition for message of type '<DeleteCleaningAreaList-request>"
  (cl:format cl:nil "string map_uuid~%string[] uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteCleaningAreaList-request)))
  "Returns full string definition for message of type 'DeleteCleaningAreaList-request"
  (cl:format cl:nil "string map_uuid~%string[] uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteCleaningAreaList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uuid_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteCleaningAreaList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteCleaningAreaList-request
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':uuid_list (uuid_list msg))
))
;//! \htmlinclude DeleteCleaningAreaList-response.msg.html

(cl:defclass <DeleteCleaningAreaList-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteCleaningAreaList-response (<DeleteCleaningAreaList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteCleaningAreaList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteCleaningAreaList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteCleaningAreaList-response> is deprecated: use robint_msgs-srv:DeleteCleaningAreaList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteCleaningAreaList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <DeleteCleaningAreaList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteCleaningAreaList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteCleaningAreaList-response>) ostream)
  "Serializes a message object of type '<DeleteCleaningAreaList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteCleaningAreaList-response>) istream)
  "Deserializes a message object of type '<DeleteCleaningAreaList-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteCleaningAreaList-response>)))
  "Returns string type for a service object of type '<DeleteCleaningAreaList-response>"
  "robint_msgs/DeleteCleaningAreaListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteCleaningAreaList-response)))
  "Returns string type for a service object of type 'DeleteCleaningAreaList-response"
  "robint_msgs/DeleteCleaningAreaListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteCleaningAreaList-response>)))
  "Returns md5sum for a message object of type '<DeleteCleaningAreaList-response>"
  "92a6bbded456873cc100a7391042144d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteCleaningAreaList-response)))
  "Returns md5sum for a message object of type 'DeleteCleaningAreaList-response"
  "92a6bbded456873cc100a7391042144d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteCleaningAreaList-response>)))
  "Returns full string definition for message of type '<DeleteCleaningAreaList-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteCleaningAreaList-response)))
  "Returns full string definition for message of type 'DeleteCleaningAreaList-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteCleaningAreaList-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteCleaningAreaList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteCleaningAreaList-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteCleaningAreaList)))
  'DeleteCleaningAreaList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteCleaningAreaList)))
  'DeleteCleaningAreaList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteCleaningAreaList)))
  "Returns string type for a service object of type '<DeleteCleaningAreaList>"
  "robint_msgs/DeleteCleaningAreaList")