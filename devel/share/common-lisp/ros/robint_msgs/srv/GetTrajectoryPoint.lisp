; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetTrajectoryPoint-request.msg.html

(cl:defclass <GetTrajectoryPoint-request> (roslisp-msg-protocol:ros-message)
  ((request_id
    :reader request_id
    :initarg :request_id
    :type cl:integer
    :initform 0)
   (coordinate_mode
    :reader coordinate_mode
    :initarg :coordinate_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetTrajectoryPoint-request (<GetTrajectoryPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTrajectoryPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTrajectoryPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetTrajectoryPoint-request> is deprecated: use robint_msgs-srv:GetTrajectoryPoint-request instead.")))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <GetTrajectoryPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:request_id-val is deprecated.  Use robint_msgs-srv:request_id instead.")
  (request_id m))

(cl:ensure-generic-function 'coordinate_mode-val :lambda-list '(m))
(cl:defmethod coordinate_mode-val ((m <GetTrajectoryPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:coordinate_mode-val is deprecated.  Use robint_msgs-srv:coordinate_mode instead.")
  (coordinate_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetTrajectoryPoint-request>)))
    "Constants for message type '<GetTrajectoryPoint-request>"
  '((:IMAGE . 0)
    (:WORLD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetTrajectoryPoint-request)))
    "Constants for message type 'GetTrajectoryPoint-request"
  '((:IMAGE . 0)
    (:WORLD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTrajectoryPoint-request>) ostream)
  "Serializes a message object of type '<GetTrajectoryPoint-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTrajectoryPoint-request>) istream)
  "Deserializes a message object of type '<GetTrajectoryPoint-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTrajectoryPoint-request>)))
  "Returns string type for a service object of type '<GetTrajectoryPoint-request>"
  "robint_msgs/GetTrajectoryPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrajectoryPoint-request)))
  "Returns string type for a service object of type 'GetTrajectoryPoint-request"
  "robint_msgs/GetTrajectoryPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTrajectoryPoint-request>)))
  "Returns md5sum for a message object of type '<GetTrajectoryPoint-request>"
  "8fd56019054effcf13a55a60fa14c24c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTrajectoryPoint-request)))
  "Returns md5sum for a message object of type 'GetTrajectoryPoint-request"
  "8fd56019054effcf13a55a60fa14c24c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTrajectoryPoint-request>)))
  "Returns full string definition for message of type '<GetTrajectoryPoint-request>"
  (cl:format cl:nil "uint32 request_id~%uint8 coordinate_mode~%uint8 IMAGE=0~%uint8 WORLD=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTrajectoryPoint-request)))
  "Returns full string definition for message of type 'GetTrajectoryPoint-request"
  (cl:format cl:nil "uint32 request_id~%uint8 coordinate_mode~%uint8 IMAGE=0~%uint8 WORLD=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTrajectoryPoint-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTrajectoryPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTrajectoryPoint-request
    (cl:cons ':request_id (request_id msg))
    (cl:cons ':coordinate_mode (coordinate_mode msg))
))
;//! \htmlinclude GetTrajectoryPoint-response.msg.html

(cl:defclass <GetTrajectoryPoint-response> (roslisp-msg-protocol:ros-message)
  ((pt
    :reader pt
    :initarg :pt
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (current_id
    :reader current_id
    :initarg :current_id
    :type cl:integer
    :initform 0)
   (total_points_number
    :reader total_points_number
    :initarg :total_points_number
    :type cl:integer
    :initform 0)
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

(cl:defclass GetTrajectoryPoint-response (<GetTrajectoryPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTrajectoryPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTrajectoryPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetTrajectoryPoint-response> is deprecated: use robint_msgs-srv:GetTrajectoryPoint-response instead.")))

(cl:ensure-generic-function 'pt-val :lambda-list '(m))
(cl:defmethod pt-val ((m <GetTrajectoryPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:pt-val is deprecated.  Use robint_msgs-srv:pt instead.")
  (pt m))

(cl:ensure-generic-function 'current_id-val :lambda-list '(m))
(cl:defmethod current_id-val ((m <GetTrajectoryPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:current_id-val is deprecated.  Use robint_msgs-srv:current_id instead.")
  (current_id m))

(cl:ensure-generic-function 'total_points_number-val :lambda-list '(m))
(cl:defmethod total_points_number-val ((m <GetTrajectoryPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:total_points_number-val is deprecated.  Use robint_msgs-srv:total_points_number instead.")
  (total_points_number m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetTrajectoryPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetTrajectoryPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetTrajectoryPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTrajectoryPoint-response>) ostream)
  "Serializes a message object of type '<GetTrajectoryPoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pt) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_points_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_points_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_points_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_points_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTrajectoryPoint-response>) istream)
  "Deserializes a message object of type '<GetTrajectoryPoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pt) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_points_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_points_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_points_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_points_number)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTrajectoryPoint-response>)))
  "Returns string type for a service object of type '<GetTrajectoryPoint-response>"
  "robint_msgs/GetTrajectoryPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrajectoryPoint-response)))
  "Returns string type for a service object of type 'GetTrajectoryPoint-response"
  "robint_msgs/GetTrajectoryPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTrajectoryPoint-response>)))
  "Returns md5sum for a message object of type '<GetTrajectoryPoint-response>"
  "8fd56019054effcf13a55a60fa14c24c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTrajectoryPoint-response)))
  "Returns md5sum for a message object of type 'GetTrajectoryPoint-response"
  "8fd56019054effcf13a55a60fa14c24c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTrajectoryPoint-response>)))
  "Returns full string definition for message of type '<GetTrajectoryPoint-response>"
  (cl:format cl:nil "geometry_msgs/Point pt~%uint32 current_id~%uint32 total_points_number~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTrajectoryPoint-response)))
  "Returns full string definition for message of type 'GetTrajectoryPoint-response"
  (cl:format cl:nil "geometry_msgs/Point pt~%uint32 current_id~%uint32 total_points_number~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTrajectoryPoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pt))
     4
     4
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTrajectoryPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTrajectoryPoint-response
    (cl:cons ':pt (pt msg))
    (cl:cons ':current_id (current_id msg))
    (cl:cons ':total_points_number (total_points_number msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTrajectoryPoint)))
  'GetTrajectoryPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTrajectoryPoint)))
  'GetTrajectoryPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTrajectoryPoint)))
  "Returns string type for a service object of type '<GetTrajectoryPoint>"
  "robint_msgs/GetTrajectoryPoint")