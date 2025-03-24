; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude IsolatedZone.msg.html

(cl:defclass <IsolatedZone> (roslisp-msg-protocol:ros-message)
  ((zone
    :reader zone
    :initarg :zone
    :type robint_msgs-msg:Zone
    :initform (cl:make-instance 'robint_msgs-msg:Zone))
   (wait_points
    :reader wait_points
    :initarg :wait_points
    :type (cl:vector robint_msgs-msg:IsolatedWait)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:IsolatedWait :initial-element (cl:make-instance 'robint_msgs-msg:IsolatedWait)))
   (next_task
    :reader next_task
    :initarg :next_task
    :type cl:string
    :initform ""))
)

(cl:defclass IsolatedZone (<IsolatedZone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IsolatedZone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IsolatedZone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<IsolatedZone> is deprecated: use robint_msgs-msg:IsolatedZone instead.")))

(cl:ensure-generic-function 'zone-val :lambda-list '(m))
(cl:defmethod zone-val ((m <IsolatedZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:zone-val is deprecated.  Use robint_msgs-msg:zone instead.")
  (zone m))

(cl:ensure-generic-function 'wait_points-val :lambda-list '(m))
(cl:defmethod wait_points-val ((m <IsolatedZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:wait_points-val is deprecated.  Use robint_msgs-msg:wait_points instead.")
  (wait_points m))

(cl:ensure-generic-function 'next_task-val :lambda-list '(m))
(cl:defmethod next_task-val ((m <IsolatedZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:next_task-val is deprecated.  Use robint_msgs-msg:next_task instead.")
  (next_task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IsolatedZone>) ostream)
  "Serializes a message object of type '<IsolatedZone>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'zone) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wait_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wait_points))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'next_task))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'next_task))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IsolatedZone>) istream)
  "Deserializes a message object of type '<IsolatedZone>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'zone) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wait_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wait_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:IsolatedWait))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'next_task) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'next_task) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IsolatedZone>)))
  "Returns string type for a message object of type '<IsolatedZone>"
  "robint_msgs/IsolatedZone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IsolatedZone)))
  "Returns string type for a message object of type 'IsolatedZone"
  "robint_msgs/IsolatedZone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IsolatedZone>)))
  "Returns md5sum for a message object of type '<IsolatedZone>"
  "42047e004f43f0c737c09962b5dbeda6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IsolatedZone)))
  "Returns md5sum for a message object of type 'IsolatedZone"
  "42047e004f43f0c737c09962b5dbeda6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IsolatedZone>)))
  "Returns full string definition for message of type '<IsolatedZone>"
  (cl:format cl:nil "Zone zone~%IsolatedWait[] wait_points~%string next_task~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: robint_msgs/IsolatedWait~%geometry_msgs/Pose pose~%string uuid~%bool direct~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IsolatedZone)))
  "Returns full string definition for message of type 'IsolatedZone"
  (cl:format cl:nil "Zone zone~%IsolatedWait[] wait_points~%string next_task~%================================================================================~%MSG: robint_msgs/Zone~%string uuid~%string name~%string map_uuid~%string group_uuid~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: robint_msgs/IsolatedWait~%geometry_msgs/Pose pose~%string uuid~%bool direct~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IsolatedZone>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'zone))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wait_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'next_task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IsolatedZone>))
  "Converts a ROS message object to a list"
  (cl:list 'IsolatedZone
    (cl:cons ':zone (zone msg))
    (cl:cons ':wait_points (wait_points msg))
    (cl:cons ':next_task (next_task msg))
))
