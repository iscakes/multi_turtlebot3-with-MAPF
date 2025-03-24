;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CruiseTaskInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CruiseTaskInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CRUISETASKINFO")
  (make-package "ROBINT_MSGS::CRUISETASKINFO"))

(in-package "ROS")
;;//! \htmlinclude CruiseTaskInfo.msg.html


(defclass robint_msgs::CruiseTaskInfo
  :super ros::object
  :slots (_location_list ))

(defmethod robint_msgs::CruiseTaskInfo
  (:init
   (&key
    ((:location_list __location_list) ())
    )
   (send-super :init)
   (setq _location_list __location_list)
   self)
  (:location_list
   (&rest __location_list)
   (if (keywordp (car __location_list))
       (send* _location_list __location_list)
     (progn
       (if __location_list (setq _location_list (car __location_list)))
       _location_list)))
  (:serialization-length
   ()
   (+
    ;; robint_msgs/Location[] _location_list
    (apply #'+ (send-all _location_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/Location[] _location_list
     (write-long (length _location_list) s)
     (dolist (elem _location_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/Location[] _location_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _location_list (let (r) (dotimes (i n) (push (instance robint_msgs::Location :init) r)) r))
     (dolist (elem- _location_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::CruiseTaskInfo :md5sum-) "72393ead47cec0f081a219fe207ac740")
(setf (get robint_msgs::CruiseTaskInfo :datatype-) "robint_msgs/CruiseTaskInfo")
(setf (get robint_msgs::CruiseTaskInfo :definition-)
      "Location[] location_list

================================================================================
MSG: robint_msgs/Location
time timestamp
string map_name
string map_uuid
string location_uuid
string type_name
string group_uuid
string location_name
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

")



(provide :robint_msgs/CruiseTaskInfo "72393ead47cec0f081a219fe207ac740")


