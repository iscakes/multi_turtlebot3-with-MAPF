; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude CruiseCommand-request.msg.html

(cl:defclass <CruiseCommand-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (location_name
    :reader location_name
    :initarg :location_name
    :type cl:string
    :initform "")
   (location_uuid
    :reader location_uuid
    :initarg :location_uuid
    :type cl:string
    :initform "")
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass CruiseCommand-request (<CruiseCommand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CruiseCommand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CruiseCommand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CruiseCommand-request> is deprecated: use robint_msgs-srv:CruiseCommand-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <CruiseCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:map_name-val is deprecated.  Use robint_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'location_name-val :lambda-list '(m))
(cl:defmethod location_name-val ((m <CruiseCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location_name-val is deprecated.  Use robint_msgs-srv:location_name instead.")
  (location_name m))

(cl:ensure-generic-function 'location_uuid-val :lambda-list '(m))
(cl:defmethod location_uuid-val ((m <CruiseCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:location_uuid-val is deprecated.  Use robint_msgs-srv:location_uuid instead.")
  (location_uuid m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <CruiseCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:command-val is deprecated.  Use robint_msgs-srv:command instead.")
  (command m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <CruiseCommand-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:goal-val is deprecated.  Use robint_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CruiseCommand-request>)))
    "Constants for message type '<CruiseCommand-request>"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CruiseCommand-request)))
    "Constants for message type 'CruiseCommand-request"
  '((:START . 0)
    (:PAUSE . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CruiseCommand-request>) ostream)
  "Serializes a message object of type '<CruiseCommand-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CruiseCommand-request>) istream)
  "Deserializes a message object of type '<CruiseCommand-request>"
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
      (cl:setf (cl:slot-value msg 'location_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CruiseCommand-request>)))
  "Returns string type for a service object of type '<CruiseCommand-request>"
  "robint_msgs/CruiseCommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CruiseCommand-request)))
  "Returns string type for a service object of type 'CruiseCommand-request"
  "robint_msgs/CruiseCommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CruiseCommand-request>)))
  "Returns md5sum for a message object of type '<CruiseCommand-request>"
  "ec36630a7938be0f336b742954a1a91b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CruiseCommand-request)))
  "Returns md5sum for a message object of type 'CruiseCommand-request"
  "ec36630a7938be0f336b742954a1a91b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CruiseCommand-request>)))
  "Returns full string definition for message of type '<CruiseCommand-request>"
  (cl:format cl:nil "string map_name~%string location_name~%string location_uuid~%uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CruiseCommand-request)))
  "Returns full string definition for message of type 'CruiseCommand-request"
  (cl:format cl:nil "string map_name~%string location_name~%string location_uuid~%uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'~%uint8 START=0~%uint8 PAUSE=1~%uint8 CONTINUE=2~%uint8 STOP=3~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CruiseCommand-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'location_name))
     4 (cl:length (cl:slot-value msg 'location_uuid))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CruiseCommand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CruiseCommand-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':location_name (location_name msg))
    (cl:cons ':location_uuid (location_uuid msg))
    (cl:cons ':command (command msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude CruiseCommand-response.msg.html

(cl:defclass <CruiseCommand-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CruiseCommand-response (<CruiseCommand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CruiseCommand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CruiseCommand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CruiseCommand-response> is deprecated: use robint_msgs-srv:CruiseCommand-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CruiseCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CruiseCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CruiseCommand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CruiseCommand-response>) ostream)
  "Serializes a message object of type '<CruiseCommand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CruiseCommand-response>) istream)
  "Deserializes a message object of type '<CruiseCommand-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CruiseCommand-response>)))
  "Returns string type for a service object of type '<CruiseCommand-response>"
  "robint_msgs/CruiseCommandResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CruiseCommand-response)))
  "Returns string type for a service object of type 'CruiseCommand-response"
  "robint_msgs/CruiseCommandResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CruiseCommand-response>)))
  "Returns md5sum for a message object of type '<CruiseCommand-response>"
  "ec36630a7938be0f336b742954a1a91b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CruiseCommand-response)))
  "Returns md5sum for a message object of type 'CruiseCommand-response"
  "ec36630a7938be0f336b742954a1a91b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CruiseCommand-response>)))
  "Returns full string definition for message of type '<CruiseCommand-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CruiseCommand-response)))
  "Returns full string definition for message of type 'CruiseCommand-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CruiseCommand-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CruiseCommand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CruiseCommand-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CruiseCommand)))
  'CruiseCommand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CruiseCommand)))
  'CruiseCommand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CruiseCommand)))
  "Returns string type for a service object of type '<CruiseCommand>"
  "robint_msgs/CruiseCommand")