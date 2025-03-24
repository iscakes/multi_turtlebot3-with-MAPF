; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude MotionState.msg.html

(cl:defclass <MotionState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type robint_msgs-msg:TaskStateHeader
    :initform (cl:make-instance 'robint_msgs-msg:TaskStateHeader))
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (r_state
    :reader r_state
    :initarg :r_state
    :type cl:fixnum
    :initform 0)
   (r_feedback
    :reader r_feedback
    :initarg :r_feedback
    :type cl:fixnum
    :initform 0)
   (finished
    :reader finished
    :initarg :finished
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MotionState (<MotionState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<MotionState> is deprecated: use robint_msgs-msg:MotionState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:header-val is deprecated.  Use robint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:type-val is deprecated.  Use robint_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:distance-val is deprecated.  Use robint_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:theta-val is deprecated.  Use robint_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'r_state-val :lambda-list '(m))
(cl:defmethod r_state-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:r_state-val is deprecated.  Use robint_msgs-msg:r_state instead.")
  (r_state m))

(cl:ensure-generic-function 'r_feedback-val :lambda-list '(m))
(cl:defmethod r_feedback-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:r_feedback-val is deprecated.  Use robint_msgs-msg:r_feedback instead.")
  (r_feedback m))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:finished-val is deprecated.  Use robint_msgs-msg:finished instead.")
  (finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionState>) ostream)
  "Serializes a message object of type '<MotionState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_feedback)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finished) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionState>) istream)
  "Deserializes a message object of type '<MotionState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_feedback)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finished) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionState>)))
  "Returns string type for a message object of type '<MotionState>"
  "robint_msgs/MotionState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionState)))
  "Returns string type for a message object of type 'MotionState"
  "robint_msgs/MotionState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionState>)))
  "Returns md5sum for a message object of type '<MotionState>"
  "03bec34e1a2d7252e47f816595320a27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionState)))
  "Returns md5sum for a message object of type 'MotionState"
  "03bec34e1a2d7252e47f816595320a27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionState>)))
  "Returns full string definition for message of type '<MotionState>"
  (cl:format cl:nil "TaskStateHeader header~%string type      # \"move\" or \"rotate\"~%float32 distance~%float32 theta~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionState)))
  "Returns full string definition for message of type 'MotionState"
  (cl:format cl:nil "TaskStateHeader header~%string type      # \"move\" or \"rotate\"~%float32 distance~%float32 theta~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'type))
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionState>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionState
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':r_state (r_state msg))
    (cl:cons ':r_feedback (r_feedback msg))
    (cl:cons ':finished (finished msg))
))
