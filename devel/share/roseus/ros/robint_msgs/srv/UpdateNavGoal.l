;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::UpdateNavGoal)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'UpdateNavGoal (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::UPDATENAVGOAL")
  (make-package "ROBINT_MSGS::UPDATENAVGOAL"))
(unless (find-package "ROBINT_MSGS::UPDATENAVGOALREQUEST")
  (make-package "ROBINT_MSGS::UPDATENAVGOALREQUEST"))
(unless (find-package "ROBINT_MSGS::UPDATENAVGOALRESPONSE")
  (make-package "ROBINT_MSGS::UPDATENAVGOALRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass robint_msgs::UpdateNavGoalRequest
  :super ros::object
  :slots (_target_pose ))

(defmethod robint_msgs::UpdateNavGoalRequest
  (:init
   (&key
    ((:target_pose __target_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _target_pose __target_pose)
   self)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _target_pose
    (send _target_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _target_pose
       (send _target_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::UpdateNavGoalResponse
  :super ros::object
  :slots (_success ))

(defmethod robint_msgs::UpdateNavGoalResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::UpdateNavGoal
  :super ros::object
  :slots ())

(setf (get robint_msgs::UpdateNavGoal :md5sum-) "548e99f135dd6026231a1f7b41de0e99")
(setf (get robint_msgs::UpdateNavGoal :datatype-) "robint_msgs/UpdateNavGoal")
(setf (get robint_msgs::UpdateNavGoal :request) robint_msgs::UpdateNavGoalRequest)
(setf (get robint_msgs::UpdateNavGoal :response) robint_msgs::UpdateNavGoalResponse)

(defmethod robint_msgs::UpdateNavGoalRequest
  (:response () (instance robint_msgs::UpdateNavGoalResponse :init)))

(setf (get robint_msgs::UpdateNavGoalRequest :md5sum-) "548e99f135dd6026231a1f7b41de0e99")
(setf (get robint_msgs::UpdateNavGoalRequest :datatype-) "robint_msgs/UpdateNavGoalRequest")
(setf (get robint_msgs::UpdateNavGoalRequest :definition-)
      "geometry_msgs/PoseStamped target_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---
bool success
")

(setf (get robint_msgs::UpdateNavGoalResponse :md5sum-) "548e99f135dd6026231a1f7b41de0e99")
(setf (get robint_msgs::UpdateNavGoalResponse :datatype-) "robint_msgs/UpdateNavGoalResponse")
(setf (get robint_msgs::UpdateNavGoalResponse :definition-)
      "geometry_msgs/PoseStamped target_pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---
bool success
")



(provide :robint_msgs/UpdateNavGoal "548e99f135dd6026231a1f7b41de0e99")


