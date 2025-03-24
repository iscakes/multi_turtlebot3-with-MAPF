; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude TrackPathCommand-request.msg.html

(cl:defclass <TrackPathCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (path_uuid
    :reader path_uuid
    :initarg :path_uuid
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (nav_to_start
    :reader nav_to_start
    :initarg :nav_to_start
    :type cl:boolean
    :initform cl:nil)
   (end_pose
    :reader end_pose
    :initarg :end_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass TrackPathCommand-request (<TrackPathCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackPathCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackPathCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<TrackPathCommand-request> is deprecated: use robint_msgs-srv:TrackPathCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <TrackPathCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'path_uuid-val :lambda-list '(m))
(cl:defmethod path_uuid-val ((m <TrackPathCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:path_uuid-val is deprecated.  Use robint_msgs-srv:path_uuid instead.")
  (path_uuid m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <TrackPathCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:mode-val is deprecated.  Use robint_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <TrackPathCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:count-val is deprecated.  Use robint_msgs-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'nav_to_start-val :lambda-list '(m))
(cl:defmethod nav_to_start-val ((m <TrackPathCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:nav_to_start-val is deprecated.  Use robint_msgs-srv:nav_to_start instead.")
  (nav_to_start m))

(cl:ensure-generic-function 'end_pose-val :lambda-list '(m))
(cl:defmethod end_pose-val ((m <TrackPathCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:end_pose-val is deprecated.  Use robint_msgs-srv:end_pose instead.")
  (end_pose m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrackPathCommand-request>)))
    "Constants for message type '<TrackPathCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3)
    (:BACKANDFORTH . 0)
    (:LOOP . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrackPathCommand-request)))
    "Constants for message type 'TrackPathCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3)
    (:BACKANDFORTH . 0)
    (:LOOP . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackPathCommand-request>) ostream)
  "Serializes a message object of type '<TrackPathCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'nav_to_start) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackPathCommand-request>) istream)
  "Deserializes a message object of type '<TrackPathCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'nav_to_start) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackPathCommand-request>)))
  "Returns string type for a service object of type '<TrackPathCommand-request>"
  "robint_msgs/TrackPathCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackPathCommand-request)))
  "Returns string type for a service object of type 'TrackPathCommand-request"
  "robint_msgs/TrackPathCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackPathCommand-request>)))
  "Returns md5sum for a message object of type '<TrackPathCommand-request>"
  "6b8d1ea369c9419e81b9375c3cef4b05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackPathCommand-request)))
  "Returns md5sum for a message object of type 'TrackPathCommand-request"
  "6b8d1ea369c9419e81b9375c3cef4b05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackPathCommand-request>)))
  "Returns full string definition for message of type '<TrackPathCommand-request>"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%string path_uuid~%uint8 mode~%uint8 BackAndForth=0~%uint8 Loop=1~%int32 count~%bool nav_to_start~%geometry_msgs/Pose end_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackPathCommand-request)))
  "Returns full string definition for message of type 'TrackPathCommand-request"
  (cl:format cl:nil "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%string path_uuid~%uint8 mode~%uint8 BackAndForth=0~%uint8 Loop=1~%int32 count~%bool nav_to_start~%geometry_msgs/Pose end_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackPathCommand-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'path_uuid))
     1
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackPathCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackPathCommand-request
    (cl:cons ':command (command msg))
    (cl:cons ':path_uuid (path_uuid msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':count (count msg))
    (cl:cons ':nav_to_start (nav_to_start msg))
    (cl:cons ':end_pose (end_pose msg))
))
;//! \htmlinclude TrackPathCommand-response.msg.html

(cl:defclass <TrackPathCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass TrackPathCommand-response (<TrackPathCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackPathCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackPathCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<TrackPathCommand-response> is deprecated: use robint_msgs-srv:TrackPathCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <TrackPathCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <TrackPathCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TrackPathCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackPathCommand-response>) ostream)
  "Serializes a message object of type '<TrackPathCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackPathCommand-response>) istream)
  "Deserializes a message object of type '<TrackPathCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackPathCommand-response>)))
  "Returns string type for a service object of type '<TrackPathCommand-response>"
  "robint_msgs/TrackPathCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackPathCommand-response)))
  "Returns string type for a service object of type 'TrackPathCommand-response"
  "robint_msgs/TrackPathCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackPathCommand-response>)))
  "Returns md5sum for a message object of type '<TrackPathCommand-response>"
  "6b8d1ea369c9419e81b9375c3cef4b05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackPathCommand-response)))
  "Returns md5sum for a message object of type 'TrackPathCommand-response"
  "6b8d1ea369c9419e81b9375c3cef4b05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackPathCommand-response>)))
  "Returns full string definition for message of type '<TrackPathCommand-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackPathCommand-response)))
  "Returns full string definition for message of type 'TrackPathCommand-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackPathCommand-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackPathCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackPathCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrackPathCommand)))
  'TrackPathCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrackPathCommand)))
  'TrackPathCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackPathCommand)))
  "Returns string type for a service object of type '<TrackPathCommand>"
  "robint_msgs/TrackPathCommand")