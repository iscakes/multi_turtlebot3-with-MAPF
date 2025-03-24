;; Auto-generated. Do not edit!


(when (boundp 'mapf_msgs::SinglePlan)
  (if (not (find-package "MAPF_MSGS"))
    (make-package "MAPF_MSGS"))
  (shadow 'SinglePlan (find-package "MAPF_MSGS")))
(unless (find-package "MAPF_MSGS::SINGLEPLAN")
  (make-package "MAPF_MSGS::SINGLEPLAN"))

(in-package "ROS")
;;//! \htmlinclude SinglePlan.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass mapf_msgs::SinglePlan
  :super ros::object
  :slots (_time_step _plan ))

(defmethod mapf_msgs::SinglePlan
  (:init
   (&key
    ((:time_step __time_step) (make-array 0 :initial-element 0 :element-type :integer))
    ((:plan __plan) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _time_step __time_step)
   (setq _plan __plan)
   self)
  (:time_step
   (&optional __time_step)
   (if __time_step (setq _time_step __time_step)) _time_step)
  (:plan
   (&rest __plan)
   (if (keywordp (car __plan))
       (send* _plan __plan)
     (progn
       (if __plan (setq _plan (car __plan)))
       _plan)))
  (:serialization-length
   ()
   (+
    ;; int32[] _time_step
    (* 4    (length _time_step)) 4
    ;; nav_msgs/Path _plan
    (send _plan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _time_step
     (write-long (length _time_step) s)
     (dotimes (i (length _time_step))
       (write-long (elt _time_step i) s)
       )
     ;; nav_msgs/Path _plan
       (send _plan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _time_step
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_step (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _time_step i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; nav_msgs/Path _plan
     (send _plan :deserialize buf ptr-) (incf ptr- (send _plan :serialization-length))
   ;;
   self)
  )

(setf (get mapf_msgs::SinglePlan :md5sum-) "bee8d3f33f362001a6964a4d3ecc61ee")
(setf (get mapf_msgs::SinglePlan :datatype-) "mapf_msgs/SinglePlan")
(setf (get mapf_msgs::SinglePlan :definition-)
      "int32[] time_step
nav_msgs/Path plan
================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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



(provide :mapf_msgs/SinglePlan "bee8d3f33f362001a6964a4d3ecc61ee")


