;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::JudgeIsolatedZone)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'JudgeIsolatedZone (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::JUDGEISOLATEDZONE")
  (make-package "ROBINT_MSGS::JUDGEISOLATEDZONE"))
(unless (find-package "ROBINT_MSGS::JUDGEISOLATEDZONEREQUEST")
  (make-package "ROBINT_MSGS::JUDGEISOLATEDZONEREQUEST"))
(unless (find-package "ROBINT_MSGS::JUDGEISOLATEDZONERESPONSE")
  (make-package "ROBINT_MSGS::JUDGEISOLATEDZONERESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::JUDGEISOLATEDZONEREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::JUDGEISOLATEDZONEREQUEST"))
(defconstant robint_msgs::JudgeIsolatedZoneRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::JUDGEISOLATEDZONEREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::JUDGEISOLATEDZONEREQUEST"))
(defconstant robint_msgs::JudgeIsolatedZoneRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::JUDGEISOLATEDZONEREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::JUDGEISOLATEDZONEREQUEST"))
(defconstant robint_msgs::JudgeIsolatedZoneRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::JUDGEISOLATEDZONEREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::JUDGEISOLATEDZONEREQUEST"))
(defconstant robint_msgs::JudgeIsolatedZoneRequest::*STOP* 3)

(defun robint_msgs::JudgeIsolatedZoneRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::JudgeIsolatedZoneRequest::*START*)
        ((= const 1) 'robint_msgs::JudgeIsolatedZoneRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::JudgeIsolatedZoneRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::JudgeIsolatedZoneRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::JudgeIsolatedZoneRequest
  :super ros::object
  :slots (_task_info _command ))

(defmethod robint_msgs::JudgeIsolatedZoneRequest
  (:init
   (&key
    ((:task_info __task_info) (instance robint_msgs::NavigationTaskInfo :init))
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _task_info __task_info)
   (setq _command (round __command))
   self)
  (:task_info
   (&rest __task_info)
   (if (keywordp (car __task_info))
       (send* _task_info __task_info)
     (progn
       (if __task_info (setq _task_info (car __task_info)))
       _task_info)))
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/NavigationTaskInfo _task_info
    (send _task_info :serialization-length)
    ;; uint8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/NavigationTaskInfo _task_info
       (send _task_info :serialize s)
     ;; uint8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/NavigationTaskInfo _task_info
     (send _task_info :deserialize buf ptr-) (incf ptr- (send _task_info :serialization-length))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::JudgeIsolatedZoneResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::JudgeIsolatedZoneResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::JudgeIsolatedZone
  :super ros::object
  :slots ())

(setf (get robint_msgs::JudgeIsolatedZone :md5sum-) "511ff24d4c9d29b2fb5f70e90296cf3d")
(setf (get robint_msgs::JudgeIsolatedZone :datatype-) "robint_msgs/JudgeIsolatedZone")
(setf (get robint_msgs::JudgeIsolatedZone :request) robint_msgs::JudgeIsolatedZoneRequest)
(setf (get robint_msgs::JudgeIsolatedZone :response) robint_msgs::JudgeIsolatedZoneResponse)

(defmethod robint_msgs::JudgeIsolatedZoneRequest
  (:response () (instance robint_msgs::JudgeIsolatedZoneResponse :init)))

(setf (get robint_msgs::JudgeIsolatedZoneRequest :md5sum-) "511ff24d4c9d29b2fb5f70e90296cf3d")
(setf (get robint_msgs::JudgeIsolatedZoneRequest :datatype-) "robint_msgs/JudgeIsolatedZoneRequest")
(setf (get robint_msgs::JudgeIsolatedZoneRequest :definition-)
      "NavigationTaskInfo task_info
uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3

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
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::JudgeIsolatedZoneResponse :md5sum-) "511ff24d4c9d29b2fb5f70e90296cf3d")
(setf (get robint_msgs::JudgeIsolatedZoneResponse :datatype-) "robint_msgs/JudgeIsolatedZoneResponse")
(setf (get robint_msgs::JudgeIsolatedZoneResponse :definition-)
      "NavigationTaskInfo task_info
uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3

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
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/JudgeIsolatedZone "511ff24d4c9d29b2fb5f70e90296cf3d")


