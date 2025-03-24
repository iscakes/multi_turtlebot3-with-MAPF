; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetCumulativeOdometry-request.msg.html

(cl:defclass <GetCumulativeOdometry-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCumulativeOdometry-request (<GetCumulativeOdometry-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCumulativeOdometry-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCumulativeOdometry-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCumulativeOdometry-request> is deprecated: use robint_msgs-srv:GetCumulativeOdometry-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCumulativeOdometry-request>) ostream)
  "Serializes a message object of type '<GetCumulativeOdometry-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCumulativeOdometry-request>) istream)
  "Deserializes a message object of type '<GetCumulativeOdometry-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCumulativeOdometry-request>)))
  "Returns string type for a service object of type '<GetCumulativeOdometry-request>"
  "robint_msgs/GetCumulativeOdometryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCumulativeOdometry-request)))
  "Returns string type for a service object of type 'GetCumulativeOdometry-request"
  "robint_msgs/GetCumulativeOdometryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCumulativeOdometry-request>)))
  "Returns md5sum for a message object of type '<GetCumulativeOdometry-request>"
  "b8e1fda0d1e61d098b773ec0b60c0116")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCumulativeOdometry-request)))
  "Returns md5sum for a message object of type 'GetCumulativeOdometry-request"
  "b8e1fda0d1e61d098b773ec0b60c0116")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCumulativeOdometry-request>)))
  "Returns full string definition for message of type '<GetCumulativeOdometry-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCumulativeOdometry-request)))
  "Returns full string definition for message of type 'GetCumulativeOdometry-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCumulativeOdometry-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCumulativeOdometry-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCumulativeOdometry-request
))
;//! \htmlinclude GetCumulativeOdometry-response.msg.html

(cl:defclass <GetCumulativeOdometry-response> (roslisp-msg-protocol:ros-message)
  ((cumulative_odometry
    :reader cumulative_odometry
    :initarg :cumulative_odometry
    :type cl:float
    :initform 0.0)
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

(cl:defclass GetCumulativeOdometry-response (<GetCumulativeOdometry-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCumulativeOdometry-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCumulativeOdometry-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetCumulativeOdometry-response> is deprecated: use robint_msgs-srv:GetCumulativeOdometry-response instead.")))

(cl:ensure-generic-function 'cumulative_odometry-val :lambda-list '(m))
(cl:defmethod cumulative_odometry-val ((m <GetCumulativeOdometry-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:cumulative_odometry-val is deprecated.  Use robint_msgs-srv:cumulative_odometry instead.")
  (cumulative_odometry m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetCumulativeOdometry-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetCumulativeOdometry-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCumulativeOdometry-response>) ostream)
  "Serializes a message object of type '<GetCumulativeOdometry-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cumulative_odometry))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCumulativeOdometry-response>) istream)
  "Deserializes a message object of type '<GetCumulativeOdometry-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cumulative_odometry) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCumulativeOdometry-response>)))
  "Returns string type for a service object of type '<GetCumulativeOdometry-response>"
  "robint_msgs/GetCumulativeOdometryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCumulativeOdometry-response)))
  "Returns string type for a service object of type 'GetCumulativeOdometry-response"
  "robint_msgs/GetCumulativeOdometryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCumulativeOdometry-response>)))
  "Returns md5sum for a message object of type '<GetCumulativeOdometry-response>"
  "b8e1fda0d1e61d098b773ec0b60c0116")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCumulativeOdometry-response)))
  "Returns md5sum for a message object of type 'GetCumulativeOdometry-response"
  "b8e1fda0d1e61d098b773ec0b60c0116")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCumulativeOdometry-response>)))
  "Returns full string definition for message of type '<GetCumulativeOdometry-response>"
  (cl:format cl:nil "float64 cumulative_odometry~%bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCumulativeOdometry-response)))
  "Returns full string definition for message of type 'GetCumulativeOdometry-response"
  (cl:format cl:nil "float64 cumulative_odometry~%bool success~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCumulativeOdometry-response>))
  (cl:+ 0
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCumulativeOdometry-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCumulativeOdometry-response
    (cl:cons ':cumulative_odometry (cumulative_odometry msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCumulativeOdometry)))
  'GetCumulativeOdometry-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCumulativeOdometry)))
  'GetCumulativeOdometry-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCumulativeOdometry)))
  "Returns string type for a service object of type '<GetCumulativeOdometry>"
  "robint_msgs/GetCumulativeOdometry")