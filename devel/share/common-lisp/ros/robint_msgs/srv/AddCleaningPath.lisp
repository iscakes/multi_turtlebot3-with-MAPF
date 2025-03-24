; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude AddCleaningPath-request.msg.html

(cl:defclass <AddCleaningPath-request> (roslisp-msg-protocol:ros-message)
  ((map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (path_mode
    :reader path_mode
    :initarg :path_mode
    :type cl:fixnum
    :initform 0)
   (method
    :reader method
    :initarg :method
    :type cl:fixnum
    :initform 0)
   (coordinate_mode
    :reader coordinate_mode
    :initarg :coordinate_mode
    :type cl:fixnum
    :initform 0)
   (cleaning_area_uuid
    :reader cleaning_area_uuid
    :initarg :cleaning_area_uuid
    :type cl:string
    :initform "")
   (paths
    :reader paths
    :initarg :paths
    :type (cl:vector robint_msgs-msg:PathWithPoint)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:PathWithPoint :initial-element (cl:make-instance 'robint_msgs-msg:PathWithPoint))))
)

(cl:defclass AddCleaningPath-request (<AddCleaningPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddCleaningPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddCleaningPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddCleaningPath-request> is deprecated: use robint_msgs-srv:AddCleaningPath-request instead.")))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <AddCleaningPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_uuid-val is deprecated.  Use robint_msgs-srv:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'path_mode-val :lambda-list '(m))
(cl:defmethod path_mode-val ((m <AddCleaningPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:path_mode-val is deprecated.  Use robint_msgs-srv:path_mode instead.")
  (path_mode m))

(cl:ensure-generic-function 'method-val :lambda-list '(m))
(cl:defmethod method-val ((m <AddCleaningPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:method-val is deprecated.  Use robint_msgs-srv:method instead.")
  (method m))

(cl:ensure-generic-function 'coordinate_mode-val :lambda-list '(m))
(cl:defmethod coordinate_mode-val ((m <AddCleaningPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:coordinate_mode-val is deprecated.  Use robint_msgs-srv:coordinate_mode instead.")
  (coordinate_mode m))

(cl:ensure-generic-function 'cleaning_area_uuid-val :lambda-list '(m))
(cl:defmethod cleaning_area_uuid-val ((m <AddCleaningPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:cleaning_area_uuid-val is deprecated.  Use robint_msgs-srv:cleaning_area_uuid instead.")
  (cleaning_area_uuid m))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <AddCleaningPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:paths-val is deprecated.  Use robint_msgs-srv:paths instead.")
  (paths m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AddCleaningPath-request>)))
    "Constants for message type '<AddCleaningPath-request>"
  '((:AUTO . 11)
    (:MANUAL . 12)
    (:BOUSTROPHEDON . 21)
    (:CONTOUR_LINE . 22)
    (:STRIP_LINE . 23)
    (:RECTANGLE_ZIGZAG . 24)
    (:CONTOUR_PARALLEL . 25)
    (:METHOD_TEST . 26)
    (:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AddCleaningPath-request)))
    "Constants for message type 'AddCleaningPath-request"
  '((:AUTO . 11)
    (:MANUAL . 12)
    (:BOUSTROPHEDON . 21)
    (:CONTOUR_LINE . 22)
    (:STRIP_LINE . 23)
    (:RECTANGLE_ZIGZAG . 24)
    (:CONTOUR_PARALLEL . 25)
    (:METHOD_TEST . 26)
    (:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddCleaningPath-request>) ostream)
  "Serializes a message object of type '<AddCleaningPath-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'method)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cleaning_area_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cleaning_area_uuid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddCleaningPath-request>) istream)
  "Deserializes a message object of type '<AddCleaningPath-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'method)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cleaning_area_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cleaning_area_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddCleaningPath-request>)))
  "Returns string type for a service object of type '<AddCleaningPath-request>"
  "robint_msgs/AddCleaningPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCleaningPath-request)))
  "Returns string type for a service object of type 'AddCleaningPath-request"
  "robint_msgs/AddCleaningPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddCleaningPath-request>)))
  "Returns md5sum for a message object of type '<AddCleaningPath-request>"
  "2e6f689ab7f8b77edcc78db3d63bc3d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddCleaningPath-request)))
  "Returns md5sum for a message object of type 'AddCleaningPath-request"
  "2e6f689ab7f8b77edcc78db3d63bc3d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddCleaningPath-request>)))
  "Returns full string definition for message of type '<AddCleaningPath-request>"
  (cl:format cl:nil "string map_uuid~%uint8 path_mode~%uint8 AUTO=11          # generate cleaning path automaticly~%uint8 MANUAL=12        # use requested path as cleaning path~%uint8 method~%uint8 BOUSTROPHEDON=21~%uint8 CONTOUR_LINE=22~%uint8 STRIP_LINE=23~%uint8 RECTANGLE_ZIGZAG=24~%uint8 CONTOUR_PARALLEL=25~%uint8 METHOD_TEST=26~%uint8 coordinate_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%string cleaning_area_uuid~%PathWithPoint[] paths~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddCleaningPath-request)))
  "Returns full string definition for message of type 'AddCleaningPath-request"
  (cl:format cl:nil "string map_uuid~%uint8 path_mode~%uint8 AUTO=11          # generate cleaning path automaticly~%uint8 MANUAL=12        # use requested path as cleaning path~%uint8 method~%uint8 BOUSTROPHEDON=21~%uint8 CONTOUR_LINE=22~%uint8 STRIP_LINE=23~%uint8 RECTANGLE_ZIGZAG=24~%uint8 CONTOUR_PARALLEL=25~%uint8 METHOD_TEST=26~%uint8 coordinate_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%string cleaning_area_uuid~%PathWithPoint[] paths~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddCleaningPath-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_uuid))
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'cleaning_area_uuid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddCleaningPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddCleaningPath-request
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':path_mode (path_mode msg))
    (cl:cons ':method (method msg))
    (cl:cons ':coordinate_mode (coordinate_mode msg))
    (cl:cons ':cleaning_area_uuid (cleaning_area_uuid msg))
    (cl:cons ':paths (paths msg))
))
;//! \htmlinclude AddCleaningPath-response.msg.html

(cl:defclass <AddCleaningPath-response> (roslisp-msg-protocol:ros-message)
  ((paths
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

(cl:defclass AddCleaningPath-response (<AddCleaningPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddCleaningPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddCleaningPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AddCleaningPath-response> is deprecated: use robint_msgs-srv:AddCleaningPath-response instead.")))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <AddCleaningPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:paths-val is deprecated.  Use robint_msgs-srv:paths instead.")
  (paths m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddCleaningPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <AddCleaningPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddCleaningPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddCleaningPath-response>) ostream)
  "Serializes a message object of type '<AddCleaningPath-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddCleaningPath-response>) istream)
  "Deserializes a message object of type '<AddCleaningPath-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddCleaningPath-response>)))
  "Returns string type for a service object of type '<AddCleaningPath-response>"
  "robint_msgs/AddCleaningPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCleaningPath-response)))
  "Returns string type for a service object of type 'AddCleaningPath-response"
  "robint_msgs/AddCleaningPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddCleaningPath-response>)))
  "Returns md5sum for a message object of type '<AddCleaningPath-response>"
  "2e6f689ab7f8b77edcc78db3d63bc3d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddCleaningPath-response)))
  "Returns md5sum for a message object of type 'AddCleaningPath-response"
  "2e6f689ab7f8b77edcc78db3d63bc3d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddCleaningPath-response>)))
  "Returns full string definition for message of type '<AddCleaningPath-response>"
  (cl:format cl:nil "PathWithPoint[] paths~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddCleaningPath-response)))
  "Returns full string definition for message of type 'AddCleaningPath-response"
  (cl:format cl:nil "PathWithPoint[] paths~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddCleaningPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddCleaningPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddCleaningPath-response
    (cl:cons ':paths (paths msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddCleaningPath)))
  'AddCleaningPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddCleaningPath)))
  'AddCleaningPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddCleaningPath)))
  "Returns string type for a service object of type '<AddCleaningPath>"
  "robint_msgs/AddCleaningPath")