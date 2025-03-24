; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetImageSecurityLine-request.msg.html

(cl:defclass <GetImageSecurityLine-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetImageSecurityLine-request (<GetImageSecurityLine-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetImageSecurityLine-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetImageSecurityLine-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetImageSecurityLine-request> is deprecated: use robint_msgs-srv:GetImageSecurityLine-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetImageSecurityLine-request>) ostream)
  "Serializes a message object of type '<GetImageSecurityLine-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetImageSecurityLine-request>) istream)
  "Deserializes a message object of type '<GetImageSecurityLine-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetImageSecurityLine-request>)))
  "Returns string type for a service object of type '<GetImageSecurityLine-request>"
  "robint_msgs/GetImageSecurityLineRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImageSecurityLine-request)))
  "Returns string type for a service object of type 'GetImageSecurityLine-request"
  "robint_msgs/GetImageSecurityLineRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetImageSecurityLine-request>)))
  "Returns md5sum for a message object of type '<GetImageSecurityLine-request>"
  "f13d2e4ae6c8429eb27a005e4536a853")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetImageSecurityLine-request)))
  "Returns md5sum for a message object of type 'GetImageSecurityLine-request"
  "f13d2e4ae6c8429eb27a005e4536a853")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetImageSecurityLine-request>)))
  "Returns full string definition for message of type '<GetImageSecurityLine-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetImageSecurityLine-request)))
  "Returns full string definition for message of type 'GetImageSecurityLine-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetImageSecurityLine-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetImageSecurityLine-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetImageSecurityLine-request
))
;//! \htmlinclude GetImageSecurityLine-response.msg.html

(cl:defclass <GetImageSecurityLine-response> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
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

(cl:defclass GetImageSecurityLine-response (<GetImageSecurityLine-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetImageSecurityLine-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetImageSecurityLine-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetImageSecurityLine-response> is deprecated: use robint_msgs-srv:GetImageSecurityLine-response instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <GetImageSecurityLine-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:points-val is deprecated.  Use robint_msgs-srv:points instead.")
  (points m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetImageSecurityLine-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetImageSecurityLine-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetImageSecurityLine-response>) ostream)
  "Serializes a message object of type '<GetImageSecurityLine-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetImageSecurityLine-response>) istream)
  "Deserializes a message object of type '<GetImageSecurityLine-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetImageSecurityLine-response>)))
  "Returns string type for a service object of type '<GetImageSecurityLine-response>"
  "robint_msgs/GetImageSecurityLineResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImageSecurityLine-response)))
  "Returns string type for a service object of type 'GetImageSecurityLine-response"
  "robint_msgs/GetImageSecurityLineResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetImageSecurityLine-response>)))
  "Returns md5sum for a message object of type '<GetImageSecurityLine-response>"
  "f13d2e4ae6c8429eb27a005e4536a853")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetImageSecurityLine-response)))
  "Returns md5sum for a message object of type 'GetImageSecurityLine-response"
  "f13d2e4ae6c8429eb27a005e4536a853")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetImageSecurityLine-response>)))
  "Returns full string definition for message of type '<GetImageSecurityLine-response>"
  (cl:format cl:nil "geometry_msgs/Point[] points~%bool success~%uint8 error_code~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetImageSecurityLine-response)))
  "Returns full string definition for message of type 'GetImageSecurityLine-response"
  (cl:format cl:nil "geometry_msgs/Point[] points~%bool success~%uint8 error_code~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetImageSecurityLine-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetImageSecurityLine-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetImageSecurityLine-response
    (cl:cons ':points (points msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetImageSecurityLine)))
  'GetImageSecurityLine-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetImageSecurityLine)))
  'GetImageSecurityLine-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImageSecurityLine)))
  "Returns string type for a service object of type '<GetImageSecurityLine>"
  "robint_msgs/GetImageSecurityLine")