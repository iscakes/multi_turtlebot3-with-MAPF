;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RobotIsolatedZoneList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RobotIsolatedZoneList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ROBOTISOLATEDZONELIST")
  (make-package "ROBINT_MSGS::ROBOTISOLATEDZONELIST"))

(in-package "ROS")
;;//! \htmlinclude RobotIsolatedZoneList.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::RobotIsolatedZoneList
  :super ros::object
  :slots (_robot_isolated_zone_list _self_isolated_zone_uuid _robot_pose ))

(defmethod robint_msgs::RobotIsolatedZoneList
  (:init
   (&key
    ((:robot_isolated_zone_list __robot_isolated_zone_list) ())
    ((:self_isolated_zone_uuid __self_isolated_zone_uuid) "")
    ((:robot_pose __robot_pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _robot_isolated_zone_list __robot_isolated_zone_list)
   (setq _self_isolated_zone_uuid (string __self_isolated_zone_uuid))
   (setq _robot_pose __robot_pose)
   self)
  (:robot_isolated_zone_list
   (&rest __robot_isolated_zone_list)
   (if (keywordp (car __robot_isolated_zone_list))
       (send* _robot_isolated_zone_list __robot_isolated_zone_list)
     (progn
       (if __robot_isolated_zone_list (setq _robot_isolated_zone_list (car __robot_isolated_zone_list)))
       _robot_isolated_zone_list)))
  (:self_isolated_zone_uuid
   (&optional __self_isolated_zone_uuid)
   (if __self_isolated_zone_uuid (setq _self_isolated_zone_uuid __self_isolated_zone_uuid)) _self_isolated_zone_uuid)
  (:robot_pose
   (&rest __robot_pose)
   (if (keywordp (car __robot_pose))
       (send* _robot_pose __robot_pose)
     (progn
       (if __robot_pose (setq _robot_pose (car __robot_pose)))
       _robot_pose)))
  (:serialization-length
   ()
   (+
    ;; robint_msgs/RobotIsolatedZone[] _robot_isolated_zone_list
    (apply #'+ (send-all _robot_isolated_zone_list :serialization-length)) 4
    ;; string _self_isolated_zone_uuid
    4 (length _self_isolated_zone_uuid)
    ;; geometry_msgs/Pose2D _robot_pose
    (send _robot_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/RobotIsolatedZone[] _robot_isolated_zone_list
     (write-long (length _robot_isolated_zone_list) s)
     (dolist (elem _robot_isolated_zone_list)
       (send elem :serialize s)
       )
     ;; string _self_isolated_zone_uuid
       (write-long (length _self_isolated_zone_uuid) s) (princ _self_isolated_zone_uuid s)
     ;; geometry_msgs/Pose2D _robot_pose
       (send _robot_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/RobotIsolatedZone[] _robot_isolated_zone_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_isolated_zone_list (let (r) (dotimes (i n) (push (instance robint_msgs::RobotIsolatedZone :init) r)) r))
     (dolist (elem- _robot_isolated_zone_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _self_isolated_zone_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _self_isolated_zone_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _robot_pose
     (send _robot_pose :deserialize buf ptr-) (incf ptr- (send _robot_pose :serialization-length))
   ;;
   self)
  )

(setf (get robint_msgs::RobotIsolatedZoneList :md5sum-) "9d0afd21c4c4da4af1d82820d14e63e6")
(setf (get robint_msgs::RobotIsolatedZoneList :datatype-) "robint_msgs/RobotIsolatedZoneList")
(setf (get robint_msgs::RobotIsolatedZoneList :definition-)
      "RobotIsolatedZone[] robot_isolated_zone_list
string self_isolated_zone_uuid
geometry_msgs/Pose2D robot_pose
================================================================================
MSG: robint_msgs/RobotIsolatedZone
string zone_uuid
string[] robot_list
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

")



(provide :robint_msgs/RobotIsolatedZoneList "9d0afd21c4c4da4af1d82820d14e63e6")


