;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RobotState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RobotState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ROBOTSTATE")
  (make-package "ROBINT_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html


(defclass robint_msgs::RobotState
  :super ros::object
  :slots (_map_name _version_info _pose _stat_data _diagnostic_array ))

(defmethod robint_msgs::RobotState
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:version_info __version_info) (instance robint_msgs::RobotVersionInfo :init))
    ((:pose __pose) (instance robint_msgs::RobotPose :init))
    ((:stat_data __stat_data) (instance robint_msgs::RobotStatisticData :init))
    ((:diagnostic_array __diagnostic_array) ())
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _version_info __version_info)
   (setq _pose __pose)
   (setq _stat_data __stat_data)
   (setq _diagnostic_array __diagnostic_array)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:version_info
   (&rest __version_info)
   (if (keywordp (car __version_info))
       (send* _version_info __version_info)
     (progn
       (if __version_info (setq _version_info (car __version_info)))
       _version_info)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:stat_data
   (&rest __stat_data)
   (if (keywordp (car __stat_data))
       (send* _stat_data __stat_data)
     (progn
       (if __stat_data (setq _stat_data (car __stat_data)))
       _stat_data)))
  (:diagnostic_array
   (&rest __diagnostic_array)
   (if (keywordp (car __diagnostic_array))
       (send* _diagnostic_array __diagnostic_array)
     (progn
       (if __diagnostic_array (setq _diagnostic_array (car __diagnostic_array)))
       _diagnostic_array)))
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; robint_msgs/RobotVersionInfo _version_info
    (send _version_info :serialization-length)
    ;; robint_msgs/RobotPose _pose
    (send _pose :serialization-length)
    ;; robint_msgs/RobotStatisticData _stat_data
    (send _stat_data :serialization-length)
    ;; robint_msgs/StateDiagnostic[] _diagnostic_array
    (apply #'+ (send-all _diagnostic_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; robint_msgs/RobotVersionInfo _version_info
       (send _version_info :serialize s)
     ;; robint_msgs/RobotPose _pose
       (send _pose :serialize s)
     ;; robint_msgs/RobotStatisticData _stat_data
       (send _stat_data :serialize s)
     ;; robint_msgs/StateDiagnostic[] _diagnostic_array
     (write-long (length _diagnostic_array) s)
     (dolist (elem _diagnostic_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robint_msgs/RobotVersionInfo _version_info
     (send _version_info :deserialize buf ptr-) (incf ptr- (send _version_info :serialization-length))
   ;; robint_msgs/RobotPose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; robint_msgs/RobotStatisticData _stat_data
     (send _stat_data :deserialize buf ptr-) (incf ptr- (send _stat_data :serialization-length))
   ;; robint_msgs/StateDiagnostic[] _diagnostic_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _diagnostic_array (let (r) (dotimes (i n) (push (instance robint_msgs::StateDiagnostic :init) r)) r))
     (dolist (elem- _diagnostic_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::RobotState :md5sum-) "18f0497a45a77f9f7d5f4d7a5d6b1348")
(setf (get robint_msgs::RobotState :datatype-) "robint_msgs/RobotState")
(setf (get robint_msgs::RobotState :definition-)
      "string map_name  # floor_id
RobotVersionInfo version_info
RobotPose pose
RobotStatisticData stat_data
StateDiagnostic[] diagnostic_array
================================================================================
MSG: robint_msgs/RobotVersionInfo
string robot_id
string firmware_version
================================================================================
MSG: robint_msgs/RobotPose
geometry_msgs/Pose2D image_pose
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

================================================================================
MSG: robint_msgs/RobotStatisticData
uint64 travel_mileage
================================================================================
MSG: robint_msgs/StateDiagnostic
string hardware_name
bool is_ok
")



(provide :robint_msgs/RobotState "18f0497a45a77f9f7d5f4d7a5d6b1348")


