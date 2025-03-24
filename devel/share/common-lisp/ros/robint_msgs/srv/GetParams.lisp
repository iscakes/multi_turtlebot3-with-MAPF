; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetParams-request.msg.html

(cl:defclass <GetParams-request> (roslisp-msg-protocol:ros-message)
  ((module
    :reader module
    :initarg :module
    :type cl:string
    :initform ""))
)

(cl:defclass GetParams-request (<GetParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetParams-request> is deprecated: use robint_msgs-srv:GetParams-request instead.")))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <GetParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:module-val is deprecated.  Use robint_msgs-srv:module instead.")
  (module m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetParams-request>) ostream)
  "Serializes a message object of type '<GetParams-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'module))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'module))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetParams-request>) istream)
  "Deserializes a message object of type '<GetParams-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'module) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetParams-request>)))
  "Returns string type for a service object of type '<GetParams-request>"
  "robint_msgs/GetParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParams-request)))
  "Returns string type for a service object of type 'GetParams-request"
  "robint_msgs/GetParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetParams-request>)))
  "Returns md5sum for a message object of type '<GetParams-request>"
  "91fc7b29f879eb3b16f8b9b676e5a263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetParams-request)))
  "Returns md5sum for a message object of type 'GetParams-request"
  "91fc7b29f879eb3b16f8b9b676e5a263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetParams-request>)))
  "Returns full string definition for message of type '<GetParams-request>"
  (cl:format cl:nil "string module~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetParams-request)))
  "Returns full string definition for message of type 'GetParams-request"
  (cl:format cl:nil "string module~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetParams-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'module))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetParams-request
    (cl:cons ':module (module msg))
))
;//! \htmlinclude GetParams-response.msg.html

(cl:defclass <GetParams-response> (roslisp-msg-protocol:ros-message)
  ((params
    :reader params
    :initarg :params
    :type (cl:vector robint_msgs-msg:Param)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:Param :initial-element (cl:make-instance 'robint_msgs-msg:Param)))
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

(cl:defclass GetParams-response (<GetParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetParams-response> is deprecated: use robint_msgs-srv:GetParams-response instead.")))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <GetParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:params-val is deprecated.  Use robint_msgs-srv:params instead.")
  (params m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetParams-response>) ostream)
  "Serializes a message object of type '<GetParams-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'params))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetParams-response>) istream)
  "Deserializes a message object of type '<GetParams-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:Param))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetParams-response>)))
  "Returns string type for a service object of type '<GetParams-response>"
  "robint_msgs/GetParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParams-response)))
  "Returns string type for a service object of type 'GetParams-response"
  "robint_msgs/GetParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetParams-response>)))
  "Returns md5sum for a message object of type '<GetParams-response>"
  "91fc7b29f879eb3b16f8b9b676e5a263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetParams-response)))
  "Returns md5sum for a message object of type 'GetParams-response"
  "91fc7b29f879eb3b16f8b9b676e5a263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetParams-response>)))
  "Returns full string definition for message of type '<GetParams-response>"
  (cl:format cl:nil "Param[] params~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/Param~%string name~%string type    # \"String\", \"Bool\", \"Float\", \"Int\"~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetParams-response)))
  "Returns full string definition for message of type 'GetParams-response"
  (cl:format cl:nil "Param[] params~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: robint_msgs/Param~%string name~%string type    # \"String\", \"Bool\", \"Float\", \"Int\"~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetParams-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetParams-response
    (cl:cons ':params (params msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetParams)))
  'GetParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetParams)))
  'GetParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParams)))
  "Returns string type for a service object of type '<GetParams>"
  "robint_msgs/GetParams")