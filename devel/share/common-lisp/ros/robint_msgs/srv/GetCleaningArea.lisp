; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetCleaningArea-request.msg.html

(cl:defclass <GetCleaningArea-request> (roslisp-msg-protocol:ros-message)
  ((area_uuid
    :reader area_uuid
    :initarg :area_uuid
    :type cl:string
    :initform "")
   (coordinate_mode
    :reader coordinate_mode
    :initarg :coordinate_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetCleaningArea-request (<GetCleaningArea-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCleaningArea-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCleaningArea-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCleaningArea-request> is deprecated: use robint_msgs-srv:GetCleaningArea-request instead.")))

(cl:ensure-generic-function 'area_uuid-val :lambda-list '(m))
(cl:defmethod area_uuid-val ((m <GetCleaningArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:area_uuid-val is deprecated.  Use robint_msgs-srv:area_uuid instead.")
  (area_uuid m))

(cl:ensure-generic-function 'coordinate_mode-val :lambda-list '(m))
(cl:defmethod coordinate_mode-val ((m <GetCleaningArea-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:coordinate_mode-val is deprecated.  Use robint_msgs-srv:coordinate_mode instead.")
  (coordinate_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetCleaningArea-request>)))
    "Constants for message type '<GetCleaningArea-request>"
  '((:IMAGE . 0)
    (:WORLD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetCleaningArea-request)))
    "Constants for message type 'GetCleaningArea-request"
  '((:IMAGE . 0)
    (:WORLD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCleaningArea-request>) ostream)
  "Serializes a message object of type '<GetCleaningArea-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'area_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'area_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCleaningArea-request>) istream)
  "Deserializes a message object of type '<GetCleaningArea-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'area_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'area_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCleaningArea-request>)))
  "Returns string type for a service object of type '<GetCleaningArea-request>"
  "robint_msgs/GetCleaningAreaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCleaningArea-request)))
  "Returns string type for a service object of type 'GetCleaningArea-request"
  "robint_msgs/GetCleaningAreaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCleaningArea-request>)))
  "Returns md5sum for a message object of type '<GetCleaningArea-request>"
  "1778f6924e0699ed892dfa1d950f8e70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCleaningArea-request)))
  "Returns md5sum for a message object of type 'GetCleaningArea-request"
  "1778f6924e0699ed892dfa1d950f8e70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCleaningArea-request>)))
  "Returns full string definition for message of type '<GetCleaningArea-request>"
  (cl:format cl:nil "string area_uuid~%uint8 coordinate_mode~%uint8 IMAGE=0~%uint8 WORLD=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCleaningArea-request)))
  "Returns full string definition for message of type 'GetCleaningArea-request"
  (cl:format cl:nil "string area_uuid~%uint8 coordinate_mode~%uint8 IMAGE=0~%uint8 WORLD=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCleaningArea-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'area_uuid))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCleaningArea-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCleaningArea-request
    (cl:cons ':area_uuid (area_uuid msg))
    (cl:cons ':coordinate_mode (coordinate_mode msg))
))
;//! \htmlinclude GetCleaningArea-response.msg.html

(cl:defclass <GetCleaningArea-response> (roslisp-msg-protocol:ros-message)
  ((area
    :reader area
    :initarg :area
    :type robint_msgs-msg:CleaningArea
    :initform (cl:make-instance 'robint_msgs-msg:CleaningArea))
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

(cl:defclass GetCleaningArea-response (<GetCleaningArea-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCleaningArea-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCleaningArea-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCleaningArea-response> is deprecated: use robint_msgs-srv:GetCleaningArea-response instead.")))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <GetCleaningArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:area-val is deprecated.  Use robint_msgs-srv:area instead.")
  (area m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCleaningArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetCleaningArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetCleaningArea-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCleaningArea-response>) ostream)
  "Serializes a message object of type '<GetCleaningArea-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'area) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCleaningArea-response>) istream)
  "Deserializes a message object of type '<GetCleaningArea-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'area) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCleaningArea-response>)))
  "Returns string type for a service object of type '<GetCleaningArea-response>"
  "robint_msgs/GetCleaningAreaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCleaningArea-response)))
  "Returns string type for a service object of type 'GetCleaningArea-response"
  "robint_msgs/GetCleaningAreaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCleaningArea-response>)))
  "Returns md5sum for a message object of type '<GetCleaningArea-response>"
  "1778f6924e0699ed892dfa1d950f8e70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCleaningArea-response)))
  "Returns md5sum for a message object of type 'GetCleaningArea-response"
  "1778f6924e0699ed892dfa1d950f8e70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCleaningArea-response>)))
  "Returns full string definition for message of type '<GetCleaningArea-response>"
  (cl:format cl:nil "CleaningArea area~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/CleaningArea~%string uuid~%string name~%string map_uuid~%string group_uuid~%string coverage_method~%PathWithPoint contour~%PathWithPoint[] paths~%PathWithPoint[] holes~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCleaningArea-response)))
  "Returns full string definition for message of type 'GetCleaningArea-response"
  (cl:format cl:nil "CleaningArea area~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/CleaningArea~%string uuid~%string name~%string map_uuid~%string group_uuid~%string coverage_method~%PathWithPoint contour~%PathWithPoint[] paths~%PathWithPoint[] holes~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCleaningArea-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'area))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCleaningArea-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCleaningArea-response
    (cl:cons ':area (area msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCleaningArea)))
  'GetCleaningArea-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCleaningArea)))
  'GetCleaningArea-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCleaningArea)))
  "Returns string type for a service object of type '<GetCleaningArea>"
  "robint_msgs/GetCleaningArea")