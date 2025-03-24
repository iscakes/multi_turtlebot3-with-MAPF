; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude ImageInfo.msg.html

(cl:defclass <ImageInfo> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (base64
    :reader base64
    :initarg :base64
    :type cl:string
    :initform "")
   (format
    :reader format
    :initarg :format
    :type cl:string
    :initform ""))
)

(cl:defclass ImageInfo (<ImageInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<ImageInfo> is deprecated: use robint_msgs-msg:ImageInfo instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ImageInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:id-val is deprecated.  Use robint_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'base64-val :lambda-list '(m))
(cl:defmethod base64-val ((m <ImageInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:base64-val is deprecated.  Use robint_msgs-msg:base64 instead.")
  (base64 m))

(cl:ensure-generic-function 'format-val :lambda-list '(m))
(cl:defmethod format-val ((m <ImageInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:format-val is deprecated.  Use robint_msgs-msg:format instead.")
  (format m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageInfo>) ostream)
  "Serializes a message object of type '<ImageInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base64))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base64))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'format))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'format))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageInfo>) istream)
  "Deserializes a message object of type '<ImageInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base64) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base64) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'format) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'format) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageInfo>)))
  "Returns string type for a message object of type '<ImageInfo>"
  "robint_msgs/ImageInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageInfo)))
  "Returns string type for a message object of type 'ImageInfo"
  "robint_msgs/ImageInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageInfo>)))
  "Returns md5sum for a message object of type '<ImageInfo>"
  "ec708a88adeb2d16cf2e489c284cf4e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageInfo)))
  "Returns md5sum for a message object of type 'ImageInfo"
  "ec708a88adeb2d16cf2e489c284cf4e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageInfo>)))
  "Returns full string definition for message of type '<ImageInfo>"
  (cl:format cl:nil "string id~%string base64~%string format~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageInfo)))
  "Returns full string definition for message of type 'ImageInfo"
  (cl:format cl:nil "string id~%string base64~%string format~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'base64))
     4 (cl:length (cl:slot-value msg 'format))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageInfo
    (cl:cons ':id (id msg))
    (cl:cons ':base64 (base64 msg))
    (cl:cons ':format (format msg))
))
