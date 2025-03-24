; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude AutoExploreState.msg.html

(cl:defclass <AutoExploreState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type robint_msgs-msg:TaskStateHeader
    :initform (cl:make-instance 'robint_msgs-msg:TaskStateHeader))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
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

(cl:defclass AutoExploreState (<AutoExploreState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutoExploreState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutoExploreState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<AutoExploreState> is deprecated: use robint_msgs-msg:AutoExploreState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AutoExploreState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:header-val is deprecated.  Use robint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <AutoExploreState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:status-val is deprecated.  Use robint_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'r_state-val :lambda-list '(m))
(cl:defmethod r_state-val ((m <AutoExploreState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:r_state-val is deprecated.  Use robint_msgs-msg:r_state instead.")
  (r_state m))

(cl:ensure-generic-function 'r_feedback-val :lambda-list '(m))
(cl:defmethod r_feedback-val ((m <AutoExploreState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:r_feedback-val is deprecated.  Use robint_msgs-msg:r_feedback instead.")
  (r_feedback m))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <AutoExploreState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:finished-val is deprecated.  Use robint_msgs-msg:finished instead.")
  (finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutoExploreState>) ostream)
  "Serializes a message object of type '<AutoExploreState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_feedback)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finished) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutoExploreState>) istream)
  "Deserializes a message object of type '<AutoExploreState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_feedback)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'finished) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutoExploreState>)))
  "Returns string type for a message object of type '<AutoExploreState>"
  "robint_msgs/AutoExploreState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutoExploreState)))
  "Returns string type for a message object of type 'AutoExploreState"
  "robint_msgs/AutoExploreState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutoExploreState>)))
  "Returns md5sum for a message object of type '<AutoExploreState>"
  "f9cd510711a279aa8692bd352c32f8ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutoExploreState)))
  "Returns md5sum for a message object of type 'AutoExploreState"
  "f9cd510711a279aa8692bd352c32f8ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutoExploreState>)))
  "Returns full string definition for message of type '<AutoExploreState>"
  (cl:format cl:nil "TaskStateHeader header~%uint8 status~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutoExploreState)))
  "Returns full string definition for message of type 'AutoExploreState"
  (cl:format cl:nil "TaskStateHeader header~%uint8 status~%uint8 r_state~%uint8 r_feedback~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutoExploreState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutoExploreState>))
  "Converts a ROS message object to a list"
  (cl:list 'AutoExploreState
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':r_state (r_state msg))
    (cl:cons ':r_feedback (r_feedback msg))
    (cl:cons ':finished (finished msg))
))
