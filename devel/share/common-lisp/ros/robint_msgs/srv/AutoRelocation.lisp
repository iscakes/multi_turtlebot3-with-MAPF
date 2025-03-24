; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude AutoRelocation-request.msg.html

(cl:defclass <AutoRelocation-request> (roslisp-msg-protocol:ros-message)
  ((limited_location
    :reader limited_location
    :initarg :limited_location
    :type cl:boolean
    :initform cl:nil)
   (linear_search_window
    :reader linear_search_window
    :initarg :linear_search_window
    :type cl:float
    :initform 0.0)
   (angular_search_window
    :reader angular_search_window
    :initarg :angular_search_window
    :type cl:float
    :initform 0.0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (relocation_mode
    :reader relocation_mode
    :initarg :relocation_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutoRelocation-request (<AutoRelocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoRelocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoRelocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AutoRelocation-request> is deprecated: use robint_msgs-srv:AutoRelocation-request instead.")))

(cl:ensure-generic-function 'limited_location-val :lambda-list '(m))
(cl:defmethod limited_location-val ((m <AutoRelocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:limited_location-val is deprecated.  Use robint_msgs-srv:limited_location instead.")
  (limited_location m))

(cl:ensure-generic-function 'linear_search_window-val :lambda-list '(m))
(cl:defmethod linear_search_window-val ((m <AutoRelocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:linear_search_window-val is deprecated.  Use robint_msgs-srv:linear_search_window instead.")
  (linear_search_window m))

(cl:ensure-generic-function 'angular_search_window-val :lambda-list '(m))
(cl:defmethod angular_search_window-val ((m <AutoRelocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:angular_search_window-val is deprecated.  Use robint_msgs-srv:angular_search_window instead.")
  (angular_search_window m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AutoRelocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:pose-val is deprecated.  Use robint_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'relocation_mode-val :lambda-list '(m))
(cl:defmethod relocation_mode-val ((m <AutoRelocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:relocation_mode-val is deprecated.  Use robint_msgs-srv:relocation_mode instead.")
  (relocation_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AutoRelocation-request>)))
    "Constants for message type '<AutoRelocation-request>"
  '((:DEFAULT . 0)
    (:FIXED_POSE . 1)
    (:FIXED_SEARCH . 2)
    (:FIXED_POSE_AND_SEARCH . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AutoRelocation-request)))
    "Constants for message type 'AutoRelocation-request"
  '((:DEFAULT . 0)
    (:FIXED_POSE . 1)
    (:FIXED_SEARCH . 2)
    (:FIXED_POSE_AND_SEARCH . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoRelocation-request>) ostream)
  "Serializes a message object of type '<AutoRelocation-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'limited_location) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_search_window))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_search_window))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relocation_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoRelocation-request>) istream)
  "Deserializes a message object of type '<AutoRelocation-request>"
    (cl:setf (cl:slot-value msg 'limited_location) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_search_window) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_search_window) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relocation_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoRelocation-request>)))
  "Returns string type for a service object of type '<AutoRelocation-request>"
  "robint_msgs/AutoRelocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoRelocation-request)))
  "Returns string type for a service object of type 'AutoRelocation-request"
  "robint_msgs/AutoRelocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoRelocation-request>)))
  "Returns md5sum for a message object of type '<AutoRelocation-request>"
  "ed9dac49ff11cc301c25107899231f1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoRelocation-request)))
  "Returns md5sum for a message object of type 'AutoRelocation-request"
  "ed9dac49ff11cc301c25107899231f1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoRelocation-request>)))
  "Returns full string definition for message of type '<AutoRelocation-request>"
  (cl:format cl:nil "bool limited_location~%float32 linear_search_window~%float32 angular_search_window~%geometry_msgs/PoseStamped pose~%uint8 relocation_mode~%uint8 DEFAULT=0~%uint8 FIXED_POSE=1~%uint8 FIXED_SEARCH=2~%uint8 FIXED_POSE_AND_SEARCH=3~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoRelocation-request)))
  "Returns full string definition for message of type 'AutoRelocation-request"
  (cl:format cl:nil "bool limited_location~%float32 linear_search_window~%float32 angular_search_window~%geometry_msgs/PoseStamped pose~%uint8 relocation_mode~%uint8 DEFAULT=0~%uint8 FIXED_POSE=1~%uint8 FIXED_SEARCH=2~%uint8 FIXED_POSE_AND_SEARCH=3~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoRelocation-request>))
  (cl:+ 0
     1
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoRelocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoRelocation-request
    (cl:cons ':limited_location (limited_location msg))
    (cl:cons ':linear_search_window (linear_search_window msg))
    (cl:cons ':angular_search_window (angular_search_window msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':relocation_mode (relocation_mode msg))
))
;//! \htmlinclude AutoRelocation-response.msg.html

(cl:defclass <AutoRelocation-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AutoRelocation-response (<AutoRelocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoRelocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoRelocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<AutoRelocation-response> is deprecated: use robint_msgs-srv:AutoRelocation-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AutoRelocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <AutoRelocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AutoRelocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoRelocation-response>) ostream)
  "Serializes a message object of type '<AutoRelocation-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoRelocation-response>) istream)
  "Deserializes a message object of type '<AutoRelocation-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoRelocation-response>)))
  "Returns string type for a service object of type '<AutoRelocation-response>"
  "robint_msgs/AutoRelocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoRelocation-response)))
  "Returns string type for a service object of type 'AutoRelocation-response"
  "robint_msgs/AutoRelocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoRelocation-response>)))
  "Returns md5sum for a message object of type '<AutoRelocation-response>"
  "ed9dac49ff11cc301c25107899231f1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoRelocation-response)))
  "Returns md5sum for a message object of type 'AutoRelocation-response"
  "ed9dac49ff11cc301c25107899231f1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoRelocation-response>)))
  "Returns full string definition for message of type '<AutoRelocation-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoRelocation-response)))
  "Returns full string definition for message of type 'AutoRelocation-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoRelocation-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoRelocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoRelocation-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AutoRelocation)))
  'AutoRelocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AutoRelocation)))
  'AutoRelocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoRelocation)))
  "Returns string type for a service object of type '<AutoRelocation>"
  "robint_msgs/AutoRelocation")