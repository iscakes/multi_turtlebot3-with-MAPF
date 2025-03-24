; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetChassisVersion-request.msg.html

(cl:defclass <GetChassisVersion-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetChassisVersion-request (<GetChassisVersion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetChassisVersion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetChassisVersion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetChassisVersion-request> is deprecated: use robint_msgs-srv:GetChassisVersion-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetChassisVersion-request>) ostream)
  "Serializes a message object of type '<GetChassisVersion-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetChassisVersion-request>) istream)
  "Deserializes a message object of type '<GetChassisVersion-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetChassisVersion-request>)))
  "Returns string type for a service object of type '<GetChassisVersion-request>"
  "robint_msgs/GetChassisVersionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetChassisVersion-request)))
  "Returns string type for a service object of type 'GetChassisVersion-request"
  "robint_msgs/GetChassisVersionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetChassisVersion-request>)))
  "Returns md5sum for a message object of type '<GetChassisVersion-request>"
  "3451500d4b57390d32336828695f590f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetChassisVersion-request)))
  "Returns md5sum for a message object of type 'GetChassisVersion-request"
  "3451500d4b57390d32336828695f590f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetChassisVersion-request>)))
  "Returns full string definition for message of type '<GetChassisVersion-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetChassisVersion-request)))
  "Returns full string definition for message of type 'GetChassisVersion-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetChassisVersion-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetChassisVersion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetChassisVersion-request
))
;//! \htmlinclude GetChassisVersion-response.msg.html

(cl:defclass <GetChassisVersion-response> (roslisp-msg-protocol:ros-message)
  ((chassis_hardware_version
    :reader chassis_hardware_version
    :initarg :chassis_hardware_version
    :type cl:string
    :initform "")
   (driver_hardware_version
    :reader driver_hardware_version
    :initarg :driver_hardware_version
    :type cl:string
    :initform "")
   (chassis_software_version
    :reader chassis_software_version
    :initarg :chassis_software_version
    :type cl:string
    :initform "")
   (driver_software_version
    :reader driver_software_version
    :initarg :driver_software_version
    :type cl:string
    :initform "")
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetChassisVersion-response (<GetChassisVersion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetChassisVersion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetChassisVersion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetChassisVersion-response> is deprecated: use robint_msgs-srv:GetChassisVersion-response instead.")))

(cl:ensure-generic-function 'chassis_hardware_version-val :lambda-list '(m))
(cl:defmethod chassis_hardware_version-val ((m <GetChassisVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:chassis_hardware_version-val is deprecated.  Use robint_msgs-srv:chassis_hardware_version instead.")
  (chassis_hardware_version m))

(cl:ensure-generic-function 'driver_hardware_version-val :lambda-list '(m))
(cl:defmethod driver_hardware_version-val ((m <GetChassisVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:driver_hardware_version-val is deprecated.  Use robint_msgs-srv:driver_hardware_version instead.")
  (driver_hardware_version m))

(cl:ensure-generic-function 'chassis_software_version-val :lambda-list '(m))
(cl:defmethod chassis_software_version-val ((m <GetChassisVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:chassis_software_version-val is deprecated.  Use robint_msgs-srv:chassis_software_version instead.")
  (chassis_software_version m))

(cl:ensure-generic-function 'driver_software_version-val :lambda-list '(m))
(cl:defmethod driver_software_version-val ((m <GetChassisVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:driver_software_version-val is deprecated.  Use robint_msgs-srv:driver_software_version instead.")
  (driver_software_version m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetChassisVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetChassisVersion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetChassisVersion-response>) ostream)
  "Serializes a message object of type '<GetChassisVersion-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chassis_hardware_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chassis_hardware_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'driver_hardware_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'driver_hardware_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chassis_software_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chassis_software_version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'driver_software_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'driver_software_version))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetChassisVersion-response>) istream)
  "Deserializes a message object of type '<GetChassisVersion-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chassis_hardware_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chassis_hardware_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'driver_hardware_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'driver_hardware_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chassis_software_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chassis_software_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'driver_software_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'driver_software_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetChassisVersion-response>)))
  "Returns string type for a service object of type '<GetChassisVersion-response>"
  "robint_msgs/GetChassisVersionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetChassisVersion-response)))
  "Returns string type for a service object of type 'GetChassisVersion-response"
  "robint_msgs/GetChassisVersionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetChassisVersion-response>)))
  "Returns md5sum for a message object of type '<GetChassisVersion-response>"
  "3451500d4b57390d32336828695f590f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetChassisVersion-response)))
  "Returns md5sum for a message object of type 'GetChassisVersion-response"
  "3451500d4b57390d32336828695f590f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetChassisVersion-response>)))
  "Returns full string definition for message of type '<GetChassisVersion-response>"
  (cl:format cl:nil "string chassis_hardware_version~%string driver_hardware_version~%string chassis_software_version~%string driver_software_version~%bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetChassisVersion-response)))
  "Returns full string definition for message of type 'GetChassisVersion-response"
  (cl:format cl:nil "string chassis_hardware_version~%string driver_hardware_version~%string chassis_software_version~%string driver_software_version~%bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetChassisVersion-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'chassis_hardware_version))
     4 (cl:length (cl:slot-value msg 'driver_hardware_version))
     4 (cl:length (cl:slot-value msg 'chassis_software_version))
     4 (cl:length (cl:slot-value msg 'driver_software_version))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetChassisVersion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetChassisVersion-response
    (cl:cons ':chassis_hardware_version (chassis_hardware_version msg))
    (cl:cons ':driver_hardware_version (driver_hardware_version msg))
    (cl:cons ':chassis_software_version (chassis_software_version msg))
    (cl:cons ':driver_software_version (driver_software_version msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetChassisVersion)))
  'GetChassisVersion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetChassisVersion)))
  'GetChassisVersion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetChassisVersion)))
  "Returns string type for a service object of type '<GetChassisVersion>"
  "robint_msgs/GetChassisVersion")