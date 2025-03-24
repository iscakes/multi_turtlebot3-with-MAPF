; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude DeleteLocationList-request.msg.html

(cl:defclass <DeleteLocationList-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (group_uuid
    :reader group_uuid
    :initarg :group_uuid
    :type cl:string
    :initform "")
   (location_uuid_list
    :reader location_uuid_list
    :initarg :location_uuid_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass DeleteLocationList-request (<DeleteLocationList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteLocationList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteLocationList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteLocationList-request> is deprecated: use robint_msgs-srv:DeleteLocationList-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <DeleteLocationList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <DeleteLocationList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'group_uuid-val :lambda-list '(m))
(cl:defmethod group_uuid-val ((m <DeleteLocationList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:group_uuid-val is deprecated.  Use robint_msgs-srv:group_uuid instead.")
  (group_uuid m))

(cl:ensure-generic-function 'location_uuid_list-val :lambda-list '(m))
(cl:defmethod location_uuid_list-val ((m <DeleteLocationList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location_uuid_list-val is deprecated.  Use robint_msgs-srv:location_uuid_list instead.")
  (location_uuid_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteLocationList-request>) ostream)
  "Serializes a message object of type '<DeleteLocationList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_uuid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'location_uuid_list))))
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
   (cl:slot-value msg 'location_uuid_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteLocationList-request>) istream)
  "Deserializes a message object of type '<DeleteLocationList-request>"
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
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'location_uuid_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'location_uuid_list)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteLocationList-request>)))
  "Returns string type for a service object of type '<DeleteLocationList-request>"
  "robint_msgs/DeleteLocationListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteLocationList-request)))
  "Returns string type for a service object of type 'DeleteLocationList-request"
  "robint_msgs/DeleteLocationListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteLocationList-request>)))
  "Returns md5sum for a message object of type '<DeleteLocationList-request>"
  "a5384e6972f15cf311e3fd436279ad0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteLocationList-request)))
  "Returns md5sum for a message object of type 'DeleteLocationList-request"
  "a5384e6972f15cf311e3fd436279ad0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteLocationList-request>)))
  "Returns full string definition for message of type '<DeleteLocationList-request>"
  (cl:format cl:nil "string map_name~%string map_uuid~%string group_uuid~%string[] location_uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteLocationList-request)))
  "Returns full string definition for message of type 'DeleteLocationList-request"
  (cl:format cl:nil "string map_name~%string map_uuid~%string group_uuid~%string[] location_uuid_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteLocationList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'map_uuid))
     4 (cl:length (cl:slot-value msg 'group_uuid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'location_uuid_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteLocationList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteLocationList-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':group_uuid (group_uuid msg))
    (cl:cons ':location_uuid_list (location_uuid_list msg))
))
;//! \htmlinclude DeleteLocationList-response.msg.html

(cl:defclass <DeleteLocationList-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteLocationList-response (<DeleteLocationList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteLocationList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteLocationList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<DeleteLocationList-response> is deprecated: use robint_msgs-srv:DeleteLocationList-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteLocationList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <DeleteLocationList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteLocationList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteLocationList-response>) ostream)
  "Serializes a message object of type '<DeleteLocationList-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteLocationList-response>) istream)
  "Deserializes a message object of type '<DeleteLocationList-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteLocationList-response>)))
  "Returns string type for a service object of type '<DeleteLocationList-response>"
  "robint_msgs/DeleteLocationListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteLocationList-response)))
  "Returns string type for a service object of type 'DeleteLocationList-response"
  "robint_msgs/DeleteLocationListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteLocationList-response>)))
  "Returns md5sum for a message object of type '<DeleteLocationList-response>"
  "a5384e6972f15cf311e3fd436279ad0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteLocationList-response)))
  "Returns md5sum for a message object of type 'DeleteLocationList-response"
  "a5384e6972f15cf311e3fd436279ad0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteLocationList-response>)))
  "Returns full string definition for message of type '<DeleteLocationList-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteLocationList-response)))
  "Returns full string definition for message of type 'DeleteLocationList-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteLocationList-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteLocationList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteLocationList-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteLocationList)))
  'DeleteLocationList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteLocationList)))
  'DeleteLocationList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteLocationList)))
  "Returns string type for a service object of type '<DeleteLocationList>"
  "robint_msgs/DeleteLocationList")