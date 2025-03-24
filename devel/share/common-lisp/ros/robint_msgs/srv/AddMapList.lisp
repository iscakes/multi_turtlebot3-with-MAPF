; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude AddMapList-request.msg.html

(cl:defclass <AddMapList-request> (roslisp-msg-protocol:ros-message)
  ((map_info_list
    :reader map_info_list
    :initarg :map_info_list
    :type (cl:vector robint_msgs-msg:MapInfo)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:MapInfo :initial-element (cl:make-instance 'robint_msgs-msg:MapInfo))))
)

(cl:defclass AddMapList-request (<AddMapList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddMapList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddMapList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddMapList-request> is deprecated: use robint_msgs-srv:AddMapList-request instead.")))

(cl:ensure-generic-function 'map_info_list-val :lambda-list '(m))
(cl:defmethod map_info_list-val ((m <AddMapList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_info_list-val is deprecated.  Use robint_msgs-srv:map_info_list instead.")
  (map_info_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddMapList-request>) ostream)
  "Serializes a message object of type '<AddMapList-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_info_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'map_info_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddMapList-request>) istream)
  "Deserializes a message object of type '<AddMapList-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_info_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_info_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:MapInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddMapList-request>)))
  "Returns string type for a service object of type '<AddMapList-request>"
  "robint_msgs/AddMapListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMapList-request)))
  "Returns string type for a service object of type 'AddMapList-request"
  "robint_msgs/AddMapListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddMapList-request>)))
  "Returns md5sum for a message object of type '<AddMapList-request>"
  "7377a14f5bd2306faf16013588b937bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddMapList-request)))
  "Returns md5sum for a message object of type 'AddMapList-request"
  "7377a14f5bd2306faf16013588b937bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddMapList-request>)))
  "Returns full string definition for message of type '<AddMapList-request>"
  (cl:format cl:nil "MapInfo[] map_info_list~%~%================================================================================~%MSG: robint_msgs/MapInfo~%string uuid~%string name~%string floor_id~%string building_id~%string time~%float32[] origin~%uint32 width~%uint32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddMapList-request)))
  "Returns full string definition for message of type 'AddMapList-request"
  (cl:format cl:nil "MapInfo[] map_info_list~%~%================================================================================~%MSG: robint_msgs/MapInfo~%string uuid~%string name~%string floor_id~%string building_id~%string time~%float32[] origin~%uint32 width~%uint32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddMapList-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_info_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddMapList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddMapList-request
    (cl:cons ':map_info_list (map_info_list msg))
))
;//! \htmlinclude AddMapList-response.msg.html

(cl:defclass <AddMapList-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AddMapList-response (<AddMapList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddMapList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddMapList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddMapList-response> is deprecated: use robint_msgs-srv:AddMapList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <AddMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddMapList-response>) ostream)
  "Serializes a message object of type '<AddMapList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddMapList-response>) istream)
  "Deserializes a message object of type '<AddMapList-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddMapList-response>)))
  "Returns string type for a service object of type '<AddMapList-response>"
  "robint_msgs/AddMapListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMapList-response)))
  "Returns string type for a service object of type 'AddMapList-response"
  "robint_msgs/AddMapListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddMapList-response>)))
  "Returns md5sum for a message object of type '<AddMapList-response>"
  "7377a14f5bd2306faf16013588b937bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddMapList-response)))
  "Returns md5sum for a message object of type 'AddMapList-response"
  "7377a14f5bd2306faf16013588b937bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddMapList-response>)))
  "Returns full string definition for message of type '<AddMapList-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddMapList-response)))
  "Returns full string definition for message of type 'AddMapList-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddMapList-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddMapList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddMapList-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddMapList)))
  'AddMapList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddMapList)))
  'AddMapList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMapList)))
  "Returns string type for a service object of type '<AddMapList>"
  "robint_msgs/AddMapList")