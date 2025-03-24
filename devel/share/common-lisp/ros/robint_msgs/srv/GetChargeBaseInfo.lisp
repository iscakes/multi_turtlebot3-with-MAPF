; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetChargeBaseInfo-request.msg.html

(cl:defclass <GetChargeBaseInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetChargeBaseInfo-request (<GetChargeBaseInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetChargeBaseInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetChargeBaseInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetChargeBaseInfo-request> is deprecated: use robint_msgs-srv:GetChargeBaseInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetChargeBaseInfo-request>) ostream)
  "Serializes a message object of type '<GetChargeBaseInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetChargeBaseInfo-request>) istream)
  "Deserializes a message object of type '<GetChargeBaseInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetChargeBaseInfo-request>)))
  "Returns string type for a service object of type '<GetChargeBaseInfo-request>"
  "robint_msgs/GetChargeBaseInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetChargeBaseInfo-request)))
  "Returns string type for a service object of type 'GetChargeBaseInfo-request"
  "robint_msgs/GetChargeBaseInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetChargeBaseInfo-request>)))
  "Returns md5sum for a message object of type '<GetChargeBaseInfo-request>"
  "e867a9e96808d4305f59ec0c91de6769")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetChargeBaseInfo-request)))
  "Returns md5sum for a message object of type 'GetChargeBaseInfo-request"
  "e867a9e96808d4305f59ec0c91de6769")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetChargeBaseInfo-request>)))
  "Returns full string definition for message of type '<GetChargeBaseInfo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetChargeBaseInfo-request)))
  "Returns full string definition for message of type 'GetChargeBaseInfo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetChargeBaseInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetChargeBaseInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetChargeBaseInfo-request
))
;//! \htmlinclude GetChargeBaseInfo-response.msg.html

(cl:defclass <GetChargeBaseInfo-response> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type (cl:vector robint_msgs-msg:ChargeBaseInfo)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:ChargeBaseInfo :initial-element (cl:make-instance 'robint_msgs-msg:ChargeBaseInfo)))
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

(cl:defclass GetChargeBaseInfo-response (<GetChargeBaseInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetChargeBaseInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetChargeBaseInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetChargeBaseInfo-response> is deprecated: use robint_msgs-srv:GetChargeBaseInfo-response instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <GetChargeBaseInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:list-val is deprecated.  Use robint_msgs-srv:list instead.")
  (list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetChargeBaseInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <GetChargeBaseInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetChargeBaseInfo-response>) ostream)
  "Serializes a message object of type '<GetChargeBaseInfo-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetChargeBaseInfo-response>) istream)
  "Deserializes a message object of type '<GetChargeBaseInfo-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:ChargeBaseInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetChargeBaseInfo-response>)))
  "Returns string type for a service object of type '<GetChargeBaseInfo-response>"
  "robint_msgs/GetChargeBaseInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetChargeBaseInfo-response)))
  "Returns string type for a service object of type 'GetChargeBaseInfo-response"
  "robint_msgs/GetChargeBaseInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetChargeBaseInfo-response>)))
  "Returns md5sum for a message object of type '<GetChargeBaseInfo-response>"
  "e867a9e96808d4305f59ec0c91de6769")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetChargeBaseInfo-response)))
  "Returns md5sum for a message object of type 'GetChargeBaseInfo-response"
  "e867a9e96808d4305f59ec0c91de6769")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetChargeBaseInfo-response>)))
  "Returns full string definition for message of type '<GetChargeBaseInfo-response>"
  (cl:format cl:nil "ChargeBaseInfo[] list~%bool success~%uint8 error_code~%~%================================================================================~%MSG: robint_msgs/ChargeBaseInfo~%string location_uuid~%string location_name~%string group_uuid~%string map_uuid~%string floor_id~%string building_id~%geometry_msgs/PoseStamped pose~%geometry_msgs/PoseStamped anchor_pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetChargeBaseInfo-response)))
  "Returns full string definition for message of type 'GetChargeBaseInfo-response"
  (cl:format cl:nil "ChargeBaseInfo[] list~%bool success~%uint8 error_code~%~%================================================================================~%MSG: robint_msgs/ChargeBaseInfo~%string location_uuid~%string location_name~%string group_uuid~%string map_uuid~%string floor_id~%string building_id~%geometry_msgs/PoseStamped pose~%geometry_msgs/PoseStamped anchor_pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetChargeBaseInfo-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetChargeBaseInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetChargeBaseInfo-response
    (cl:cons ':list (list msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetChargeBaseInfo)))
  'GetChargeBaseInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetChargeBaseInfo)))
  'GetChargeBaseInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetChargeBaseInfo)))
  "Returns string type for a service object of type '<GetChargeBaseInfo>"
  "robint_msgs/GetChargeBaseInfo")