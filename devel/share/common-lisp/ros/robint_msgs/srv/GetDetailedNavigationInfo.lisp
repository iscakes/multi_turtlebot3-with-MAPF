; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetDetailedNavigationInfo-request.msg.html

(cl:defclass <GetDetailedNavigationInfo-request> (roslisp-msg-protocol:ros-message)
  ((loc_uuid
    :reader loc_uuid
    :initarg :loc_uuid
    :type cl:string
    :initform ""))
)

(cl:defclass GetDetailedNavigationInfo-request (<GetDetailedNavigationInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDetailedNavigationInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDetailedNavigationInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetDetailedNavigationInfo-request> is deprecated: use robint_msgs-srv:GetDetailedNavigationInfo-request instead.")))

(cl:ensure-generic-function 'loc_uuid-val :lambda-list '(m))
(cl:defmethod loc_uuid-val ((m <GetDetailedNavigationInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:loc_uuid-val is deprecated.  Use robint_msgs-srv:loc_uuid instead.")
  (loc_uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDetailedNavigationInfo-request>) ostream)
  "Serializes a message object of type '<GetDetailedNavigationInfo-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'loc_uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDetailedNavigationInfo-request>) istream)
  "Deserializes a message object of type '<GetDetailedNavigationInfo-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDetailedNavigationInfo-request>)))
  "Returns string type for a service object of type '<GetDetailedNavigationInfo-request>"
  "robint_msgs/GetDetailedNavigationInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDetailedNavigationInfo-request)))
  "Returns string type for a service object of type 'GetDetailedNavigationInfo-request"
  "robint_msgs/GetDetailedNavigationInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDetailedNavigationInfo-request>)))
  "Returns md5sum for a message object of type '<GetDetailedNavigationInfo-request>"
  "d40b5c7df15504a3cb8d5081f8acd091")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDetailedNavigationInfo-request)))
  "Returns md5sum for a message object of type 'GetDetailedNavigationInfo-request"
  "d40b5c7df15504a3cb8d5081f8acd091")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDetailedNavigationInfo-request>)))
  "Returns full string definition for message of type '<GetDetailedNavigationInfo-request>"
  (cl:format cl:nil "string loc_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDetailedNavigationInfo-request)))
  "Returns full string definition for message of type 'GetDetailedNavigationInfo-request"
  (cl:format cl:nil "string loc_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDetailedNavigationInfo-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'loc_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDetailedNavigationInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDetailedNavigationInfo-request
    (cl:cons ':loc_uuid (loc_uuid msg))
))
;//! \htmlinclude GetDetailedNavigationInfo-response.msg.html

(cl:defclass <GetDetailedNavigationInfo-response> (roslisp-msg-protocol:ros-message)
  ((current_map_uuid
    :reader current_map_uuid
    :initarg :current_map_uuid
    :type cl:string
    :initform "")
   (current_floor_id
    :reader current_floor_id
    :initarg :current_floor_id
    :type cl:string
    :initform "")
   (target_map_uuid
    :reader target_map_uuid
    :initarg :target_map_uuid
    :type cl:string
    :initform "")
   (target_floor_uuid
    :reader target_floor_uuid
    :initarg :target_floor_uuid
    :type cl:string
    :initform "")
   (target_loc_uuid
    :reader target_loc_uuid
    :initarg :target_loc_uuid
    :type cl:string
    :initform "")
   (enter_elevator_loc_uuid
    :reader enter_elevator_loc_uuid
    :initarg :enter_elevator_loc_uuid
    :type cl:string
    :initform "")
   (elevator_interior_loc_uuid
    :reader elevator_interior_loc_uuid
    :initarg :elevator_interior_loc_uuid
    :type cl:string
    :initform "")
   (elevator_wait_loc_uuid
    :reader elevator_wait_loc_uuid
    :initarg :elevator_wait_loc_uuid
    :type cl:string
    :initform "")
   (exit_elevator_loc_uuid
    :reader exit_elevator_loc_uuid
    :initarg :exit_elevator_loc_uuid
    :type cl:string
    :initform "")
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetDetailedNavigationInfo-response (<GetDetailedNavigationInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDetailedNavigationInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDetailedNavigationInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetDetailedNavigationInfo-response> is deprecated: use robint_msgs-srv:GetDetailedNavigationInfo-response instead.")))

(cl:ensure-generic-function 'current_map_uuid-val :lambda-list '(m))
(cl:defmethod current_map_uuid-val ((m <GetDetailedNavigationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:current_map_uuid-val is deprecated.  Use robint_msgs-srv:current_map_uuid instead.")
  (current_map_uuid m))

(cl:ensure-generic-function 'current_floor_id-val :lambda-list '(m))
(cl:defmethod current_floor_id-val ((m <GetDetailedNavigationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:current_floor_id-val is deprecated.  Use robint_msgs-srv:current_floor_id instead.")
  (current_floor_id m))

(cl:ensure-generic-function 'target_map_uuid-val :lambda-list '(m))
(cl:defmethod target_map_uuid-val ((m <GetDetailedNavigationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_map_uuid-val is deprecated.  Use robint_msgs-srv:target_map_uuid instead.")
  (target_map_uuid m))

(cl:ensure-generic-function 'target_floor_uuid-val :lambda-list '(m))
(cl:defmethod target_floor_uuid-val ((m <GetDetailedNavigationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_floor_uuid-val is deprecated.  Use robint_msgs-srv:target_floor_uuid instead.")
  (target_floor_uuid m))

(cl:ensure-generic-function 'target_loc_uuid-val :lambda-list '(m))
(cl:defmethod target_loc_uuid-val ((m <GetDetailedNavigationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:target_loc_uuid-val is deprecated.  Use robint_msgs-srv:target_loc_uuid instead.")
  (target_loc_uuid m))

(cl:ensure-generic-function 'enter_elevator_loc_uuid-val :lambda-list '(m))
(cl:defmethod enter_elevator_loc_uuid-val ((m <GetDetailedNavigationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:enter_elevator_loc_uuid-val is deprecated.  Use robint_msgs-srv:enter_elevator_loc_uuid instead.")
  (enter_elevator_loc_uuid m))

(cl:ensure-generic-function 'elevator_interior_loc_uuid-val :lambda-list '(m))
(cl:defmethod elevator_interior_loc_uuid-val ((m <GetDetailedNavigationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:elevator_interior_loc_uuid-val is deprecated.  Use robint_msgs-srv:elevator_interior_loc_uuid instead.")
  (elevator_interior_loc_uuid m))

(cl:ensure-generic-function 'elevator_wait_loc_uuid-val :lambda-list '(m))
(cl:defmethod elevator_wait_loc_uuid-val ((m <GetDetailedNavigationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:elevator_wait_loc_uuid-val is deprecated.  Use robint_msgs-srv:elevator_wait_loc_uuid instead.")
  (elevator_wait_loc_uuid m))

(cl:ensure-generic-function 'exit_elevator_loc_uuid-val :lambda-list '(m))
(cl:defmethod exit_elevator_loc_uuid-val ((m <GetDetailedNavigationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:exit_elevator_loc_uuid-val is deprecated.  Use robint_msgs-srv:exit_elevator_loc_uuid instead.")
  (exit_elevator_loc_uuid m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetDetailedNavigationInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:result-val is deprecated.  Use robint_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDetailedNavigationInfo-response>) ostream)
  "Serializes a message object of type '<GetDetailedNavigationInfo-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_floor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_floor_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_map_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_map_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_floor_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_floor_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_loc_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'enter_elevator_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'enter_elevator_loc_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'elevator_interior_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'elevator_interior_loc_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'elevator_wait_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'elevator_wait_loc_uuid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'exit_elevator_loc_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'exit_elevator_loc_uuid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDetailedNavigationInfo-response>) istream)
  "Deserializes a message object of type '<GetDetailedNavigationInfo-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_floor_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_floor_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_map_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_map_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_floor_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_floor_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enter_elevator_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'enter_elevator_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elevator_interior_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'elevator_interior_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elevator_wait_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'elevator_wait_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exit_elevator_loc_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'exit_elevator_loc_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDetailedNavigationInfo-response>)))
  "Returns string type for a service object of type '<GetDetailedNavigationInfo-response>"
  "robint_msgs/GetDetailedNavigationInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDetailedNavigationInfo-response)))
  "Returns string type for a service object of type 'GetDetailedNavigationInfo-response"
  "robint_msgs/GetDetailedNavigationInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDetailedNavigationInfo-response>)))
  "Returns md5sum for a message object of type '<GetDetailedNavigationInfo-response>"
  "d40b5c7df15504a3cb8d5081f8acd091")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDetailedNavigationInfo-response)))
  "Returns md5sum for a message object of type 'GetDetailedNavigationInfo-response"
  "d40b5c7df15504a3cb8d5081f8acd091")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDetailedNavigationInfo-response>)))
  "Returns full string definition for message of type '<GetDetailedNavigationInfo-response>"
  (cl:format cl:nil "string current_map_uuid~%string current_floor_id~%string target_map_uuid~%string target_floor_uuid~%string target_loc_uuid~%string enter_elevator_loc_uuid~%string elevator_interior_loc_uuid~%string elevator_wait_loc_uuid~%string exit_elevator_loc_uuid~%~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDetailedNavigationInfo-response)))
  "Returns full string definition for message of type 'GetDetailedNavigationInfo-response"
  (cl:format cl:nil "string current_map_uuid~%string current_floor_id~%string target_map_uuid~%string target_floor_uuid~%string target_loc_uuid~%string enter_elevator_loc_uuid~%string elevator_interior_loc_uuid~%string elevator_wait_loc_uuid~%string exit_elevator_loc_uuid~%~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDetailedNavigationInfo-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_map_uuid))
     4 (cl:length (cl:slot-value msg 'current_floor_id))
     4 (cl:length (cl:slot-value msg 'target_map_uuid))
     4 (cl:length (cl:slot-value msg 'target_floor_uuid))
     4 (cl:length (cl:slot-value msg 'target_loc_uuid))
     4 (cl:length (cl:slot-value msg 'enter_elevator_loc_uuid))
     4 (cl:length (cl:slot-value msg 'elevator_interior_loc_uuid))
     4 (cl:length (cl:slot-value msg 'elevator_wait_loc_uuid))
     4 (cl:length (cl:slot-value msg 'exit_elevator_loc_uuid))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDetailedNavigationInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDetailedNavigationInfo-response
    (cl:cons ':current_map_uuid (current_map_uuid msg))
    (cl:cons ':current_floor_id (current_floor_id msg))
    (cl:cons ':target_map_uuid (target_map_uuid msg))
    (cl:cons ':target_floor_uuid (target_floor_uuid msg))
    (cl:cons ':target_loc_uuid (target_loc_uuid msg))
    (cl:cons ':enter_elevator_loc_uuid (enter_elevator_loc_uuid msg))
    (cl:cons ':elevator_interior_loc_uuid (elevator_interior_loc_uuid msg))
    (cl:cons ':elevator_wait_loc_uuid (elevator_wait_loc_uuid msg))
    (cl:cons ':exit_elevator_loc_uuid (exit_elevator_loc_uuid msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDetailedNavigationInfo)))
  'GetDetailedNavigationInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDetailedNavigationInfo)))
  'GetDetailedNavigationInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDetailedNavigationInfo)))
  "Returns string type for a service object of type '<GetDetailedNavigationInfo>"
  "robint_msgs/GetDetailedNavigationInfo")