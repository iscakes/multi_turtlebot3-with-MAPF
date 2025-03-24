; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude GateState.msg.html

(cl:defclass <GateState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type robint_msgs-msg:TaskStateHeader
    :initform (cl:make-instance 'robint_msgs-msg:TaskStateHeader))
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
   (gate_id
    :reader gate_id
    :initarg :gate_id
    :type cl:string
    :initform "")
   (finished
    :reader finished
    :initarg :finished
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GateState (<GateState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GateState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GateState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<GateState> is deprecated: use robint_msgs-msg:GateState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GateState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:header-val is deprecated.  Use robint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'r_state-val :lambda-list '(m))
(cl:defmethod r_state-val ((m <GateState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:r_state-val is deprecated.  Use robint_msgs-msg:r_state instead.")
  (r_state m))

(cl:ensure-generic-function 'r_feedback-val :lambda-list '(m))
(cl:defmethod r_feedback-val ((m <GateState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:r_feedback-val is deprecated.  Use robint_msgs-msg:r_feedback instead.")
  (r_feedback m))

(cl:ensure-generic-function 'gate_id-val :lambda-list '(m))
(cl:defmethod gate_id-val ((m <GateState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:gate_id-val is deprecated.  Use robint_msgs-msg:gate_id instead.")
  (gate_id m))

(cl:ensure-generic-function 'finished-val :lambda-list '(m))
(cl:defmethod finished-val ((m <GateState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-msg:finished-val is deprecated.  Use robint_msgs-msg:finished instead.")
  (finished m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GateState>) ostream)
  "Serializes a message object of type '<GateState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_feedback)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gate_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gate_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'finished) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GateState>) istream)
  "Deserializes a message object of type '<GateState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r_feedback)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gate_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gate_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'finished) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GateState>)))
  "Returns string type for a message object of type '<GateState>"
  "robint_msgs/GateState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GateState)))
  "Returns string type for a message object of type 'GateState"
  "robint_msgs/GateState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GateState>)))
  "Returns md5sum for a message object of type '<GateState>"
  "08e4940fb1e5fcf371098421ae5adcfa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GateState)))
  "Returns md5sum for a message object of type 'GateState"
  "08e4940fb1e5fcf371098421ae5adcfa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GateState>)))
  "Returns full string definition for message of type '<GateState>"
  (cl:format cl:nil "# gate_status~%TaskStateHeader header~%uint8 r_state~%uint8 r_feedback~%string gate_id~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GateState)))
  "Returns full string definition for message of type 'GateState"
  (cl:format cl:nil "# gate_status~%TaskStateHeader header~%uint8 r_state~%uint8 r_feedback~%string gate_id~%bool finished~%================================================================================~%MSG: robint_msgs/TaskStateHeader~%bool activate  # 该任务是否处于激活状态~%time start_time~%time stop_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GateState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4 (cl:length (cl:slot-value msg 'gate_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GateState>))
  "Converts a ROS message object to a list"
  (cl:list 'GateState
    (cl:cons ':header (header msg))
    (cl:cons ':r_state (r_state msg))
    (cl:cons ':r_feedback (r_feedback msg))
    (cl:cons ':gate_id (gate_id msg))
    (cl:cons ':finished (finished msg))
))
