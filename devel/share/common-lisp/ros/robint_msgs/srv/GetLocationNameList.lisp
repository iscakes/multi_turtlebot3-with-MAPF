; Auto-generated. Do not edit!


(cl:in-package robint_msgs-srv)


;//! \htmlinclude GetLocationNameList-request.msg.html

(cl:defclass <GetLocationNameList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLocationNameList-request (<GetLocationNameList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocationNameList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocationNameList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetLocationNameList-request> is deprecated: use robint_msgs-srv:GetLocationNameList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocationNameList-request>) ostream)
  "Serializes a message object of type '<GetLocationNameList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocationNameList-request>) istream)
  "Deserializes a message object of type '<GetLocationNameList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocationNameList-request>)))
  "Returns string type for a service object of type '<GetLocationNameList-request>"
  "robint_msgs/GetLocationNameListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocationNameList-request)))
  "Returns string type for a service object of type 'GetLocationNameList-request"
  "robint_msgs/GetLocationNameListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocationNameList-request>)))
  "Returns md5sum for a message object of type '<GetLocationNameList-request>"
  "bb2a629baa6b7acd53d72d954cb25dd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocationNameList-request)))
  "Returns md5sum for a message object of type 'GetLocationNameList-request"
  "bb2a629baa6b7acd53d72d954cb25dd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocationNameList-request>)))
  "Returns full string definition for message of type '<GetLocationNameList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocationNameList-request)))
  "Returns full string definition for message of type 'GetLocationNameList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocationNameList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocationNameList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocationNameList-request
))
;//! \htmlinclude GetLocationNameList-response.msg.html

(cl:defclass <GetLocationNameList-response> (roslisp-msg-protocol:ros-message)
  ((name_list
    :reader name_list
    :initarg :name_list
    :type (cl:vector robint_msgs-msg:LocationNameList)
   :initform (cl:make-array 0 :element-type 'robint_msgs-msg:LocationNameList :initial-element (cl:make-instance 'robint_msgs-msg:LocationNameList)))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetLocationNameList-response (<GetLocationNameList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLocationNameList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLocationNameList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-srv:<GetLocationNameList-response> is deprecated: use robint_msgs-srv:GetLocationNameList-response instead.")))

(cl:ensure-generic-function 'name_list-val :lambda-list '(m))
(cl:defmethod name_list-val ((m <GetLocationNameList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:name_list-val is deprecated.  Use robint_msgs-srv:name_list instead.")
  (name_list m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetLocationNameList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robint_msgs-srv:success-val is deprecated.  Use robint_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLocationNameList-response>) ostream)
  "Serializes a message object of type '<GetLocationNameList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'name_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'name_list))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLocationNameList-response>) istream)
  "Deserializes a message object of type '<GetLocationNameList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'name_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'name_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robint_msgs-msg:LocationNameList))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLocationNameList-response>)))
  "Returns string type for a service object of type '<GetLocationNameList-response>"
  "robint_msgs/GetLocationNameListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocationNameList-response)))
  "Returns string type for a service object of type 'GetLocationNameList-response"
  "robint_msgs/GetLocationNameListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLocationNameList-response>)))
  "Returns md5sum for a message object of type '<GetLocationNameList-response>"
  "bb2a629baa6b7acd53d72d954cb25dd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLocationNameList-response)))
  "Returns md5sum for a message object of type 'GetLocationNameList-response"
  "bb2a629baa6b7acd53d72d954cb25dd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLocationNameList-response>)))
  "Returns full string definition for message of type '<GetLocationNameList-response>"
  (cl:format cl:nil "LocationNameList[] name_list~%bool success~%~%================================================================================~%MSG: robint_msgs/LocationNameList~%string map_name~%string[] name_list~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLocationNameList-response)))
  "Returns full string definition for message of type 'GetLocationNameList-response"
  (cl:format cl:nil "LocationNameList[] name_list~%bool success~%~%================================================================================~%MSG: robint_msgs/LocationNameList~%string map_name~%string[] name_list~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLocationNameList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'name_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLocationNameList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLocationNameList-response
    (cl:cons ':name_list (name_list msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLocationNameList)))
  'GetLocationNameList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLocationNameList)))
  'GetLocationNameList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLocationNameList)))
  "Returns string type for a service object of type '<GetLocationNameList>"
  "robint_msgs/GetLocationNameList")