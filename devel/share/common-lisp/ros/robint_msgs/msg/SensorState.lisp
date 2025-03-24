; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude SensorState.msg.html

(cl:defclass <SensorState> (roslisp-msg-protocol:ros-message)
  ((diagnostic_array
    :reader diagnostic_array
    :initarg :diagnostic_array
    :type (cl:vector robint_msgs-msg:SensorDiagnostic)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:SensorDiagnostic :initial-element (cl:make-instance 'robint_msgs-msg:SensorDiagnostic))))
)

(cl:defclass SensorState (<SensorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<SensorState> is deprecated: use robint_msgs-msg:SensorState instead.")))

(cl:ensure-generic-function 'diagnostic_array-val :lambda-list '(m))
(cl:defmethod diagnostic_array-val ((m <SensorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:diagnostic_array-val is deprecated.  Use robint_msgs-msg:diagnostic_array instead.")
  (diagnostic_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorState>) ostream)
  "Serializes a message object of type '<SensorState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'diagnostic_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'diagnostic_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorState>) istream)
  "Deserializes a message object of type '<SensorState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'diagnostic_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'diagnostic_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:SensorDiagnostic))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorState>)))
  "Returns string type for a message object of type '<SensorState>"
  "robint_msgs/SensorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorState)))
  "Returns string type for a message object of type 'SensorState"
  "robint_msgs/SensorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorState>)))
  "Returns md5sum for a message object of type '<SensorState>"
  "b413862050990d5004a35381425f2c59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorState)))
  "Returns md5sum for a message object of type 'SensorState"
  "b413862050990d5004a35381425f2c59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorState>)))
  "Returns full string definition for message of type '<SensorState>"
  (cl:format cl:nil "SensorDiagnostic[] diagnostic_array~%# SensorDiagnostic imu~%# SensorDiagnostic scan~%# SensorDiagnostic depth_scan~%# SensorDiagnostic[] ultrasonic_array~%================================================================================~%MSG: robint_msgs/SensorDiagnostic~%time time~%string hardware_name~%bool is_received~%bool is_normal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorState)))
  "Returns full string definition for message of type 'SensorState"
  (cl:format cl:nil "SensorDiagnostic[] diagnostic_array~%# SensorDiagnostic imu~%# SensorDiagnostic scan~%# SensorDiagnostic depth_scan~%# SensorDiagnostic[] ultrasonic_array~%================================================================================~%MSG: robint_msgs/SensorDiagnostic~%time time~%string hardware_name~%bool is_received~%bool is_normal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'diagnostic_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorState>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorState
    (cl:cons ':diagnostic_array (diagnostic_array msg))
))
