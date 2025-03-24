; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude CleaningAreaInfo.msg.html

(cl:defclass <CleaningAreaInfo> (roslisp-msg-protocol:ros-message)
  ((uuid
    :reader uuid
    :initarg :uuid
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (map_uuid
    :reader map_uuid
    :initarg :map_uuid
    :type cl:string
    :initform "")
   (group_uuid
    :reader group_uuid
    :initarg :group_uuid
    :type cl:string
    :initform "")
   (area
    :reader area
    :initarg :area
    :type cl:float
    :initform 0.0))
)

(cl:defclass CleaningAreaInfo (<CleaningAreaInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CleaningAreaInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CleaningAreaInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<CleaningAreaInfo> is deprecated: use robint_msgs-msg:CleaningAreaInfo instead.")))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <CleaningAreaInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:uuid-val is deprecated.  Use robint_msgs-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <CleaningAreaInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:name-val is deprecated.  Use robint_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'map_uuid-val :lambda-list '(m))
(cl:defmethod map_uuid-val ((m <CleaningAreaInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:map_uuid-val is deprecated.  Use robint_msgs-msg:map_uuid instead.")
  (map_uuid m))

(cl:ensure-generic-function 'group_uuid-val :lambda-list '(m))
(cl:defmethod group_uuid-val ((m <CleaningAreaInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:group_uuid-val is deprecated.  Use robint_msgs-msg:group_uuid instead.")
  (group_uuid m))

(cl:ensure-generic-function 'area-val :lambda-list '(m))
(cl:defmethod area-val ((m <CleaningAreaInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:area-val is deprecated.  Use robint_msgs-msg:area instead.")
  (area m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CleaningAreaInfo>) ostream)
  "Serializes a message object of type '<CleaningAreaInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_uuid))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'area))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CleaningAreaInfo>) istream)
  "Deserializes a message object of type '<CleaningAreaInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'area) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CleaningAreaInfo>)))
  "Returns string type for a message object of type '<CleaningAreaInfo>"
  "robint_msgs/CleaningAreaInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CleaningAreaInfo)))
  "Returns string type for a message object of type 'CleaningAreaInfo"
  "robint_msgs/CleaningAreaInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CleaningAreaInfo>)))
  "Returns md5sum for a message object of type '<CleaningAreaInfo>"
  "44deeac11f18e06ad9c20de2970c1c5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CleaningAreaInfo)))
  "Returns md5sum for a message object of type 'CleaningAreaInfo"
  "44deeac11f18e06ad9c20de2970c1c5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CleaningAreaInfo>)))
  "Returns full string definition for message of type '<CleaningAreaInfo>"
  (cl:format cl:nil "string uuid~%string name~%string map_uuid~%string group_uuid~%float32 area  # m * m~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CleaningAreaInfo)))
  "Returns full string definition for message of type 'CleaningAreaInfo"
  (cl:format cl:nil "string uuid~%string name~%string map_uuid~%string group_uuid~%float32 area  # m * m~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CleaningAreaInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uuid))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'map_uuid))
     4 (cl:length (cl:slot-value msg 'group_uuid))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CleaningAreaInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CleaningAreaInfo
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':name (name msg))
    (cl:cons ':map_uuid (map_uuid msg))
    (cl:cons ':group_uuid (group_uuid msg))
    (cl:cons ':area (area msg))
))
