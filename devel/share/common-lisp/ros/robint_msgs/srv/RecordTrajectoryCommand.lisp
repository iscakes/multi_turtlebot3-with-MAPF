; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude RecordTrajectoryCommand-request.msg.html

(cl:defclass <RecordTrajectoryCommand-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RecordTrajectoryCommand-request (<RecordTrajectoryCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordTrajectoryCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordTrajectoryCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<RecordTrajectoryCommand-request> is deprecated: use robint_msgs-srv:RecordTrajectoryCommand-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <RecordTrajectoryCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RecordTrajectoryCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:type-val is deprecated.  Use robint_msgs-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RecordTrajectoryCommand-request>)))
    "Constants for message type '<RecordTrajectoryCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3)
    (:CANCEL . 4)
    (:CONTOUR . 11)
    (:PATH . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RecordTrajectoryCommand-request)))
    "Constants for message type 'RecordTrajectoryCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3)
    (:CANCEL . 4)
    (:CONTOUR . 11)
    (:PATH . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordTrajectoryCommand-request>) ostream)
  "Serializes a message object of type '<RecordTrajectoryCommand-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordTrajectoryCommand-request>) istream)
  "Deserializes a message object of type '<RecordTrajectoryCommand-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordTrajectoryCommand-request>)))
  "Returns string type for a service object of type '<RecordTrajectoryCommand-request>"
  "robint_msgs/RecordTrajectoryCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordTrajectoryCommand-request)))
  "Returns string type for a service object of type 'RecordTrajectoryCommand-request"
  "robint_msgs/RecordTrajectoryCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordTrajectoryCommand-request>)))
  "Returns md5sum for a message object of type '<RecordTrajectoryCommand-request>"
  "a95c4c5dd7f9657113c5edf61d82b639")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordTrajectoryCommand-request)))
  "Returns md5sum for a message object of type 'RecordTrajectoryCommand-request"
  "a95c4c5dd7f9657113c5edf61d82b639")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordTrajectoryCommand-request>)))
  "Returns full string definition for message of type '<RecordTrajectoryCommand-request>"
  (cl:format cl:nil "uint8 command~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%uint8 CANCEL=4~%uint8 type~%uint8 CONTOUR=11~%uint8 PATH=12~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordTrajectoryCommand-request)))
  "Returns full string definition for message of type 'RecordTrajectoryCommand-request"
  (cl:format cl:nil "uint8 command~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%uint8 CANCEL=4~%uint8 type~%uint8 CONTOUR=11~%uint8 PATH=12~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordTrajectoryCommand-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordTrajectoryCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordTrajectoryCommand-request
    (cl:cons ':command (command msg))
    (cl:cons ':type (type msg))
))
;//! \htmlinclude RecordTrajectoryCommand-response.msg.html

(cl:defclass <RecordTrajectoryCommand-response> (roslisp-msg-protocol:ros-message)
  ((coordinate_mode
    :reader coordinate_mode
    :initarg :coordinate_mode
    :type cl:fixnum
    :initform 0)
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type robint_msgs-msg:PathWithPoint
    :initform (cl:make-instance 'robint_msgs-msg:PathWithPoint))
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

(cl:defclass RecordTrajectoryCommand-response (<RecordTrajectoryCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecordTrajectoryCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecordTrajectoryCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<RecordTrajectoryCommand-response> is deprecated: use robint_msgs-srv:RecordTrajectoryCommand-response instead.")))

(cl:ensure-generic-function 'coordinate_mode-val :lambda-list '(m))
(cl:defmethod coordinate_mode-val ((m <RecordTrajectoryCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:coordinate_mode-val is deprecated.  Use robint_msgs-srv:coordinate_mode instead.")
  (coordinate_mode m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <RecordTrajectoryCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:trajectory-val is deprecated.  Use robint_msgs-srv:trajectory instead.")
  (trajectory m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RecordTrajectoryCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <RecordTrajectoryCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RecordTrajectoryCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RecordTrajectoryCommand-response>)))
    "Constants for message type '<RecordTrajectoryCommand-response>"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RecordTrajectoryCommand-response)))
    "Constants for message type 'RecordTrajectoryCommand-response"
  '((:WORLD . 0)
    (:IMAGE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecordTrajectoryCommand-response>) ostream)
  "Serializes a message object of type '<RecordTrajectoryCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecordTrajectoryCommand-response>) istream)
  "Deserializes a message object of type '<RecordTrajectoryCommand-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coordinate_mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecordTrajectoryCommand-response>)))
  "Returns string type for a service object of type '<RecordTrajectoryCommand-response>"
  "robint_msgs/RecordTrajectoryCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordTrajectoryCommand-response)))
  "Returns string type for a service object of type 'RecordTrajectoryCommand-response"
  "robint_msgs/RecordTrajectoryCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecordTrajectoryCommand-response>)))
  "Returns md5sum for a message object of type '<RecordTrajectoryCommand-response>"
  "a95c4c5dd7f9657113c5edf61d82b639")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecordTrajectoryCommand-response)))
  "Returns md5sum for a message object of type 'RecordTrajectoryCommand-response"
  "a95c4c5dd7f9657113c5edf61d82b639")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecordTrajectoryCommand-response>)))
  "Returns full string definition for message of type '<RecordTrajectoryCommand-response>"
  (cl:format cl:nil "uint8 coordinate_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%PathWithPoint trajectory~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecordTrajectoryCommand-response)))
  "Returns full string definition for message of type 'RecordTrajectoryCommand-response"
  (cl:format cl:nil "uint8 coordinate_mode~%uint8 WORLD=0~%uint8 IMAGE=1~%PathWithPoint trajectory~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecordTrajectoryCommand-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecordTrajectoryCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecordTrajectoryCommand-response
    (cl:cons ':coordinate_mode (coordinate_mode msg))
    (cl:cons ':trajectory (trajectory msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecordTrajectoryCommand)))
  'RecordTrajectoryCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecordTrajectoryCommand)))
  'RecordTrajectoryCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecordTrajectoryCommand)))
  "Returns string type for a service object of type '<RecordTrajectoryCommand>"
  "robint_msgs/RecordTrajectoryCommand")