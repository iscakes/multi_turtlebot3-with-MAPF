; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude SearchContourGoal-request.msg.html

(cl:defclass <SearchContourGoal-request> (roslisp-msg-protocol:ros-message)
  ((contour
    :reader contour
    :initarg :contour
    :type robint_msgs-msg:PathWithPoint
    :initform (cl:make-instance 'robint_msgs-msg:PathWithPoint)))
)

(cl:defclass SearchContourGoal-request (<SearchContourGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SearchContourGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SearchContourGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<SearchContourGoal-request> is deprecated: use robint_msgs-srv:SearchContourGoal-request instead.")))

(cl:ensure-generic-function 'contour-val :lambda-list '(m))
(cl:defmethod contour-val ((m <SearchContourGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:contour-val is deprecated.  Use robint_msgs-srv:contour instead.")
  (contour m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SearchContourGoal-request>) ostream)
  "Serializes a message object of type '<SearchContourGoal-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'contour) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SearchContourGoal-request>) istream)
  "Deserializes a message object of type '<SearchContourGoal-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'contour) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SearchContourGoal-request>)))
  "Returns string type for a service object of type '<SearchContourGoal-request>"
  "robint_msgs/SearchContourGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchContourGoal-request)))
  "Returns string type for a service object of type 'SearchContourGoal-request"
  "robint_msgs/SearchContourGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SearchContourGoal-request>)))
  "Returns md5sum for a message object of type '<SearchContourGoal-request>"
  "03eee4fe4b2d2cff2b33a97e7e028c10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SearchContourGoal-request)))
  "Returns md5sum for a message object of type 'SearchContourGoal-request"
  "03eee4fe4b2d2cff2b33a97e7e028c10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SearchContourGoal-request>)))
  "Returns full string definition for message of type '<SearchContourGoal-request>"
  (cl:format cl:nil "PathWithPoint contour~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SearchContourGoal-request)))
  "Returns full string definition for message of type 'SearchContourGoal-request"
  (cl:format cl:nil "PathWithPoint contour~%~%================================================================================~%MSG: robint_msgs/PathWithPoint~%uint32 id~%string type~%geometry_msgs/Point[] points~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SearchContourGoal-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'contour))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SearchContourGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SearchContourGoal-request
    (cl:cons ':contour (contour msg))
))
;//! \htmlinclude SearchContourGoal-response.msg.html

(cl:defclass <SearchContourGoal-response> (roslisp-msg-protocol:ros-message)
  ((goal_point
    :reader goal_point
    :initarg :goal_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SearchContourGoal-response (<SearchContourGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SearchContourGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SearchContourGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<SearchContourGoal-response> is deprecated: use robint_msgs-srv:SearchContourGoal-response instead.")))

(cl:ensure-generic-function 'goal_point-val :lambda-list '(m))
(cl:defmethod goal_point-val ((m <SearchContourGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:goal_point-val is deprecated.  Use robint_msgs-srv:goal_point instead.")
  (goal_point m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SearchContourGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <SearchContourGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:error_code-val is deprecated.  Use robint_msgs-srv:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SearchContourGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:message-val is deprecated.  Use robint_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SearchContourGoal-response>) ostream)
  "Serializes a message object of type '<SearchContourGoal-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_point) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SearchContourGoal-response>) istream)
  "Deserializes a message object of type '<SearchContourGoal-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_point) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SearchContourGoal-response>)))
  "Returns string type for a service object of type '<SearchContourGoal-response>"
  "robint_msgs/SearchContourGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchContourGoal-response)))
  "Returns string type for a service object of type 'SearchContourGoal-response"
  "robint_msgs/SearchContourGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SearchContourGoal-response>)))
  "Returns md5sum for a message object of type '<SearchContourGoal-response>"
  "03eee4fe4b2d2cff2b33a97e7e028c10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SearchContourGoal-response)))
  "Returns md5sum for a message object of type 'SearchContourGoal-response"
  "03eee4fe4b2d2cff2b33a97e7e028c10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SearchContourGoal-response>)))
  "Returns full string definition for message of type '<SearchContourGoal-response>"
  (cl:format cl:nil "geometry_msgs/Point goal_point~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SearchContourGoal-response)))
  "Returns full string definition for message of type 'SearchContourGoal-response"
  (cl:format cl:nil "geometry_msgs/Point goal_point~%bool success~%uint8 error_code~%string message~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SearchContourGoal-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_point))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SearchContourGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SearchContourGoal-response
    (cl:cons ':goal_point (goal_point msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SearchContourGoal)))
  'SearchContourGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SearchContourGoal)))
  'SearchContourGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchContourGoal)))
  "Returns string type for a service object of type '<SearchContourGoal>"
  "robint_msgs/SearchContourGoal")