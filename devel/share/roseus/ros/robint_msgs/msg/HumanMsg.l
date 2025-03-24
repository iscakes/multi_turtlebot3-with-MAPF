;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::HumanMsg)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'HumanMsg (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::HUMANMSG")
  (make-package "ROBINT_MSGS::HUMANMSG"))

(in-package "ROS")
;;//! \htmlinclude HumanMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robint_msgs::HumanMsg
  :super ros::object
  :slots (_header _id _name _center_of_world _body_rect _face_rect _is_within_security_line ))

(defmethod robint_msgs::HumanMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) "")
    ((:name __name) "")
    ((:center_of_world __center_of_world) (instance geometry_msgs::Point32 :init))
    ((:body_rect __body_rect) (instance robint_msgs::RectWithConfidence :init))
    ((:face_rect __face_rect) (instance robint_msgs::RectWithConfidence :init))
    ((:is_within_security_line __is_within_security_line) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (string __id))
   (setq _name (string __name))
   (setq _center_of_world __center_of_world)
   (setq _body_rect __body_rect)
   (setq _face_rect __face_rect)
   (setq _is_within_security_line __is_within_security_line)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:center_of_world
   (&rest __center_of_world)
   (if (keywordp (car __center_of_world))
       (send* _center_of_world __center_of_world)
     (progn
       (if __center_of_world (setq _center_of_world (car __center_of_world)))
       _center_of_world)))
  (:body_rect
   (&rest __body_rect)
   (if (keywordp (car __body_rect))
       (send* _body_rect __body_rect)
     (progn
       (if __body_rect (setq _body_rect (car __body_rect)))
       _body_rect)))
  (:face_rect
   (&rest __face_rect)
   (if (keywordp (car __face_rect))
       (send* _face_rect __face_rect)
     (progn
       (if __face_rect (setq _face_rect (car __face_rect)))
       _face_rect)))
  (:is_within_security_line
   (&optional (__is_within_security_line :null))
   (if (not (eq __is_within_security_line :null)) (setq _is_within_security_line __is_within_security_line)) _is_within_security_line)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _id
    4 (length _id)
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Point32 _center_of_world
    (send _center_of_world :serialization-length)
    ;; robint_msgs/RectWithConfidence _body_rect
    (send _body_rect :serialization-length)
    ;; robint_msgs/RectWithConfidence _face_rect
    (send _face_rect :serialization-length)
    ;; bool _is_within_security_line
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Point32 _center_of_world
       (send _center_of_world :serialize s)
     ;; robint_msgs/RectWithConfidence _body_rect
       (send _body_rect :serialize s)
     ;; robint_msgs/RectWithConfidence _face_rect
       (send _face_rect :serialize s)
     ;; bool _is_within_security_line
       (if _is_within_security_line (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point32 _center_of_world
     (send _center_of_world :deserialize buf ptr-) (incf ptr- (send _center_of_world :serialization-length))
   ;; robint_msgs/RectWithConfidence _body_rect
     (send _body_rect :deserialize buf ptr-) (incf ptr- (send _body_rect :serialization-length))
   ;; robint_msgs/RectWithConfidence _face_rect
     (send _face_rect :deserialize buf ptr-) (incf ptr- (send _face_rect :serialization-length))
   ;; bool _is_within_security_line
     (setq _is_within_security_line (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::HumanMsg :md5sum-) "aa008a33f57c2fa0495cfd1ccd404ddc")
(setf (get robint_msgs::HumanMsg :datatype-) "robint_msgs/HumanMsg")
(setf (get robint_msgs::HumanMsg :definition-)
      "std_msgs/Header header
string id
string name
geometry_msgs/Point32 center_of_world
RectWithConfidence body_rect
RectWithConfidence face_rect
bool is_within_security_line

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: robint_msgs/RectWithConfidence
int32 x
int32 y
int32 width
int32 height
float32 confidence

")



(provide :robint_msgs/HumanMsg "aa008a33f57c2fa0495cfd1ccd404ddc")


