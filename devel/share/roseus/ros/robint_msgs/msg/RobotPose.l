;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RobotPose)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RobotPose (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ROBOTPOSE")
  (make-package "ROBINT_MSGS::ROBOTPOSE"))

(in-package "ROS")
;;//! \htmlinclude RobotPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::RobotPose
  :super ros::object
  :slots (_image_pose _pose ))

(defmethod robint_msgs::RobotPose
  (:init
   (&key
    ((:image_pose __image_pose) (instance geometry_msgs::Pose2D :init))
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _image_pose __image_pose)
   (setq _pose __pose)
   self)
  (:image_pose
   (&rest __image_pose)
   (if (keywordp (car __image_pose))
       (send* _image_pose __image_pose)
     (progn
       (if __image_pose (setq _image_pose (car __image_pose)))
       _image_pose)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _image_pose
    (send _image_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _image_pose
       (send _image_pose :serialize s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _image_pose
     (send _image_pose :deserialize buf ptr-) (incf ptr- (send _image_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get robint_msgs::RobotPose :md5sum-) "15be6b3dbfc1ac2640f1d4d96ade3f04")
(setf (get robint_msgs::RobotPose :datatype-) "robint_msgs/RobotPose")
(setf (get robint_msgs::RobotPose :definition-)
      "geometry_msgs/Pose2D image_pose
geometry_msgs/PoseStamped pose
================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

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

")



(provide :robint_msgs/RobotPose "15be6b3dbfc1ac2640f1d4d96ade3f04")


