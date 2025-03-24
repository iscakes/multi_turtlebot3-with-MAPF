;; Auto-generated. Do not edit!


(when (boundp 'mapf_msgs::Goal)
  (if (not (find-package "MAPF_MSGS"))
    (make-package "MAPF_MSGS"))
  (shadow 'Goal (find-package "MAPF_MSGS")))
(unless (find-package "MAPF_MSGS::GOAL")
  (make-package "MAPF_MSGS::GOAL"))

(in-package "ROS")
;;//! \htmlinclude Goal.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mapf_msgs::Goal
  :super ros::object
  :slots (_header _initial _goal ))

(defmethod mapf_msgs::Goal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:initial __initial) nil)
    ((:goal __goal) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _initial __initial)
   (setq _goal __goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:initial
   (&optional (__initial :null))
   (if (not (eq __initial :null)) (setq _initial __initial)) _initial)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _initial
    1
    ;; nav_msgs/Path _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _initial
       (if _initial (write-byte -1 s) (write-byte 0 s))
     ;; nav_msgs/Path _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _initial
     (setq _initial (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; nav_msgs/Path _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get mapf_msgs::Goal :md5sum-) "29fd8879a053d475a6e7671bc7c93b84")
(setf (get mapf_msgs::Goal :datatype-) "mapf_msgs/Goal")
(setf (get mapf_msgs::Goal :definition-)
      "std_msgs/Header header
bool initial
nav_msgs/Path goal
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
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :mapf_msgs/Goal "29fd8879a053d475a6e7671bc7c93b84")


