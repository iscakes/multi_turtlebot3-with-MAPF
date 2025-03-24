;; Auto-generated. Do not edit!


(when (boundp 'mapf_msgs::GlobalPlan)
  (if (not (find-package "MAPF_MSGS"))
    (make-package "MAPF_MSGS"))
  (shadow 'GlobalPlan (find-package "MAPF_MSGS")))
(unless (find-package "MAPF_MSGS::GLOBALPLAN")
  (make-package "MAPF_MSGS::GLOBALPLAN"))

(in-package "ROS")
;;//! \htmlinclude GlobalPlan.msg.html


(defclass mapf_msgs::GlobalPlan
  :super ros::object
  :slots (_makespan _global_plan ))

(defmethod mapf_msgs::GlobalPlan
  (:init
   (&key
    ((:makespan __makespan) 0)
    ((:global_plan __global_plan) ())
    )
   (send-super :init)
   (setq _makespan (round __makespan))
   (setq _global_plan __global_plan)
   self)
  (:makespan
   (&optional __makespan)
   (if __makespan (setq _makespan __makespan)) _makespan)
  (:global_plan
   (&rest __global_plan)
   (if (keywordp (car __global_plan))
       (send* _global_plan __global_plan)
     (progn
       (if __global_plan (setq _global_plan (car __global_plan)))
       _global_plan)))
  (:serialization-length
   ()
   (+
    ;; int32 _makespan
    4
    ;; mapf_msgs/SinglePlan[] _global_plan
    (apply #'+ (send-all _global_plan :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _makespan
       (write-long _makespan s)
     ;; mapf_msgs/SinglePlan[] _global_plan
     (write-long (length _global_plan) s)
     (dolist (elem _global_plan)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _makespan
     (setq _makespan (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mapf_msgs/SinglePlan[] _global_plan
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _global_plan (let (r) (dotimes (i n) (push (instance mapf_msgs::SinglePlan :init) r)) r))
     (dolist (elem- _global_plan)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mapf_msgs::GlobalPlan :md5sum-) "c88ab17b5e8e0853d09dd659498bc3eb")
(setf (get mapf_msgs::GlobalPlan :datatype-) "mapf_msgs/GlobalPlan")
(setf (get mapf_msgs::GlobalPlan :definition-)
      "int32 makespan
mapf_msgs/SinglePlan[] global_plan
================================================================================
MSG: mapf_msgs/SinglePlan
int32[] time_step
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



(provide :mapf_msgs/GlobalPlan "c88ab17b5e8e0853d09dd659498bc3eb")


