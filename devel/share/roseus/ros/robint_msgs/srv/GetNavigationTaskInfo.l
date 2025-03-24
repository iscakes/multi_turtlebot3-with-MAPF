;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetNavigationTaskInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetNavigationTaskInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETNAVIGATIONTASKINFO")
  (make-package "ROBINT_MSGS::GETNAVIGATIONTASKINFO"))
(unless (find-package "ROBINT_MSGS::GETNAVIGATIONTASKINFOREQUEST")
  (make-package "ROBINT_MSGS::GETNAVIGATIONTASKINFOREQUEST"))
(unless (find-package "ROBINT_MSGS::GETNAVIGATIONTASKINFORESPONSE")
  (make-package "ROBINT_MSGS::GETNAVIGATIONTASKINFORESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass robint_msgs::GetNavigationTaskInfoRequest
  :super ros::object
  :slots (_target_loc_uuid _target_pose ))

(defmethod robint_msgs::GetNavigationTaskInfoRequest
  (:init
   (&key
    ((:target_loc_uuid __target_loc_uuid) "")
    ((:target_pose __target_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _target_loc_uuid (string __target_loc_uuid))
   (setq _target_pose __target_pose)
   self)
  (:target_loc_uuid
   (&optional __target_loc_uuid)
   (if __target_loc_uuid (setq _target_loc_uuid __target_loc_uuid)) _target_loc_uuid)
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
    ;; string _target_loc_uuid
    4 (length _target_loc_uuid)
    ;; geometry_msgs/Pose _target_pose
    (send _target_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_loc_uuid
       (write-long (length _target_loc_uuid) s) (princ _target_loc_uuid s)
     ;; geometry_msgs/Pose _target_pose
       (send _target_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::GetNavigationTaskInfoResponse
  :super ros::object
  :slots (_task_info _success _error_code ))

(defmethod robint_msgs::GetNavigationTaskInfoResponse
  (:init
   (&key
    ((:task_info __task_info) (instance robint_msgs::NavigationTaskInfo :init))
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _task_info __task_info)
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:task_info
   (&rest __task_info)
   (if (keywordp (car __task_info))
       (send* _task_info __task_info)
     (progn
       (if __task_info (setq _task_info (car __task_info)))
       _task_info)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/NavigationTaskInfo _task_info
    (send _task_info :serialization-length)
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/NavigationTaskInfo _task_info
       (send _task_info :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/NavigationTaskInfo _task_info
     (send _task_info :deserialize buf ptr-) (incf ptr- (send _task_info :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetNavigationTaskInfo
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetNavigationTaskInfo :md5sum-) "a25a07781fce6ba03ac72f05d14c575a")
(setf (get robint_msgs::GetNavigationTaskInfo :datatype-) "robint_msgs/GetNavigationTaskInfo")
(setf (get robint_msgs::GetNavigationTaskInfo :request) robint_msgs::GetNavigationTaskInfoRequest)
(setf (get robint_msgs::GetNavigationTaskInfo :response) robint_msgs::GetNavigationTaskInfoResponse)

(defmethod robint_msgs::GetNavigationTaskInfoRequest
  (:response () (instance robint_msgs::GetNavigationTaskInfoResponse :init)))

(setf (get robint_msgs::GetNavigationTaskInfoRequest :md5sum-) "a25a07781fce6ba03ac72f05d14c575a")
(setf (get robint_msgs::GetNavigationTaskInfoRequest :datatype-) "robint_msgs/GetNavigationTaskInfoRequest")
(setf (get robint_msgs::GetNavigationTaskInfoRequest :definition-)
      "string target_loc_uuid
geometry_msgs/Pose target_pose

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
NavigationTaskInfo task_info
bool success
uint8 error_code

================================================================================
MSG: robint_msgs/NavigationTaskInfo
string current_map_uuid
string elevator_building_uuid
string current_floor_id
string target_map_uuid
string target_floor_id
string target_loc_uuid
string target_loc_group_uuid
string enter_elevator_loc_uuid
string current_elevator_interior_loc_uuid
string target_elevator_interior_loc_uuid
string elevator_wait_loc_uuid
string current_exit_elevator_loc_uuid
string target_exit_elevator_loc_uuid
geometry_msgs/PoseStamped dock_anchor_pose
GateInfo[] current_floor_gates
GateInfo[] target_floor_gates
IsolatedZone[] current_floor_isolated_zones
IsolatedZone[] target_floor_isolated_zones
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
MSG: robint_msgs/GateInfo
string gate_uuid
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
MSG: robint_msgs/IsolatedZone
Zone zone
IsolatedWait[] wait_points
string next_task
================================================================================
MSG: robint_msgs/Zone
string uuid
string name
string map_uuid
string group_uuid
string type
geometry_msgs/Point[] points
================================================================================
MSG: robint_msgs/IsolatedWait
geometry_msgs/Pose pose
string uuid
")

(setf (get robint_msgs::GetNavigationTaskInfoResponse :md5sum-) "a25a07781fce6ba03ac72f05d14c575a")
(setf (get robint_msgs::GetNavigationTaskInfoResponse :datatype-) "robint_msgs/GetNavigationTaskInfoResponse")
(setf (get robint_msgs::GetNavigationTaskInfoResponse :definition-)
      "string target_loc_uuid
geometry_msgs/Pose target_pose

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
NavigationTaskInfo task_info
bool success
uint8 error_code

================================================================================
MSG: robint_msgs/NavigationTaskInfo
string current_map_uuid
string elevator_building_uuid
string current_floor_id
string target_map_uuid
string target_floor_id
string target_loc_uuid
string target_loc_group_uuid
string enter_elevator_loc_uuid
string current_elevator_interior_loc_uuid
string target_elevator_interior_loc_uuid
string elevator_wait_loc_uuid
string current_exit_elevator_loc_uuid
string target_exit_elevator_loc_uuid
geometry_msgs/PoseStamped dock_anchor_pose
GateInfo[] current_floor_gates
GateInfo[] target_floor_gates
IsolatedZone[] current_floor_isolated_zones
IsolatedZone[] target_floor_isolated_zones
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
MSG: robint_msgs/GateInfo
string gate_uuid
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
MSG: robint_msgs/IsolatedZone
Zone zone
IsolatedWait[] wait_points
string next_task
================================================================================
MSG: robint_msgs/Zone
string uuid
string name
string map_uuid
string group_uuid
string type
geometry_msgs/Point[] points
================================================================================
MSG: robint_msgs/IsolatedWait
geometry_msgs/Pose pose
string uuid
")



(provide :robint_msgs/GetNavigationTaskInfo "a25a07781fce6ba03ac72f05d14c575a")


