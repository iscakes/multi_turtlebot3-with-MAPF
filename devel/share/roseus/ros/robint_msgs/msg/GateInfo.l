;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GateInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GateInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GATEINFO")
  (make-package "ROBINT_MSGS::GATEINFO"))

(in-package "ROS")
;;//! \htmlinclude GateInfo.msg.html


(defclass robint_msgs::GateInfo
  :super ros::object
  :slots (_gate_uuid _gate_name _enter_loc _exit_loc ))

(defmethod robint_msgs::GateInfo
  (:init
   (&key
    ((:gate_uuid __gate_uuid) "")
    ((:gate_name __gate_name) "")
    ((:enter_loc __enter_loc) (instance robint_msgs::Location :init))
    ((:exit_loc __exit_loc) (instance robint_msgs::Location :init))
    )
   (send-super :init)
   (setq _gate_uuid (string __gate_uuid))
   (setq _gate_name (string __gate_name))
   (setq _enter_loc __enter_loc)
   (setq _exit_loc __exit_loc)
   self)
  (:gate_uuid
   (&optional __gate_uuid)
   (if __gate_uuid (setq _gate_uuid __gate_uuid)) _gate_uuid)
  (:gate_name
   (&optional __gate_name)
   (if __gate_name (setq _gate_name __gate_name)) _gate_name)
  (:enter_loc
   (&rest __enter_loc)
   (if (keywordp (car __enter_loc))
       (send* _enter_loc __enter_loc)
     (progn
       (if __enter_loc (setq _enter_loc (car __enter_loc)))
       _enter_loc)))
  (:exit_loc
   (&rest __exit_loc)
   (if (keywordp (car __exit_loc))
       (send* _exit_loc __exit_loc)
     (progn
       (if __exit_loc (setq _exit_loc (car __exit_loc)))
       _exit_loc)))
  (:serialization-length
   ()
   (+
    ;; string _gate_uuid
    4 (length _gate_uuid)
    ;; string _gate_name
    4 (length _gate_name)
    ;; robint_msgs/Location _enter_loc
    (send _enter_loc :serialization-length)
    ;; robint_msgs/Location _exit_loc
    (send _exit_loc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gate_uuid
       (write-long (length _gate_uuid) s) (princ _gate_uuid s)
     ;; string _gate_name
       (write-long (length _gate_name) s) (princ _gate_name s)
     ;; robint_msgs/Location _enter_loc
       (send _enter_loc :serialize s)
     ;; robint_msgs/Location _exit_loc
       (send _exit_loc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gate_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gate_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gate_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gate_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robint_msgs/Location _enter_loc
     (send _enter_loc :deserialize buf ptr-) (incf ptr- (send _enter_loc :serialization-length))
   ;; robint_msgs/Location _exit_loc
     (send _exit_loc :deserialize buf ptr-) (incf ptr- (send _exit_loc :serialization-length))
   ;;
   self)
  )

(setf (get robint_msgs::GateInfo :md5sum-) "9f859c70d9c22112208cc2c6f33723b1")
(setf (get robint_msgs::GateInfo :datatype-) "robint_msgs/GateInfo")
(setf (get robint_msgs::GateInfo :definition-)
      "string gate_uuid
string gate_name
Location enter_loc
Location exit_loc
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



(provide :robint_msgs/GateInfo "9f859c70d9c22112208cc2c6f33723b1")


