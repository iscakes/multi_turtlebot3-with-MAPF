;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SyncStatus)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SyncStatus (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SYNCSTATUS")
  (make-package "ROBINT_MSGS::SYNCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SyncStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robint_msgs::SyncStatus
  :super ros::object
  :slots (_header _self_uuid _sync_status _sync_info_array ))

(defmethod robint_msgs::SyncStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:self_uuid __self_uuid) "")
    ((:sync_status __sync_status) "")
    ((:sync_info_array __sync_info_array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _self_uuid (string __self_uuid))
   (setq _sync_status (string __sync_status))
   (setq _sync_info_array __sync_info_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:self_uuid
   (&optional __self_uuid)
   (if __self_uuid (setq _self_uuid __self_uuid)) _self_uuid)
  (:sync_status
   (&optional __sync_status)
   (if __sync_status (setq _sync_status __sync_status)) _sync_status)
  (:sync_info_array
   (&rest __sync_info_array)
   (if (keywordp (car __sync_info_array))
       (send* _sync_info_array __sync_info_array)
     (progn
       (if __sync_info_array (setq _sync_info_array (car __sync_info_array)))
       _sync_info_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _self_uuid
    4 (length _self_uuid)
    ;; string _sync_status
    4 (length _sync_status)
    ;; robint_msgs/SyncInfo[] _sync_info_array
    (apply #'+ (send-all _sync_info_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _self_uuid
       (write-long (length _self_uuid) s) (princ _self_uuid s)
     ;; string _sync_status
       (write-long (length _sync_status) s) (princ _sync_status s)
     ;; robint_msgs/SyncInfo[] _sync_info_array
     (write-long (length _sync_info_array) s)
     (dolist (elem _sync_info_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _self_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _self_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sync_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sync_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robint_msgs/SyncInfo[] _sync_info_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sync_info_array (let (r) (dotimes (i n) (push (instance robint_msgs::SyncInfo :init) r)) r))
     (dolist (elem- _sync_info_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::SyncStatus :md5sum-) "7d4fbf71e40475e522fea10a2de53cc3")
(setf (get robint_msgs::SyncStatus :datatype-) "robint_msgs/SyncStatus")
(setf (get robint_msgs::SyncStatus :definition-)
      "Header header
# 本机uuid
string self_uuid

# 同步状态：opened,opening,closed,closing
string sync_status

SyncInfo[] sync_info_array



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
MSG: robint_msgs/SyncInfo
Header header
string timestamp_string
string robot_uuid
string robot_index

# Absorbed info
string map_name
string map_uuid
geometry_msgs/Pose2D global_map_pose
float32 linear_velocity
float32 angular_velocity





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



(provide :robint_msgs/SyncStatus "7d4fbf71e40475e522fea10a2de53cc3")


