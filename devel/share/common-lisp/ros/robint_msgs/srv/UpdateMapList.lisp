; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude UpdateMapList-request.msg.html

(cl:defclass <UpdateMapList-request> (roslisp-msg-protocol:ros-message)
  ((map_uuid_list
    :reader map_uuid_list
    :initarg :map_uuid_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass UpdateMapList-request (<UpdateMapList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateMapList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateMapList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<UpdateMapList-request> is deprecated: use robint_msgs-srv:UpdateMapList-request instead.")))

(cl:ensure-generic-function 'map_uuid_list-val :lambda-list '(m))
(cl:defmethod map_uuid_list-val ((m <UpdateMapList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid_list-val is deprecated.  Use robint_msgs-srv:map_uuid_list instead.")
  (map_uuid_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateMapList-request>) ostream)
  "Serializes a message object of type '<UpdateMapList-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateMapList-request>) istream)
  "Deserializes a message object of type '<UpdateMapList-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateMapList-request>)))
  "Returns string type for a service object of type '<UpdateMapList-request>"
  "robint_msgs/UpdateMapListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateMapList-request)))
  "Returns string type for a service object of type 'UpdateMapList-request"
  "robint_msgs/UpdateMapListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateMapList-request>)))
  "Returns md5sum for a message object of type '<UpdateMapList-request>"
  "5b682de0bd32eef9ed86c7dc25bda0e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateMapList-request)))
  "Returns md5sum for a message object of type 'UpdateMapList-request"
  "5b682de0bd32eef9ed86c7dc25bda0e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateMapList-request>)))
  "Returns full string definition for message of type '<UpdateMapList-request>"
  (cl:format cl:nil "string[] map_uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateMapList-request)))
  "Returns full string definition for message of type 'UpdateMapList-request"
  (cl:format cl:nil "string[] map_uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateMapList-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_uuid_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateMapList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateMapList-request
    (cl:cons ':map_uuid_list (map_uuid_list msg))
))
;//! \htmlinclude UpdateMapList-response.msg.html

(cl:defclass <UpdateMapList-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UpdateMapList-response (<UpdateMapList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateMapList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateMapList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<UpdateMapList-response> is deprecated: use robint_msgs-srv:UpdateMapList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UpdateMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <UpdateMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateMapList-response>) ostream)
  "Serializes a message object of type '<UpdateMapList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateMapList-response>) istream)
  "Deserializes a message object of type '<UpdateMapList-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateMapList-response>)))
  "Returns string type for a service object of type '<UpdateMapList-response>"
  "robint_msgs/UpdateMapListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateMapList-response)))
  "Returns string type for a service object of type 'UpdateMapList-response"
  "robint_msgs/UpdateMapListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateMapList-response>)))
  "Returns md5sum for a message object of type '<UpdateMapList-response>"
  "5b682de0bd32eef9ed86c7dc25bda0e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateMapList-response)))
  "Returns md5sum for a message object of type 'UpdateMapList-response"
  "5b682de0bd32eef9ed86c7dc25bda0e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateMapList-response>)))
  "Returns full string definition for message of type '<UpdateMapList-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateMapList-response)))
  "Returns full string definition for message of type 'UpdateMapList-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateMapList-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateMapList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateMapList-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateMapList)))
  'UpdateMapList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateMapList)))
  'UpdateMapList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateMapList)))
  "Returns string type for a service object of type '<UpdateMapList>"
  "robint_msgs/UpdateMapList")