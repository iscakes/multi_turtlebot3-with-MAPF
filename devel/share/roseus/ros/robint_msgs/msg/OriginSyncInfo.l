;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::OriginSyncInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'OriginSyncInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ORIGINSYNCINFO")
  (make-package "ROBINT_MSGS::ORIGINSYNCINFO"))

(in-package "ROS")
;;//! \htmlinclude OriginSyncInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robint_msgs::OriginSyncInfo
  :super ros::object
  :slots (_header _map_name _map_uuid _global_map_pose _linear_velocity _angular_velocity ))

(defmethod robint_msgs::OriginSyncInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:map_name __map_name) "")
    ((:map_uuid __map_uuid) "")
    ((:global_map_pose __global_map_pose) (instance geometry_msgs::Pose2D :init))
    ((:linear_velocity __linear_velocity) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _map_name (string __map_name))
   (setq _map_uuid (string __map_uuid))
   (setq _global_map_pose __global_map_pose)
   (setq _linear_velocity (float __linear_velocity))
   (setq _angular_velocity (float __angular_velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:global_map_pose
   (&rest __global_map_pose)
   (if (keywordp (car __global_map_pose))
       (send* _global_map_pose __global_map_pose)
     (progn
       (if __global_map_pose (setq _global_map_pose (car __global_map_pose)))
       _global_map_pose)))
  (:linear_velocity
   (&optional __linear_velocity)
   (if __linear_velocity (setq _linear_velocity __linear_velocity)) _linear_velocity)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _map_name
    4 (length _map_name)
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; geometry_msgs/Pose2D _global_map_pose
    (send _global_map_pose :serialization-length)
    ;; float32 _linear_velocity
    4
    ;; float32 _angular_velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; geometry_msgs/Pose2D _global_map_pose
       (send _global_map_pose :serialize s)
     ;; float32 _linear_velocity
       (sys::poke _linear_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _global_map_pose
     (send _global_map_pose :deserialize buf ptr-) (incf ptr- (send _global_map_pose :serialization-length))
   ;; float32 _linear_velocity
     (setq _linear_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robint_msgs::OriginSyncInfo :md5sum-) "98f327c80541d06d2cd2de5b79876683")
(setf (get robint_msgs::OriginSyncInfo :datatype-) "robint_msgs/OriginSyncInfo")
(setf (get robint_msgs::OriginSyncInfo :definition-)
      "Header header
string map_name
string map_uuid
geometry_msgs/Pose2D global_map_pose
float32 linear_velocity
float32 angular_velocity
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



(provide :robint_msgs/OriginSyncInfo "98f327c80541d06d2cd2de5b79876683")


