; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetCleaningAreaInfoList-request.msg.html

(cl:defclass <GetCleaningAreaInfoList-request> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform ""))
)

(cl:defclass GetCleaningAreaInfoList-request (<GetCleaningAreaInfoList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCleaningAreaInfoList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCleaningAreaInfoList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCleaningAreaInfoList-request> is deprecated: use robint_msgs-srv:GetCleaningAreaInfoList-request instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <GetCleaningAreaInfoList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCleaningAreaInfoList-request>) ostream)
  "Serializes a message object of type '<GetCleaningAreaInfoList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCleaningAreaInfoList-request>) istream)
  "Deserializes a message object of type '<GetCleaningAreaInfoList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCleaningAreaInfoList-request>)))
  "Returns string type for a service object of type '<GetCleaningAreaInfoList-request>"
  "robint_msgs/GetCleaningAreaInfoListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCleaningAreaInfoList-request)))
  "Returns string type for a service object of type 'GetCleaningAreaInfoList-request"
  "robint_msgs/GetCleaningAreaInfoListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCleaningAreaInfoList-request>)))
  "Returns md5sum for a message object of type '<GetCleaningAreaInfoList-request>"
  "c9bd3dc1e14b85c9d69ae02a4712f46b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCleaningAreaInfoList-request)))
  "Returns md5sum for a message object of type 'GetCleaningAreaInfoList-request"
  "c9bd3dc1e14b85c9d69ae02a4712f46b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCleaningAreaInfoList-request>)))
  "Returns full string definition for message of type '<GetCleaningAreaInfoList-request>"
  (cl:format cl:nil "string map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCleaningAreaInfoList-request)))
  "Returns full string definition for message of type 'GetCleaningAreaInfoList-request"
  (cl:format cl:nil "string map_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCleaningAreaInfoList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCleaningAreaInfoList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCleaningAreaInfoList-request
    (cl:cons ':map_uuid (map_uuid msg))
))
;//! \htmlinclude GetCleaningAreaInfoList-response.msg.html

(cl:defclass <GetCleaningAreaInfoList-response> (roslisp-msg-protocol:ros-message)
  ((area_info_list
    :reader area_info_list
    :initarg :area_info_list
    :type (cl:vector robint_msgs-msg:CleaningAreaInfo)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:CleaningAreaInfo :initial-element (cl:make-instance 'robint_msgs-msg:CleaningAreaInfo)))
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

(cl:defclass GetCleaningAreaInfoList-response (<GetCleaningAreaInfoList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCleaningAreaInfoList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCleaningAreaInfoList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCleaningAreaInfoList-response> is deprecated: use robint_msgs-srv:GetCleaningAreaInfoList-response instead.")))

(cl:ensure-generic-function 'area_info_list-val :lambda-list '(m))
(cl:defmethod area_info_list-val ((m <GetCleaningAreaInfoList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:area_info_list-val is deprecated.  Use robint_msgs-srv:area_info_list instead.")
  (area_info_list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCleaningAreaInfoList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetCleaningAreaInfoList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetCleaningAreaInfoList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCleaningAreaInfoList-response>) ostream)
  "Serializes a message object of type '<GetCleaningAreaInfoList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'area_info_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'area_info_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCleaningAreaInfoList-response>) istream)
  "Deserializes a message object of type '<GetCleaningAreaInfoList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'area_info_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'area_info_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:CleaningAreaInfo))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCleaningAreaInfoList-response>)))
  "Returns string type for a service object of type '<GetCleaningAreaInfoList-response>"
  "robint_msgs/GetCleaningAreaInfoListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCleaningAreaInfoList-response)))
  "Returns string type for a service object of type 'GetCleaningAreaInfoList-response"
  "robint_msgs/GetCleaningAreaInfoListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCleaningAreaInfoList-response>)))
  "Returns md5sum for a message object of type '<GetCleaningAreaInfoList-response>"
  "c9bd3dc1e14b85c9d69ae02a4712f46b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCleaningAreaInfoList-response)))
  "Returns md5sum for a message object of type 'GetCleaningAreaInfoList-response"
  "c9bd3dc1e14b85c9d69ae02a4712f46b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCleaningAreaInfoList-response>)))
  "Returns full string definition for message of type '<GetCleaningAreaInfoList-response>"
  (cl:format cl:nil "CleaningAreaInfo[] area_info_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/CleaningAreaInfo~%string uuid~%string name~%string map_uuid~%string group_uuid~%float32 area  # m * m~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCleaningAreaInfoList-response)))
  "Returns full string definition for message of type 'GetCleaningAreaInfoList-response"
  (cl:format cl:nil "CleaningAreaInfo[] area_info_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/CleaningAreaInfo~%string uuid~%string name~%string map_uuid~%string group_uuid~%float32 area  # m * m~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCleaningAreaInfoList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'area_info_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCleaningAreaInfoList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCleaningAreaInfoList-response
    (cl:cons ':area_info_list (area_info_list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCleaningAreaInfoList)))
  'GetCleaningAreaInfoList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCleaningAreaInfoList)))
  'GetCleaningAreaInfoList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCleaningAreaInfoList)))
  "Returns string type for a service object of type '<GetCleaningAreaInfoList>"
  "robint_msgs/GetCleaningAreaInfoList")