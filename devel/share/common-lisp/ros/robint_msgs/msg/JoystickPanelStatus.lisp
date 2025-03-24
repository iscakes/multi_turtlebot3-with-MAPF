; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude JoystickPanelStatus.msg.html

(cl:defclass <JoystickPanelStatus> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (joystick_trigger
    :reader joystick_trigger
    :initarg :joystick_trigger
    :type cl:boolean
    :initform cl:nil)
   (key_return_home
    :reader key_return_home
    :initarg :key_return_home
    :type cl:boolean
    :initform cl:nil)
   (key_speed_increase
    :reader key_speed_increase
    :initarg :key_speed_increase
    :type cl:boolean
    :initform cl:nil)
   (key_speed_reduction
    :reader key_speed_reduction
    :initarg :key_speed_reduction
    :type cl:boolean
    :initform cl:nil)
   (key_park_brake
    :reader key_park_brake
    :initarg :key_park_brake
    :type cl:boolean
    :initform cl:nil)
   (key_whistle
    :reader key_whistle
    :initarg :key_whistle
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass JoystickPanelStatus (<JoystickPanelStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoystickPanelStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoystickPanelStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<JoystickPanelStatus> is deprecated: use robint_msgs-msg:JoystickPanelStatus instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <JoystickPanelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:stamp-val is deprecated.  Use robint_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'joystick_trigger-val :lambda-list '(m))
(cl:defmethod joystick_trigger-val ((m <JoystickPanelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:joystick_trigger-val is deprecated.  Use robint_msgs-msg:joystick_trigger instead.")
  (joystick_trigger m))

(cl:ensure-generic-function 'key_return_home-val :lambda-list '(m))
(cl:defmethod key_return_home-val ((m <JoystickPanelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:key_return_home-val is deprecated.  Use robint_msgs-msg:key_return_home instead.")
  (key_return_home m))

(cl:ensure-generic-function 'key_speed_increase-val :lambda-list '(m))
(cl:defmethod key_speed_increase-val ((m <JoystickPanelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:key_speed_increase-val is deprecated.  Use robint_msgs-msg:key_speed_increase instead.")
  (key_speed_increase m))

(cl:ensure-generic-function 'key_speed_reduction-val :lambda-list '(m))
(cl:defmethod key_speed_reduction-val ((m <JoystickPanelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:key_speed_reduction-val is deprecated.  Use robint_msgs-msg:key_speed_reduction instead.")
  (key_speed_reduction m))

(cl:ensure-generic-function 'key_park_brake-val :lambda-list '(m))
(cl:defmethod key_park_brake-val ((m <JoystickPanelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:key_park_brake-val is deprecated.  Use robint_msgs-msg:key_park_brake instead.")
  (key_park_brake m))

(cl:ensure-generic-function 'key_whistle-val :lambda-list '(m))
(cl:defmethod key_whistle-val ((m <JoystickPanelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:key_whistle-val is deprecated.  Use robint_msgs-msg:key_whistle instead.")
  (key_whistle m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <JoystickPanelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:mode-val is deprecated.  Use robint_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <JoystickPanelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:level-val is deprecated.  Use robint_msgs-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <JoystickPanelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:error_code-val is deprecated.  Use robint_msgs-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoystickPanelStatus>) ostream)
  "Serializes a message object of type '<JoystickPanelStatus>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'joystick_trigger) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_return_home) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_speed_increase) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_speed_reduction) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_park_brake) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_whistle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoystickPanelStatus>) istream)
  "Deserializes a message object of type '<JoystickPanelStatus>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'joystick_trigger) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_return_home) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_speed_increase) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_speed_reduction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_park_brake) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_whistle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoystickPanelStatus>)))
  "Returns string type for a message object of type '<JoystickPanelStatus>"
  "robint_msgs/JoystickPanelStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoystickPanelStatus)))
  "Returns string type for a message object of type 'JoystickPanelStatus"
  "robint_msgs/JoystickPanelStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoystickPanelStatus>)))
  "Returns md5sum for a message object of type '<JoystickPanelStatus>"
  "b7f32ae109c05e77fb5790ce1aa37191")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoystickPanelStatus)))
  "Returns md5sum for a message object of type 'JoystickPanelStatus"
  "b7f32ae109c05e77fb5790ce1aa37191")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoystickPanelStatus>)))
  "Returns full string definition for message of type '<JoystickPanelStatus>"
  (cl:format cl:nil "time stamp~%bool joystick_trigger~%bool key_return_home~%bool key_speed_increase~%bool key_speed_reduction~%bool key_park_brake~%bool key_whistle~%uint8 mode # 0: P档; 1: 手动; 2: 自动~%uint8 level~%uint8 error_code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoystickPanelStatus)))
  "Returns full string definition for message of type 'JoystickPanelStatus"
  (cl:format cl:nil "time stamp~%bool joystick_trigger~%bool key_return_home~%bool key_speed_increase~%bool key_speed_reduction~%bool key_park_brake~%bool key_whistle~%uint8 mode # 0: P档; 1: 手动; 2: 自动~%uint8 level~%uint8 error_code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoystickPanelStatus>))
  (cl:+ 0
     8
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoystickPanelStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'JoystickPanelStatus
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':joystick_trigger (joystick_trigger msg))
    (cl:cons ':key_return_home (key_return_home msg))
    (cl:cons ':key_speed_increase (key_speed_increase msg))
    (cl:cons ':key_speed_reduction (key_speed_reduction msg))
    (cl:cons ':key_park_brake (key_park_brake msg))
    (cl:cons ':key_whistle (key_whistle msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':level (level msg))
    (cl:cons ':error_code (error_code msg))
))
