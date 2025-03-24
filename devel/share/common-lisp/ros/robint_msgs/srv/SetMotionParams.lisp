; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude SetMotionParams-request.msg.html

(cl:defclass <SetMotionParams-request> (roslisp-msg-protocol:ros-message)
  ((max_vel
    :reader max_vel
    :initarg :max_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetMotionParams-request (<SetMotionParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotionParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotionParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<SetMotionParams-request> is deprecated: use robint_msgs-srv:SetMotionParams-request instead.")))

(cl:ensure-generic-function 'max_vel-val :lambda-list '(m))
(cl:defmethod max_vel-val ((m <SetMotionParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:max_vel-val is deprecated.  Use robint_msgs-srv:max_vel instead.")
  (max_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotionParams-request>) ostream)
  "Serializes a message object of type '<SetMotionParams-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotionParams-request>) istream)
  "Deserializes a message object of type '<SetMotionParams-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotionParams-request>)))
  "Returns string type for a service object of type '<SetMotionParams-request>"
  "robint_msgs/SetMotionParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotionParams-request)))
  "Returns string type for a service object of type 'SetMotionParams-request"
  "robint_msgs/SetMotionParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotionParams-request>)))
  "Returns md5sum for a message object of type '<SetMotionParams-request>"
  "b5cbbb1ea5ef99ec2d9f8ade1e48feb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotionParams-request)))
  "Returns md5sum for a message object of type 'SetMotionParams-request"
  "b5cbbb1ea5ef99ec2d9f8ade1e48feb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotionParams-request>)))
  "Returns full string definition for message of type '<SetMotionParams-request>"
  (cl:format cl:nil "float32 max_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotionParams-request)))
  "Returns full string definition for message of type 'SetMotionParams-request"
  (cl:format cl:nil "float32 max_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotionParams-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotionParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotionParams-request
    (cl:cons ':max_vel (max_vel msg))
))
;//! \htmlinclude SetMotionParams-response.msg.html

(cl:defclass <SetMotionParams-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetMotionParams-response (<SetMotionParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotionParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotionParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<SetMotionParams-response> is deprecated: use robint_msgs-srv:SetMotionParams-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMotionParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <SetMotionParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetMotionParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotionParams-response>) ostream)
  "Serializes a message object of type '<SetMotionParams-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotionParams-response>) istream)
  "Deserializes a message object of type '<SetMotionParams-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotionParams-response>)))
  "Returns string type for a service object of type '<SetMotionParams-response>"
  "robint_msgs/SetMotionParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotionParams-response)))
  "Returns string type for a service object of type 'SetMotionParams-response"
  "robint_msgs/SetMotionParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotionParams-response>)))
  "Returns md5sum for a message object of type '<SetMotionParams-response>"
  "b5cbbb1ea5ef99ec2d9f8ade1e48feb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotionParams-response)))
  "Returns md5sum for a message object of type 'SetMotionParams-response"
  "b5cbbb1ea5ef99ec2d9f8ade1e48feb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotionParams-response>)))
  "Returns full string definition for message of type '<SetMotionParams-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotionParams-response)))
  "Returns full string definition for message of type 'SetMotionParams-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotionParams-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotionParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotionParams-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMotionParams)))
  'SetMotionParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMotionParams)))
  'SetMotionParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotionParams)))
  "Returns string type for a service object of type '<SetMotionParams>"
  "robint_msgs/SetMotionParams")