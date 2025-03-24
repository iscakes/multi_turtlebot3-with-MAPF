; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude LocationNameList.msg.html

(cl:defclass <LocationNameList> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (name_list
    :reader name_list
    :initarg :name_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass LocationNameList (<LocationNameList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocationNameList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocationNameList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<LocationNameList> is deprecated: use robint_msgs-msg:LocationNameList instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <LocationNameList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:map_name-val is deprecated.  Use robint_msgs-msg:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'name_list-val :lambda-list '(m))
(cl:defmethod name_list-val ((m <LocationNameList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:name_list-val is deprecated.  Use robint_msgs-msg:name_list instead.")
  (name_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocationNameList>) ostream)
  "Serializes a message object of type '<LocationNameList>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'name_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocationNameList>) istream)
  "Deserializes a message object of type '<LocationNameList>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocationNameList>)))
  "Returns string type for a message object of type '<LocationNameList>"
  "robint_msgs/LocationNameList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocationNameList)))
  "Returns string type for a message object of type 'LocationNameList"
  "robint_msgs/LocationNameList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocationNameList>)))
  "Returns md5sum for a message object of type '<LocationNameList>"
  "4abada7477d6585d3a5e3ad147613d60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocationNameList)))
  "Returns md5sum for a message object of type 'LocationNameList"
  "4abada7477d6585d3a5e3ad147613d60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocationNameList>)))
  "Returns full string definition for message of type '<LocationNameList>"
  (cl:format cl:nil "string map_name~%string[] name_list~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocationNameList)))
  "Returns full string definition for message of type 'LocationNameList"
  (cl:format cl:nil "string map_name~%string[] name_list~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocationNameList>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocationNameList>))
  "Converts a ROS message object to a list"
  (cl:list 'LocationNameList
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':name_list (name_list msg))
))
