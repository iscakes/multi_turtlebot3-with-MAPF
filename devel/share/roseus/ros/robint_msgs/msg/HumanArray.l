;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::HumanArray)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'HumanArray (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::HUMANARRAY")
  (make-package "ROBINT_MSGS::HUMANARRAY"))

(in-package "ROS")
;;//! \htmlinclude HumanArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robint_msgs::HumanArray
  :super ros::object
  :slots (_header _count _data ))

(defmethod robint_msgs::HumanArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:count __count) 0)
    ((:data __data) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _count (round __count))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _count
    4
    ;; robint_msgs/HumanMsg[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _count
       (write-long _count s)
     ;; robint_msgs/HumanMsg[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; robint_msgs/HumanMsg[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance robint_msgs::HumanMsg :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::HumanArray :md5sum-) "4ecbd4b1f17e43e2dd75758b2bc5517d")
(setf (get robint_msgs::HumanArray :datatype-) "robint_msgs/HumanArray")
(setf (get robint_msgs::HumanArray :definition-)
      "std_msgs/Header header
int32 count
HumanMsg[] data

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
MSG: robint_msgs/HumanMsg
std_msgs/Header header
string id
string name
geometry_msgs/Point32 center_of_world
RectWithConfidence body_rect
RectWithConfidence face_rect
bool is_within_security_line

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



(provide :robint_msgs/HumanArray "4ecbd4b1f17e43e2dd75758b2bc5517d")


