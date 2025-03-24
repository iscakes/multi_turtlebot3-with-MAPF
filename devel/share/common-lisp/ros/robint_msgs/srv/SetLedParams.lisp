; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude SetLedParams-request.msg.html

(cl:defclass <SetLedParams-request> (roslisp-msg-protocol:ros-message)
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
    :type cl:integer
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0))
)

(cl:defclass SetLedParams-request (<SetLedParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLedParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLedParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<SetLedParams-request> is deprecated: use robint_msgs-srv:SetLedParams-request instead.")))

(cl:ensure-generic-function 'red-val :lambda-list '(m))
(cl:defmethod red-val ((m <SetLedParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:red-val is deprecated.  Use robint_msgs-srv:red instead.")
  (red m))

(cl:ensure-generic-function 'green-val :lambda-list '(m))
(cl:defmethod green-val ((m <SetLedParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:green-val is deprecated.  Use robint_msgs-srv:green instead.")
  (green m))

(cl:ensure-generic-function 'blue-val :lambda-list '(m))
(cl:defmethod blue-val ((m <SetLedParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:blue-val is deprecated.  Use robint_msgs-srv:blue instead.")
  (blue m))

(cl:ensure-generic-function 'rgb-val :lambda-list '(m))
(cl:defmethod rgb-val ((m <SetLedParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:rgb-val is deprecated.  Use robint_msgs-srv:rgb instead.")
  (rgb m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <SetLedParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:brightness-val is deprecated.  Use robint_msgs-srv:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetLedParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:mode-val is deprecated.  Use robint_msgs-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <SetLedParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:speed-val is deprecated.  Use robint_msgs-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLedParams-request>) ostream)
  "Serializes a message object of type '<SetLedParams-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'green)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rgb)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rgb)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rgb)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rgb)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brightness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'brightness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'brightness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'brightness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLedParams-request>) istream)
  "Deserializes a message object of type '<SetLedParams-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'green)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rgb)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rgb)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rgb)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rgb)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLedParams-request>)))
  "Returns string type for a service object of type '<SetLedParams-request>"
  "robint_msgs/SetLedParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLedParams-request)))
  "Returns string type for a service object of type 'SetLedParams-request"
  "robint_msgs/SetLedParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLedParams-request>)))
  "Returns md5sum for a message object of type '<SetLedParams-request>"
  "8ee2fcdcc512eade49a305e79b9688d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLedParams-request)))
  "Returns md5sum for a message object of type 'SetLedParams-request"
  "8ee2fcdcc512eade49a305e79b9688d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLedParams-request>)))
  "Returns full string definition for message of type '<SetLedParams-request>"
  (cl:format cl:nil "# /*~%#  * # LED控制~%#  * ## b 亮度 [0-255], 不允许设置 10 ('\\n')!!!~%#  * ## s 速度 [11,16959], 越小越快，初始化默认1000~%#  * ## c 颜色 [0x000000,0xFFFFFF], 初始化白色0xFFFFFF~%#  * ## m 模式 [0-55]~%#  * * 0: 静态单色~%#  * * 12: 彩虹全彩转圈Rainbow Cycle~%#  * * 3: 转圈color wipe~%#  * * 44: 彗星尾巴Comet~%#  * */~%~%uint8 red~%uint8 green~%uint8 blue~%uint32 rgb~%uint32 brightness~%uint32 mode~%uint32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLedParams-request)))
  "Returns full string definition for message of type 'SetLedParams-request"
  (cl:format cl:nil "# /*~%#  * # LED控制~%#  * ## b 亮度 [0-255], 不允许设置 10 ('\\n')!!!~%#  * ## s 速度 [11,16959], 越小越快，初始化默认1000~%#  * ## c 颜色 [0x000000,0xFFFFFF], 初始化白色0xFFFFFF~%#  * ## m 模式 [0-55]~%#  * * 0: 静态单色~%#  * * 12: 彩虹全彩转圈Rainbow Cycle~%#  * * 3: 转圈color wipe~%#  * * 44: 彗星尾巴Comet~%#  * */~%~%uint8 red~%uint8 green~%uint8 blue~%uint32 rgb~%uint32 brightness~%uint32 mode~%uint32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLedParams-request>))
  (cl:+ 0
     1
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLedParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLedParams-request
    (cl:cons ':red (red msg))
    (cl:cons ':green (green msg))
    (cl:cons ':blue (blue msg))
    (cl:cons ':rgb (rgb msg))
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude SetLedParams-response.msg.html

(cl:defclass <SetLedParams-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLedParams-response (<SetLedParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLedParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLedParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<SetLedParams-response> is deprecated: use robint_msgs-srv:SetLedParams-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetLedParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLedParams-response>) ostream)
  "Serializes a message object of type '<SetLedParams-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLedParams-response>) istream)
  "Deserializes a message object of type '<SetLedParams-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLedParams-response>)))
  "Returns string type for a service object of type '<SetLedParams-response>"
  "robint_msgs/SetLedParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLedParams-response)))
  "Returns string type for a service object of type 'SetLedParams-response"
  "robint_msgs/SetLedParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLedParams-response>)))
  "Returns md5sum for a message object of type '<SetLedParams-response>"
  "8ee2fcdcc512eade49a305e79b9688d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLedParams-response)))
  "Returns md5sum for a message object of type 'SetLedParams-response"
  "8ee2fcdcc512eade49a305e79b9688d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLedParams-response>)))
  "Returns full string definition for message of type '<SetLedParams-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLedParams-response)))
  "Returns full string definition for message of type 'SetLedParams-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLedParams-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLedParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLedParams-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLedParams)))
  'SetLedParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLedParams)))
  'SetLedParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLedParams)))
  "Returns string type for a service object of type '<SetLedParams>"
  "robint_msgs/SetLedParams")