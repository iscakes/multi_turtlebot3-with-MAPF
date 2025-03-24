; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude HumanMsg.msg.html

(cl:defclass <HumanMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (center_of_world
    :reader center_of_world
    :initarg :center_of_world
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (body_rect
    :reader body_rect
    :initarg :body_rect
    :type robint_msgs-msg:RectWithConfidence
    :initform (cl:make-instance 'robint_msgs-msg:RectWithConfidence))
   (face_rect
    :reader face_rect
    :initarg :face_rect
    :type robint_msgs-msg:RectWithConfidence
    :initform (cl:make-instance 'robint_msgs-msg:RectWithConfidence))
   (is_within_security_line
    :reader is_within_security_line
    :initarg :is_within_security_line
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HumanMsg (<HumanMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<HumanMsg> is deprecated: use robint_msgs-msg:HumanMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HumanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:header-val is deprecated.  Use robint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <HumanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:id-val is deprecated.  Use robint_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <HumanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:name-val is deprecated.  Use robint_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'center_of_world-val :lambda-list '(m))
(cl:defmethod center_of_world-val ((m <HumanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:center_of_world-val is deprecated.  Use robint_msgs-msg:center_of_world instead.")
  (center_of_world m))

(cl:ensure-generic-function 'body_rect-val :lambda-list '(m))
(cl:defmethod body_rect-val ((m <HumanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:body_rect-val is deprecated.  Use robint_msgs-msg:body_rect instead.")
  (body_rect m))

(cl:ensure-generic-function 'face_rect-val :lambda-list '(m))
(cl:defmethod face_rect-val ((m <HumanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:face_rect-val is deprecated.  Use robint_msgs-msg:face_rect instead.")
  (face_rect m))

(cl:ensure-generic-function 'is_within_security_line-val :lambda-list '(m))
(cl:defmethod is_within_security_line-val ((m <HumanMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:is_within_security_line-val is deprecated.  Use robint_msgs-msg:is_within_security_line instead.")
  (is_within_security_line m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanMsg>) ostream)
  "Serializes a message object of type '<HumanMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_of_world) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_rect) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'face_rect) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_within_security_line) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanMsg>) istream)
  "Deserializes a message object of type '<HumanMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_of_world) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_rect) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'face_rect) istream)
    (cl:setf (cl:slot-value msg 'is_within_security_line) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanMsg>)))
  "Returns string type for a message object of type '<HumanMsg>"
  "robint_msgs/HumanMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanMsg)))
  "Returns string type for a message object of type 'HumanMsg"
  "robint_msgs/HumanMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanMsg>)))
  "Returns md5sum for a message object of type '<HumanMsg>"
  "aa008a33f57c2fa0495cfd1ccd404ddc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanMsg)))
  "Returns md5sum for a message object of type 'HumanMsg"
  "aa008a33f57c2fa0495cfd1ccd404ddc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanMsg>)))
  "Returns full string definition for message of type '<HumanMsg>"
  (cl:format cl:nil "std_msgs/Header header~%string id~%string name~%geometry_msgs/Point32 center_of_world~%RectWithConfidence body_rect~%RectWithConfidence face_rect~%bool is_within_security_line~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: robint_msgs/RectWithConfidence~%int32 x~%int32 y~%int32 width~%int32 height~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanMsg)))
  "Returns full string definition for message of type 'HumanMsg"
  (cl:format cl:nil "std_msgs/Header header~%string id~%string name~%geometry_msgs/Point32 center_of_world~%RectWithConfidence body_rect~%RectWithConfidence face_rect~%bool is_within_security_line~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: robint_msgs/RectWithConfidence~%int32 x~%int32 y~%int32 width~%int32 height~%float32 confidence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_of_world))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_rect))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'face_rect))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanMsg
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
    (cl:cons ':center_of_world (center_of_world msg))
    (cl:cons ':body_rect (body_rect msg))
    (cl:cons ':face_rect (face_rect msg))
    (cl:cons ':is_within_security_line (is_within_security_line msg))
))
