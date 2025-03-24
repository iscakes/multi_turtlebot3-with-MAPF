; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude ExplorationGoal.msg.html

(cl:defclass <ExplorationGoal> (roslisp-msg-protocol:ros-message)
  ((map_originX
    :reader map_originX
    :initarg :map_originX
    :type cl:float
    :initform 0.0)
   (map_originY
    :reader map_originY
    :initarg :map_originY
    :type cl:float
    :initform 0.0)
   (map_width
    :reader map_width
    :initarg :map_width
    :type cl:integer
    :initform 0)
   (map_height
    :reader map_height
    :initarg :map_height
    :type cl:integer
    :initform 0)
   (map_resolution
    :reader map_resolution
    :initarg :map_resolution
    :type cl:float
    :initform 0.0)
   (points
    :reader points
    :initarg :points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass ExplorationGoal (<ExplorationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExplorationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExplorationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<ExplorationGoal> is deprecated: use robint_msgs-msg:ExplorationGoal instead.")))

(cl:ensure-generic-function 'map_originX-val :lambda-list '(m))
(cl:defmethod map_originX-val ((m <ExplorationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:map_originX-val is deprecated.  Use robint_msgs-msg:map_originX instead.")
  (map_originX m))

(cl:ensure-generic-function 'map_originY-val :lambda-list '(m))
(cl:defmethod map_originY-val ((m <ExplorationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:map_originY-val is deprecated.  Use robint_msgs-msg:map_originY instead.")
  (map_originY m))

(cl:ensure-generic-function 'map_width-val :lambda-list '(m))
(cl:defmethod map_width-val ((m <ExplorationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:map_width-val is deprecated.  Use robint_msgs-msg:map_width instead.")
  (map_width m))

(cl:ensure-generic-function 'map_height-val :lambda-list '(m))
(cl:defmethod map_height-val ((m <ExplorationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:map_height-val is deprecated.  Use robint_msgs-msg:map_height instead.")
  (map_height m))

(cl:ensure-generic-function 'map_resolution-val :lambda-list '(m))
(cl:defmethod map_resolution-val ((m <ExplorationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:map_resolution-val is deprecated.  Use robint_msgs-msg:map_resolution instead.")
  (map_resolution m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <ExplorationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:points-val is deprecated.  Use robint_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExplorationGoal>) ostream)
  "Serializes a message object of type '<ExplorationGoal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'map_originX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'map_originY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_height)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'map_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExplorationGoal>) istream)
  "Deserializes a message object of type '<ExplorationGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'map_originX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'map_originY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_height)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'map_resolution) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExplorationGoal>)))
  "Returns string type for a message object of type '<ExplorationGoal>"
  "robint_msgs/ExplorationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExplorationGoal)))
  "Returns string type for a message object of type 'ExplorationGoal"
  "robint_msgs/ExplorationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExplorationGoal>)))
  "Returns md5sum for a message object of type '<ExplorationGoal>"
  "e071b18ba3db984910845497c9be477d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExplorationGoal)))
  "Returns md5sum for a message object of type 'ExplorationGoal"
  "e071b18ba3db984910845497c9be477d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExplorationGoal>)))
  "Returns full string definition for message of type '<ExplorationGoal>"
  (cl:format cl:nil "float32 map_originX~%float32 map_originY~%uint32 map_width~%uint32 map_height~%float32 map_resolution~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExplorationGoal)))
  "Returns full string definition for message of type 'ExplorationGoal"
  (cl:format cl:nil "float32 map_originX~%float32 map_originY~%uint32 map_width~%uint32 map_height~%float32 map_resolution~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExplorationGoal>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExplorationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExplorationGoal
    (cl:cons ':map_originX (map_originX msg))
    (cl:cons ':map_originY (map_originY msg))
    (cl:cons ':map_width (map_width msg))
    (cl:cons ':map_height (map_height msg))
    (cl:cons ':map_resolution (map_resolution msg))
    (cl:cons ':points (points msg))
))
