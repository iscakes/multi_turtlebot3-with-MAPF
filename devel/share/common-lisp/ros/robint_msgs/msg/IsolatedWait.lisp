; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude IsolatedWait.msg.html

(cl:defclass <IsolatedWait> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (uuid
    :reader uuid
    :initarg :uuid
    :type cl:string
    :initform "")
   (direct
    :reader direct
    :initarg :direct
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IsolatedWait (<IsolatedWait>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsolatedWait>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsolatedWait)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<IsolatedWait> is deprecated: use robint_msgs-msg:IsolatedWait instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <IsolatedWait>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:pose-val is deprecated.  Use robint_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <IsolatedWait>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:uuid-val is deprecated.  Use robint_msgs-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'direct-val :lambda-list '(m))
(cl:defmethod direct-val ((m <IsolatedWait>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:direct-val is deprecated.  Use robint_msgs-msg:direct instead.")
  (direct m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsolatedWait>) ostream)
  "Serializes a message object of type '<IsolatedWait>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'direct) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsolatedWait>) istream)
  "Deserializes a message object of type '<IsolatedWait>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'direct) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsolatedWait>)))
  "Returns string type for a message object of type '<IsolatedWait>"
  "robint_msgs/IsolatedWait")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsolatedWait)))
  "Returns string type for a message object of type 'IsolatedWait"
  "robint_msgs/IsolatedWait")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsolatedWait>)))
  "Returns md5sum for a message object of type '<IsolatedWait>"
  "daf9e3b0429e595e00ee93cf39383683")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsolatedWait)))
  "Returns md5sum for a message object of type 'IsolatedWait"
  "daf9e3b0429e595e00ee93cf39383683")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsolatedWait>)))
  "Returns full string definition for message of type '<IsolatedWait>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%string uuid~%bool direct~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsolatedWait)))
  "Returns full string definition for message of type 'IsolatedWait"
  (cl:format cl:nil "geometry_msgs/Pose pose~%string uuid~%bool direct~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsolatedWait>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'uuid))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsolatedWait>))
  "Converts a ROS message object to a list"
  (cl:list 'IsolatedWait
    (cl:cons ':pose (pose msg))
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':direct (direct msg))
))
