; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetMapInfoList-request.msg.html

(cl:defclass <GetMapInfoList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetMapInfoList-request (<GetMapInfoList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapInfoList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapInfoList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetMapInfoList-request> is deprecated: use robint_msgs-srv:GetMapInfoList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapInfoList-request>) ostream)
  "Serializes a message object of type '<GetMapInfoList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapInfoList-request>) istream)
  "Deserializes a message object of type '<GetMapInfoList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapInfoList-request>)))
  "Returns string type for a service object of type '<GetMapInfoList-request>"
  "robint_msgs/GetMapInfoListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapInfoList-request)))
  "Returns string type for a service object of type 'GetMapInfoList-request"
  "robint_msgs/GetMapInfoListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapInfoList-request>)))
  "Returns md5sum for a message object of type '<GetMapInfoList-request>"
  "57f05d6fb9592a3ccafd77c7df55a4c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapInfoList-request)))
  "Returns md5sum for a message object of type 'GetMapInfoList-request"
  "57f05d6fb9592a3ccafd77c7df55a4c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapInfoList-request>)))
  "Returns full string definition for message of type '<GetMapInfoList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapInfoList-request)))
  "Returns full string definition for message of type 'GetMapInfoList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapInfoList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapInfoList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapInfoList-request
))
;//! \htmlinclude GetMapInfoList-response.msg.html

(cl:defclass <GetMapInfoList-response> (roslisp-msg-protocol:ros-message)
  ((map_info_list
    :reader map_info_list
    :initarg :map_info_list
    :type (cl:vector robint_msgs-msg:MapInfo)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:MapInfo :initial-element (cl:make-instance 'robint_msgs-msg:MapInfo)))
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

(cl:defclass GetMapInfoList-response (<GetMapInfoList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMapInfoList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMapInfoList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetMapInfoList-response> is deprecated: use robint_msgs-srv:GetMapInfoList-response instead.")))

(cl:ensure-generic-function 'map_info_list-val :lambda-list '(m))
(cl:defmethod map_info_list-val ((m <GetMapInfoList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_info_list-val is deprecated.  Use robint_msgs-srv:map_info_list instead.")
  (map_info_list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetMapInfoList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetMapInfoList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetMapInfoList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMapInfoList-response>) ostream)
  "Serializes a message object of type '<GetMapInfoList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_info_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'map_info_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMapInfoList-response>) istream)
  "Deserializes a message object of type '<GetMapInfoList-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMapInfoList-response>)))
  "Returns string type for a service object of type '<GetMapInfoList-response>"
  "robint_msgs/GetMapInfoListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapInfoList-response)))
  "Returns string type for a service object of type 'GetMapInfoList-response"
  "robint_msgs/GetMapInfoListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMapInfoList-response>)))
  "Returns md5sum for a message object of type '<GetMapInfoList-response>"
  "57f05d6fb9592a3ccafd77c7df55a4c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMapInfoList-response)))
  "Returns md5sum for a message object of type 'GetMapInfoList-response"
  "57f05d6fb9592a3ccafd77c7df55a4c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMapInfoList-response>)))
  "Returns full string definition for message of type '<GetMapInfoList-response>"
  (cl:format cl:nil "MapInfo[] map_info_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/MapInfo~%string uuid~%string name~%string floor_id~%string building_id~%string time~%float32[] origin~%uint32 width~%uint32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMapInfoList-response)))
  "Returns full string definition for message of type 'GetMapInfoList-response"
  (cl:format cl:nil "MapInfo[] map_info_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/MapInfo~%string uuid~%string name~%string floor_id~%string building_id~%string time~%float32[] origin~%uint32 width~%uint32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMapInfoList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_info_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMapInfoList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMapInfoList-response
    (cl:cons ':map_info_list (map_info_list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMapInfoList)))
  'GetMapInfoList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMapInfoList)))
  'GetMapInfoList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMapInfoList)))
  "Returns string type for a service object of type '<GetMapInfoList>"
  "robint_msgs/GetMapInfoList")