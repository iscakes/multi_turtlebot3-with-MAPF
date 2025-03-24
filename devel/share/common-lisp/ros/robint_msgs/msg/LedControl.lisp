; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude LedControl.msg.html

(cl:defclass <LedControl> (roslisp-msg-protocol:ros-message)
  ((red
    :reader red
    :initarg :red
    :type cl:fixnum
    :initform 0)
   (green
    :reader green
    :initarg :green
    :type cl:fixnum
    :initform 0)
   (blue
    :reader blue
    :initarg :blue
    :type cl:fixnum
    :initform 0)
   (rgb
    :reader rgb
    :initarg :rgb
    :type cl:integer
    :initform 0)
   (brightness
    :reader brightness
    :initarg :brightness
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LedControl (<LedControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<LedControl> is deprecated: use robint_msgs-msg:LedControl instead.")))

(cl:ensure-generic-function 'red-val :lambda-list '(m))
(cl:defmethod red-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:red-val is deprecated.  Use robint_msgs-msg:red instead.")
  (red m))

(cl:ensure-generic-function 'green-val :lambda-list '(m))
(cl:defmethod green-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:green-val is deprecated.  Use robint_msgs-msg:green instead.")
  (green m))

(cl:ensure-generic-function 'blue-val :lambda-list '(m))
(cl:defmethod blue-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:blue-val is deprecated.  Use robint_msgs-msg:blue instead.")
  (blue m))

(cl:ensure-generic-function 'rgb-val :lambda-list '(m))
(cl:defmethod rgb-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:rgb-val is deprecated.  Use robint_msgs-msg:rgb instead.")
  (rgb m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:brightness-val is deprecated.  Use robint_msgs-msg:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:mode-val is deprecated.  Use robint_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:speed-val is deprecated.  Use robint_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedControl>) ostream)
  "Serializes a message object of type '<LedControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'green)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rgb)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rgb)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rgb)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rgb)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brightness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedControl>) istream)
  "Deserializes a message object of type '<LedControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'green)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rgb)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rgb)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rgb)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rgb)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedControl>)))
  "Returns string type for a message object of type '<LedControl>"
  "robint_msgs/LedControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedControl)))
  "Returns string type for a message object of type 'LedControl"
  "robint_msgs/LedControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedControl>)))
  "Returns md5sum for a message object of type '<LedControl>"
  "6af3c075d10c39ecc03ad496b71b72ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedControl)))
  "Returns md5sum for a message object of type 'LedControl"
  "6af3c075d10c39ecc03ad496b71b72ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedControl>)))
  "Returns full string definition for message of type '<LedControl>"
  (cl:format cl:nil "# /*~%#  * # LED控制~%#  * ## b 亮度 [0-255], 不允许设置 10 ('\\n')!!!~%#  * ## s 速度 [11,16959], 越小越快，初始化默认1000~%#  * ## c 颜色 [0x000000,0xFFFFFF], 初始化白色0xFFFFFF~%#  * ## m 模式 [0-55]~%#  * * 0: 静态单色~%#  * * 12: 彩虹全彩转圈Rainbow Cycle~%#  * * 3: 转圈color wipe~%#  * * 44: 彗星尾巴Comet~%#  * */~%~%uint8 red~%uint8 green~%uint8 blue~%uint32 rgb~%uint8 brightness~%uint8 mode~%uint16 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedControl)))
  "Returns full string definition for message of type 'LedControl"
  (cl:format cl:nil "# /*~%#  * # LED控制~%#  * ## b 亮度 [0-255], 不允许设置 10 ('\\n')!!!~%#  * ## s 速度 [11,16959], 越小越快，初始化默认1000~%#  * ## c 颜色 [0x000000,0xFFFFFF], 初始化白色0xFFFFFF~%#  * ## m 模式 [0-55]~%#  * * 0: 静态单色~%#  * * 12: 彩虹全彩转圈Rainbow Cycle~%#  * * 3: 转圈color wipe~%#  * * 44: 彗星尾巴Comet~%#  * */~%~%uint8 red~%uint8 green~%uint8 blue~%uint32 rgb~%uint8 brightness~%uint8 mode~%uint16 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedControl>))
  (cl:+ 0
     1
     1
     1
     4
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedControl>))
  "Converts a ROS message object to a list"
  (cl:list 'LedControl
    (cl:cons ':red (red msg))
    (cl:cons ':green (green msg))
    (cl:cons ':blue (blue msg))
    (cl:cons ':rgb (rgb msg))
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':speed (speed msg))
))
