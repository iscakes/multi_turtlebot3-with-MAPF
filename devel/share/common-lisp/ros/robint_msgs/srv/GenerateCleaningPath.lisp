; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GenerateCleaningPath-request.msg.html

(cl:defclass <GenerateCleaningPath-request> (roslisp-msg-protocol:ros-message)
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
   (method
    :reader method
    :initarg :method
    :type cl:fixnum
    :initform 0)
   (area
    :reader area
    :initarg :area
    :type robint_msgs-msg:CleaningArea
    :initform (cl:make-instance 'robint_msgs-msg:CleaningArea)))
)

(cl:defclass GenerateCleaningPath-request (<GenerateCleaningPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateCleaningPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateCleaningPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GenerateCleaningPath-request> is deprecated: use robint_msgs-srv:GenerateCleaningPath-request instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <GenerateCleaningPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'coordinate_mode-val :lambda-list '(m))
(cl:defmethod coordinate_mode-val ((m <GenerateCleaningPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:coordinate_mode-val is deprecated.  Use robint_msgs-srv:coordinate_mode instead.")
  (coordinate_mode m))

(cl:ensure-generic-function 'method-val :lambda-list '(m))
(cl:defmethod method-val ((m <GenerateCleaningPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:method-val is deprecated.  Use robint_msgs-srv:method instead.")
  (method m))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <GenerateCleaningPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:area-val is deprecated.  Use robint_msgs-srv:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GenerateCleaningPath-request>)))
    "Constants for message type '<GenerateCleaningPath-request>"
  '((:WORLD . 0)
    (:IMAGE . 1)
    (:BOUSTROPHEDON . 21)
    (:CONTOUR_LINE . 22)
    (:STRIP_LINE . 23)
    (:RECTANGLE_ZIGZAG . 24)
    (:CONTOUR_PARALLEL . 25)
    (:METHOD_TEST . 26))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GenerateCleaningPath-request)))
    "Constants for message type 'GenerateCleaningPath-request"
  '((:WORLD . 0)
    (:IMAGE . 1)
    (:BOUSTROPHEDON . 21)
    (:CONTOUR_LINE . 22)
    (:STRIP_LINE . 23)
    (:RECTANGLE_ZIGZAG . 24)
    (:CONTOUR_PARALLEL . 25)
    (:METHOD_TEST . 26))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateCleaningPath-request>) ostream)
  "Serializes a message object of type '<GenerateCleaningPath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'method)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'area) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateCleaningPath-request>) istream)
  "Deserializes a message object of type '<GenerateCleaningPath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'method)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'area) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateCleaningPath-request>)))
  "Returns string type for a service object of type '<GenerateCleaningPath-request>"
  "robint_msgs/GenerateCleaningPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateCleaningPath-request)))
  "Returns string type for a service object of type 'GenerateCleaningPath-request"
  "robint_msgs/GenerateCleaningPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateCleaningPath-request>)))
  "Returns md5sum for a message object of type '<GenerateCleaningPath-request>"
  "b0af0e138bf97ac889a840793d2c3bcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateCleaningPath-request)))
  "Returns md5sum for a message object of type 'GenerateCleaningPath-request"
  "b0af0e138bf97ac889a840793d2c3bcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateCleaningPath-request>)))
  "Returns full string definition for message of type '<GenerateCleaningPath-request>"
  (cl:format cl:nil "string map_uuid~%uint8 coordinate_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%uint8 method~%uint8 BOUSTROPHEDON=21~%uint8 CONTOUR_LINE=22~%uint8 STRIP_LINE=23~%uint8 RECTANGLE_ZIGZAG=24~%uint8 CONTOUR_PARALLEL=25~%uint8 METHOD_TEST=26~%CleaningArea area~%~%================================================================================~%MSG: robint_msgs/CleaningArea~%string uuid~%string name~%string map_uuid~%string group_uuid~%string coverage_method~%PathWithPoint contour~%PathWithPoint[] paths~%PathWithPoint[] holes~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateCleaningPath-request)))
  "Returns full string definition for message of type 'GenerateCleaningPath-request"
  (cl:format cl:nil "string map_uuid~%uint8 coordinate_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%uint8 method~%uint8 BOUSTROPHEDON=21~%uint8 CONTOUR_LINE=22~%uint8 STRIP_LINE=23~%uint8 RECTANGLE_ZIGZAG=24~%uint8 CONTOUR_PARALLEL=25~%uint8 METHOD_TEST=26~%CleaningArea area~%~%================================================================================~%MSG: robint_msgs/CleaningArea~%string uuid~%string name~%string map_uuid~%string group_uuid~%string coverage_method~%PathWithPoint contour~%PathWithPoint[] paths~%PathWithPoint[] holes~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateCleaningPath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'area))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateCleaningPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateCleaningPath-request
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':coordinate_mode (coordinate_mode msg))
    (cl:cons ':method (method msg))
    (cl:cons ':area (area msg))
))
;//! \htmlinclude GenerateCleaningPath-response.msg.html

(cl:defclass <GenerateCleaningPath-response> (roslisp-msg-protocol:ros-message)
  ((coordinate_mode
    :reader coordinate_mode
    :initarg :coordinate_mode
    :type cl:fixnum
    :initform 0)
   (paths
    :reader paths
    :initarg :paths
    :type (cl:vector robint_msgs-msg:PathWithPoint)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:PathWithPoint :initial-element (cl:make-instance 'robint_msgs-msg:PathWithPoint)))
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

(cl:defclass GenerateCleaningPath-response (<GenerateCleaningPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateCleaningPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateCleaningPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GenerateCleaningPath-response> is deprecated: use robint_msgs-srv:GenerateCleaningPath-response instead.")))

(cl:ensure-generic-function 'coordinate_mode-val :lambda-list '(m))
(cl:defmethod coordinate_mode-val ((m <GenerateCleaningPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:coordinate_mode-val is deprecated.  Use robint_msgs-srv:coordinate_mode instead.")
  (coordinate_mode m))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <GenerateCleaningPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:paths-val is deprecated.  Use robint_msgs-srv:paths instead.")
  (paths m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GenerateCleaningPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GenerateCleaningPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GenerateCleaningPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateCleaningPath-response>) ostream)
  "Serializes a message object of type '<GenerateCleaningPath-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'paths))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateCleaningPath-response>) istream)
  "Deserializes a message object of type '<GenerateCleaningPath-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:PathWithPoint))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateCleaningPath-response>)))
  "Returns string type for a service object of type '<GenerateCleaningPath-response>"
  "robint_msgs/GenerateCleaningPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateCleaningPath-response)))
  "Returns string type for a service object of type 'GenerateCleaningPath-response"
  "robint_msgs/GenerateCleaningPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateCleaningPath-response>)))
  "Returns md5sum for a message object of type '<GenerateCleaningPath-response>"
  "b0af0e138bf97ac889a840793d2c3bcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateCleaningPath-response)))
  "Returns md5sum for a message object of type 'GenerateCleaningPath-response"
  "b0af0e138bf97ac889a840793d2c3bcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateCleaningPath-response>)))
  "Returns full string definition for message of type '<GenerateCleaningPath-response>"
  (cl:format cl:nil "uint8 coordinate_mode~%PathWithPoint[] paths~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateCleaningPath-response)))
  "Returns full string definition for message of type 'GenerateCleaningPath-response"
  (cl:format cl:nil "uint8 coordinate_mode~%PathWithPoint[] paths~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateCleaningPath-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateCleaningPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateCleaningPath-response
    (cl:cons ':coordinate_mode (coordinate_mode msg))
    (cl:cons ':paths (paths msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateCleaningPath)))
  'GenerateCleaningPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateCleaningPath)))
  'GenerateCleaningPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateCleaningPath)))
  "Returns string type for a service object of type '<GenerateCleaningPath>"
  "robint_msgs/GenerateCleaningPath")