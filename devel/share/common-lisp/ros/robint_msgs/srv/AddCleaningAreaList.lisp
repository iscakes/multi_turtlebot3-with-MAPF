; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude AddCleaningAreaList-request.msg.html

(cl:defclass <AddCleaningAreaList-request> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (coordinate_mode
    :reader coordinate_mode
    :initarg :coordinate_mode
    :type cl:fixnum
    :initform 0)
   (area_list
    :reader area_list
    :initarg :area_list
    :type (cl:vector robint_msgs-msg:CleaningArea)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:CleaningArea :initial-element (cl:make-instance 'robint_msgs-msg:CleaningArea))))
)

(cl:defclass AddCleaningAreaList-request (<AddCleaningAreaList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddCleaningAreaList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddCleaningAreaList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddCleaningAreaList-request> is deprecated: use robint_msgs-srv:AddCleaningAreaList-request instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <AddCleaningAreaList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'coordinate_mode-val :lambda-list '(m))
(cl:defmethod coordinate_mode-val ((m <AddCleaningAreaList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:coordinate_mode-val is deprecated.  Use robint_msgs-srv:coordinate_mode instead.")
  (coordinate_mode m))

(cl:ensure-generic-function 'area_list-val :lambda-list '(m))
(cl:defmethod area_list-val ((m <AddCleaningAreaList-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:area_list-val is deprecated.  Use robint_msgs-srv:area_list instead.")
  (area_list m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AddCleaningAreaList-request>)))
    "Constants for message type '<AddCleaningAreaList-request>"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AddCleaningAreaList-request)))
    "Constants for message type 'AddCleaningAreaList-request"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddCleaningAreaList-request>) ostream)
  "Serializes a message object of type '<AddCleaningAreaList-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'area_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'area_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddCleaningAreaList-request>) istream)
  "Deserializes a message object of type '<AddCleaningAreaList-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'area_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'area_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:CleaningArea))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddCleaningAreaList-request>)))
  "Returns string type for a service object of type '<AddCleaningAreaList-request>"
  "robint_msgs/AddCleaningAreaListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCleaningAreaList-request)))
  "Returns string type for a service object of type 'AddCleaningAreaList-request"
  "robint_msgs/AddCleaningAreaListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddCleaningAreaList-request>)))
  "Returns md5sum for a message object of type '<AddCleaningAreaList-request>"
  "2ac1fb955365c2de28133c632c2401b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddCleaningAreaList-request)))
  "Returns md5sum for a message object of type 'AddCleaningAreaList-request"
  "2ac1fb955365c2de28133c632c2401b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddCleaningAreaList-request>)))
  "Returns full string definition for message of type '<AddCleaningAreaList-request>"
  (cl:format cl:nil "string map_uuid~%uint8 coordinate_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%CleaningArea[] area_list~%~%================================================================================~%MSG: robint_msgs/CleaningArea~%string uuid~%string name~%string map_uuid~%string group_uuid~%string coverage_method~%PathWithPoint contour~%PathWithPoint[] paths~%PathWithPoint[] holes~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddCleaningAreaList-request)))
  "Returns full string definition for message of type 'AddCleaningAreaList-request"
  (cl:format cl:nil "string map_uuid~%uint8 coordinate_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%CleaningArea[] area_list~%~%================================================================================~%MSG: robint_msgs/CleaningArea~%string uuid~%string name~%string map_uuid~%string group_uuid~%string coverage_method~%PathWithPoint contour~%PathWithPoint[] paths~%PathWithPoint[] holes~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddCleaningAreaList-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'area_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddCleaningAreaList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddCleaningAreaList-request
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':coordinate_mode (coordinate_mode msg))
    (cl:cons ':area_list (area_list msg))
))
;//! \htmlinclude AddCleaningAreaList-response.msg.html

(cl:defclass <AddCleaningAreaList-response> (roslisp-msg-protocol:ros-message)
  ((area_list
    :reader area_list
    :initarg :area_list
    :type (cl:vector robint_msgs-msg:CleaningArea)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:CleaningArea :initial-element (cl:make-instance 'robint_msgs-msg:CleaningArea)))
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

(cl:defclass AddCleaningAreaList-response (<AddCleaningAreaList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddCleaningAreaList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddCleaningAreaList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddCleaningAreaList-response> is deprecated: use robint_msgs-srv:AddCleaningAreaList-response instead.")))

(cl:ensure-generic-function 'area_list-val :lambda-list '(m))
(cl:defmethod area_list-val ((m <AddCleaningAreaList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:area_list-val is deprecated.  Use robint_msgs-srv:area_list instead.")
  (area_list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddCleaningAreaList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <AddCleaningAreaList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddCleaningAreaList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddCleaningAreaList-response>) ostream)
  "Serializes a message object of type '<AddCleaningAreaList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'area_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'area_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddCleaningAreaList-response>) istream)
  "Deserializes a message object of type '<AddCleaningAreaList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'area_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'area_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:CleaningArea))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddCleaningAreaList-response>)))
  "Returns string type for a service object of type '<AddCleaningAreaList-response>"
  "robint_msgs/AddCleaningAreaListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCleaningAreaList-response)))
  "Returns string type for a service object of type 'AddCleaningAreaList-response"
  "robint_msgs/AddCleaningAreaListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddCleaningAreaList-response>)))
  "Returns md5sum for a message object of type '<AddCleaningAreaList-response>"
  "2ac1fb955365c2de28133c632c2401b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddCleaningAreaList-response)))
  "Returns md5sum for a message object of type 'AddCleaningAreaList-response"
  "2ac1fb955365c2de28133c632c2401b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddCleaningAreaList-response>)))
  "Returns full string definition for message of type '<AddCleaningAreaList-response>"
  (cl:format cl:nil "CleaningArea[] area_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/CleaningArea~%string uuid~%string name~%string map_uuid~%string group_uuid~%string coverage_method~%PathWithPoint contour~%PathWithPoint[] paths~%PathWithPoint[] holes~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddCleaningAreaList-response)))
  "Returns full string definition for message of type 'AddCleaningAreaList-response"
  (cl:format cl:nil "CleaningArea[] area_list~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/CleaningArea~%string uuid~%string name~%string map_uuid~%string group_uuid~%string coverage_method~%PathWithPoint contour~%PathWithPoint[] paths~%PathWithPoint[] holes~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddCleaningAreaList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'area_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddCleaningAreaList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddCleaningAreaList-response
    (cl:cons ':area_list (area_list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddCleaningAreaList)))
  'AddCleaningAreaList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddCleaningAreaList)))
  'AddCleaningAreaList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCleaningAreaList)))
  "Returns string type for a service object of type '<AddCleaningAreaList>"
  "robint_msgs/AddCleaningAreaList")