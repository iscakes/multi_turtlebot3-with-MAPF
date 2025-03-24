; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude CutFootprint-request.msg.html

(cl:defclass <CutFootprint-request> (roslisp-msg-protocol:ros-message)
  ((footprint
    :reader footprint
    :initarg :footprint
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass CutFootprint-request (<CutFootprint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CutFootprint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CutFootprint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CutFootprint-request> is deprecated: use robint_msgs-srv:CutFootprint-request instead.")))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <CutFootprint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:footprint-val is deprecated.  Use robint_msgs-srv:footprint instead.")
  (footprint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CutFootprint-request>) ostream)
  "Serializes a message object of type '<CutFootprint-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'footprint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'footprint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CutFootprint-request>) istream)
  "Deserializes a message object of type '<CutFootprint-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'footprint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'footprint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CutFootprint-request>)))
  "Returns string type for a service object of type '<CutFootprint-request>"
  "robint_msgs/CutFootprintRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CutFootprint-request)))
  "Returns string type for a service object of type 'CutFootprint-request"
  "robint_msgs/CutFootprintRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CutFootprint-request>)))
  "Returns md5sum for a message object of type '<CutFootprint-request>"
  "661f991d4d002d73324475c84dadc8da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CutFootprint-request)))
  "Returns md5sum for a message object of type 'CutFootprint-request"
  "661f991d4d002d73324475c84dadc8da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CutFootprint-request>)))
  "Returns full string definition for message of type '<CutFootprint-request>"
  (cl:format cl:nil "geometry_msgs/Point[] footprint~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CutFootprint-request)))
  "Returns full string definition for message of type 'CutFootprint-request"
  (cl:format cl:nil "geometry_msgs/Point[] footprint~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CutFootprint-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'footprint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CutFootprint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CutFootprint-request
    (cl:cons ':footprint (footprint msg))
))
;//! \htmlinclude CutFootprint-response.msg.html

(cl:defclass <CutFootprint-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CutFootprint-response (<CutFootprint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CutFootprint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CutFootprint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<CutFootprint-response> is deprecated: use robint_msgs-srv:CutFootprint-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CutFootprint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <CutFootprint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CutFootprint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CutFootprint-response>) ostream)
  "Serializes a message object of type '<CutFootprint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CutFootprint-response>) istream)
  "Deserializes a message object of type '<CutFootprint-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CutFootprint-response>)))
  "Returns string type for a service object of type '<CutFootprint-response>"
  "robint_msgs/CutFootprintResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CutFootprint-response)))
  "Returns string type for a service object of type 'CutFootprint-response"
  "robint_msgs/CutFootprintResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CutFootprint-response>)))
  "Returns md5sum for a message object of type '<CutFootprint-response>"
  "661f991d4d002d73324475c84dadc8da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CutFootprint-response)))
  "Returns md5sum for a message object of type 'CutFootprint-response"
  "661f991d4d002d73324475c84dadc8da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CutFootprint-response>)))
  "Returns full string definition for message of type '<CutFootprint-response>"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CutFootprint-response)))
  "Returns full string definition for message of type 'CutFootprint-response"
  (cl:format cl:nil "bool success~%uint8 error_code~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CutFootprint-response>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CutFootprint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CutFootprint-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CutFootprint)))
  'CutFootprint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CutFootprint)))
  'CutFootprint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CutFootprint)))
  "Returns string type for a service object of type '<CutFootprint>"
  "robint_msgs/CutFootprint")