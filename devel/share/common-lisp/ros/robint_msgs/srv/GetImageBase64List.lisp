; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetImageBase64List-request.msg.html

(cl:defclass <GetImageBase64List-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass GetImageBase64List-request (<GetImageBase64List-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetImageBase64List-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetImageBase64List-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetImageBase64List-request> is deprecated: use robint_msgs-srv:GetImageBase64List-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <GetImageBase64List-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:topic-val is deprecated.  Use robint_msgs-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetImageBase64List-request>) ostream)
  "Serializes a message object of type '<GetImageBase64List-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetImageBase64List-request>) istream)
  "Deserializes a message object of type '<GetImageBase64List-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetImageBase64List-request>)))
  "Returns string type for a service object of type '<GetImageBase64List-request>"
  "robint_msgs/GetImageBase64ListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImageBase64List-request)))
  "Returns string type for a service object of type 'GetImageBase64List-request"
  "robint_msgs/GetImageBase64ListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetImageBase64List-request>)))
  "Returns md5sum for a message object of type '<GetImageBase64List-request>"
  "7a44e79635d748554f2c54085f25c3d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetImageBase64List-request)))
  "Returns md5sum for a message object of type 'GetImageBase64List-request"
  "7a44e79635d748554f2c54085f25c3d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetImageBase64List-request>)))
  "Returns full string definition for message of type '<GetImageBase64List-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetImageBase64List-request)))
  "Returns full string definition for message of type 'GetImageBase64List-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetImageBase64List-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetImageBase64List-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetImageBase64List-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude GetImageBase64List-response.msg.html

(cl:defclass <GetImageBase64List-response> (roslisp-msg-protocol:ros-message)
  ((image_list
    :reader image_list
    :initarg :image_list
    :type (cl:vector robint_msgs-msg:ImageInfo)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:ImageInfo :initial-element (cl:make-instance 'robint_msgs-msg:ImageInfo)))
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetImageBase64List-response (<GetImageBase64List-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetImageBase64List-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetImageBase64List-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetImageBase64List-response> is deprecated: use robint_msgs-srv:GetImageBase64List-response instead.")))

(cl:ensure-generic-function 'image_list-val :lambda-list '(m))
(cl:defmethod image_list-val ((m <GetImageBase64List-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:image_list-val is deprecated.  Use robint_msgs-srv:image_list instead.")
  (image_list m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetImageBase64List-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetImageBase64List-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetImageBase64List-response>) ostream)
  "Serializes a message object of type '<GetImageBase64List-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'image_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetImageBase64List-response>) istream)
  "Deserializes a message object of type '<GetImageBase64List-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:ImageInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetImageBase64List-response>)))
  "Returns string type for a service object of type '<GetImageBase64List-response>"
  "robint_msgs/GetImageBase64ListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImageBase64List-response)))
  "Returns string type for a service object of type 'GetImageBase64List-response"
  "robint_msgs/GetImageBase64ListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetImageBase64List-response>)))
  "Returns md5sum for a message object of type '<GetImageBase64List-response>"
  "7a44e79635d748554f2c54085f25c3d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetImageBase64List-response)))
  "Returns md5sum for a message object of type 'GetImageBase64List-response"
  "7a44e79635d748554f2c54085f25c3d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetImageBase64List-response>)))
  "Returns full string definition for message of type '<GetImageBase64List-response>"
  (cl:format cl:nil "ImageInfo[] image_list~%uint8 error_code~%bool success~%~%================================================================================~%MSG: robint_msgs/ImageInfo~%string id~%string base64~%string format~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetImageBase64List-response)))
  "Returns full string definition for message of type 'GetImageBase64List-response"
  (cl:format cl:nil "ImageInfo[] image_list~%uint8 error_code~%bool success~%~%================================================================================~%MSG: robint_msgs/ImageInfo~%string id~%string base64~%string format~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetImageBase64List-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetImageBase64List-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetImageBase64List-response
    (cl:cons ':image_list (image_list msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetImageBase64List)))
  'GetImageBase64List-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetImageBase64List)))
  'GetImageBase64List-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetImageBase64List)))
  "Returns string type for a service object of type '<GetImageBase64List>"
  "robint_msgs/GetImageBase64List")