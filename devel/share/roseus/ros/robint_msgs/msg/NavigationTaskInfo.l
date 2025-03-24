;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::NavigationTaskInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'NavigationTaskInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::NAVIGATIONTASKINFO")
  (make-package "ROBINT_MSGS::NAVIGATIONTASKINFO"))

(in-package "ROS")
;;//! \htmlinclude NavigationTaskInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::NavigationTaskInfo
  :super ros::object
  :slots (_current_map_uuid _elevator_building_uuid _current_floor_id _target_map_uuid _target_floor_id _target_loc_uuid _target_loc_group_uuid _enter_elevator_loc_uuid _current_elevator_interior_loc_uuid _target_elevator_interior_loc_uuid _elevator_wait_loc_uuid _current_exit_elevator_loc_uuid _target_exit_elevator_loc_uuid _dock_anchor_pose _current_floor_gates _target_floor_gates _current_floor_isolated_zones _target_floor_isolated_zones ))

(defmethod robint_msgs::NavigationTaskInfo
  (:init
   (&key
    ((:current_map_uuid __current_map_uuid) "")
    ((:elevator_building_uuid __elevator_building_uuid) "")
    ((:current_floor_id __current_floor_id) "")
    ((:target_map_uuid __target_map_uuid) "")
    ((:target_floor_id __target_floor_id) "")
    ((:target_loc_uuid __target_loc_uuid) "")
    ((:target_loc_group_uuid __target_loc_group_uuid) "")
    ((:enter_elevator_loc_uuid __enter_elevator_loc_uuid) "")
    ((:current_elevator_interior_loc_uuid __current_elevator_interior_loc_uuid) "")
    ((:target_elevator_interior_loc_uuid __target_elevator_interior_loc_uuid) "")
    ((:elevator_wait_loc_uuid __elevator_wait_loc_uuid) "")
    ((:current_exit_elevator_loc_uuid __current_exit_elevator_loc_uuid) "")
    ((:target_exit_elevator_loc_uuid __target_exit_elevator_loc_uuid) "")
    ((:dock_anchor_pose __dock_anchor_pose) (instance geometry_msgs::PoseStamped :init))
    ((:current_floor_gates __current_floor_gates) ())
    ((:target_floor_gates __target_floor_gates) ())
    ((:current_floor_isolated_zones __current_floor_isolated_zones) ())
    ((:target_floor_isolated_zones __target_floor_isolated_zones) ())
    )
   (send-super :init)
   (setq _current_map_uuid (string __current_map_uuid))
   (setq _elevator_building_uuid (string __elevator_building_uuid))
   (setq _current_floor_id (string __current_floor_id))
   (setq _target_map_uuid (string __target_map_uuid))
   (setq _target_floor_id (string __target_floor_id))
   (setq _target_loc_uuid (string __target_loc_uuid))
   (setq _target_loc_group_uuid (string __target_loc_group_uuid))
   (setq _enter_elevator_loc_uuid (string __enter_elevator_loc_uuid))
   (setq _current_elevator_interior_loc_uuid (string __current_elevator_interior_loc_uuid))
   (setq _target_elevator_interior_loc_uuid (string __target_elevator_interior_loc_uuid))
   (setq _elevator_wait_loc_uuid (string __elevator_wait_loc_uuid))
   (setq _current_exit_elevator_loc_uuid (string __current_exit_elevator_loc_uuid))
   (setq _target_exit_elevator_loc_uuid (string __target_exit_elevator_loc_uuid))
   (setq _dock_anchor_pose __dock_anchor_pose)
   (setq _current_floor_gates __current_floor_gates)
   (setq _target_floor_gates __target_floor_gates)
   (setq _current_floor_isolated_zones __current_floor_isolated_zones)
   (setq _target_floor_isolated_zones __target_floor_isolated_zones)
   self)
  (:current_map_uuid
   (&optional __current_map_uuid)
   (if __current_map_uuid (setq _current_map_uuid __current_map_uuid)) _current_map_uuid)
  (:elevator_building_uuid
   (&optional __elevator_building_uuid)
   (if __elevator_building_uuid (setq _elevator_building_uuid __elevator_building_uuid)) _elevator_building_uuid)
  (:current_floor_id
   (&optional __current_floor_id)
   (if __current_floor_id (setq _current_floor_id __current_floor_id)) _current_floor_id)
  (:target_map_uuid
   (&optional __target_map_uuid)
   (if __target_map_uuid (setq _target_map_uuid __target_map_uuid)) _target_map_uuid)
  (:target_floor_id
   (&optional __target_floor_id)
   (if __target_floor_id (setq _target_floor_id __target_floor_id)) _target_floor_id)
  (:target_loc_uuid
   (&optional __target_loc_uuid)
   (if __target_loc_uuid (setq _target_loc_uuid __target_loc_uuid)) _target_loc_uuid)
  (:target_loc_group_uuid
   (&optional __target_loc_group_uuid)
   (if __target_loc_group_uuid (setq _target_loc_group_uuid __target_loc_group_uuid)) _target_loc_group_uuid)
  (:enter_elevator_loc_uuid
   (&optional __enter_elevator_loc_uuid)
   (if __enter_elevator_loc_uuid (setq _enter_elevator_loc_uuid __enter_elevator_loc_uuid)) _enter_elevator_loc_uuid)
  (:current_elevator_interior_loc_uuid
   (&optional __current_elevator_interior_loc_uuid)
   (if __current_elevator_interior_loc_uuid (setq _current_elevator_interior_loc_uuid __current_elevator_interior_loc_uuid)) _current_elevator_interior_loc_uuid)
  (:target_elevator_interior_loc_uuid
   (&optional __target_elevator_interior_loc_uuid)
   (if __target_elevator_interior_loc_uuid (setq _target_elevator_interior_loc_uuid __target_elevator_interior_loc_uuid)) _target_elevator_interior_loc_uuid)
  (:elevator_wait_loc_uuid
   (&optional __elevator_wait_loc_uuid)
   (if __elevator_wait_loc_uuid (setq _elevator_wait_loc_uuid __elevator_wait_loc_uuid)) _elevator_wait_loc_uuid)
  (:current_exit_elevator_loc_uuid
   (&optional __current_exit_elevator_loc_uuid)
   (if __current_exit_elevator_loc_uuid (setq _current_exit_elevator_loc_uuid __current_exit_elevator_loc_uuid)) _current_exit_elevator_loc_uuid)
  (:target_exit_elevator_loc_uuid
   (&optional __target_exit_elevator_loc_uuid)
   (if __target_exit_elevator_loc_uuid (setq _target_exit_elevator_loc_uuid __target_exit_elevator_loc_uuid)) _target_exit_elevator_loc_uuid)
  (:dock_anchor_pose
   (&rest __dock_anchor_pose)
   (if (keywordp (car __dock_anchor_pose))
       (send* _dock_anchor_pose __dock_anchor_pose)
     (progn
       (if __dock_anchor_pose (setq _dock_anchor_pose (car __dock_anchor_pose)))
       _dock_anchor_pose)))
  (:current_floor_gates
   (&rest __current_floor_gates)
   (if (keywordp (car __current_floor_gates))
       (send* _current_floor_gates __current_floor_gates)
     (progn
       (if __current_floor_gates (setq _current_floor_gates (car __current_floor_gates)))
       _current_floor_gates)))
  (:target_floor_gates
   (&rest __target_floor_gates)
   (if (keywordp (car __target_floor_gates))
       (send* _target_floor_gates __target_floor_gates)
     (progn
       (if __target_floor_gates (setq _target_floor_gates (car __target_floor_gates)))
       _target_floor_gates)))
  (:current_floor_isolated_zones
   (&rest __current_floor_isolated_zones)
   (if (keywordp (car __current_floor_isolated_zones))
       (send* _current_floor_isolated_zones __current_floor_isolated_zones)
     (progn
       (if __current_floor_isolated_zones (setq _current_floor_isolated_zones (car __current_floor_isolated_zones)))
       _current_floor_isolated_zones)))
  (:target_floor_isolated_zones
   (&rest __target_floor_isolated_zones)
   (if (keywordp (car __target_floor_isolated_zones))
       (send* _target_floor_isolated_zones __target_floor_isolated_zones)
     (progn
       (if __target_floor_isolated_zones (setq _target_floor_isolated_zones (car __target_floor_isolated_zones)))
       _target_floor_isolated_zones)))
  (:serialization-length
   ()
   (+
    ;; string _current_map_uuid
    4 (length _current_map_uuid)
    ;; string _elevator_building_uuid
    4 (length _elevator_building_uuid)
    ;; string _current_floor_id
    4 (length _current_floor_id)
    ;; string _target_map_uuid
    4 (length _target_map_uuid)
    ;; string _target_floor_id
    4 (length _target_floor_id)
    ;; string _target_loc_uuid
    4 (length _target_loc_uuid)
    ;; string _target_loc_group_uuid
    4 (length _target_loc_group_uuid)
    ;; string _enter_elevator_loc_uuid
    4 (length _enter_elevator_loc_uuid)
    ;; string _current_elevator_interior_loc_uuid
    4 (length _current_elevator_interior_loc_uuid)
    ;; string _target_elevator_interior_loc_uuid
    4 (length _target_elevator_interior_loc_uuid)
    ;; string _elevator_wait_loc_uuid
    4 (length _elevator_wait_loc_uuid)
    ;; string _current_exit_elevator_loc_uuid
    4 (length _current_exit_elevator_loc_uuid)
    ;; string _target_exit_elevator_loc_uuid
    4 (length _target_exit_elevator_loc_uuid)
    ;; geometry_msgs/PoseStamped _dock_anchor_pose
    (send _dock_anchor_pose :serialization-length)
    ;; robint_msgs/GateInfo[] _current_floor_gates
    (apply #'+ (send-all _current_floor_gates :serialization-length)) 4
    ;; robint_msgs/GateInfo[] _target_floor_gates
    (apply #'+ (send-all _target_floor_gates :serialization-length)) 4
    ;; robint_msgs/IsolatedZone[] _current_floor_isolated_zones
    (apply #'+ (send-all _current_floor_isolated_zones :serialization-length)) 4
    ;; robint_msgs/IsolatedZone[] _target_floor_isolated_zones
    (apply #'+ (send-all _target_floor_isolated_zones :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _current_map_uuid
       (write-long (length _current_map_uuid) s) (princ _current_map_uuid s)
     ;; string _elevator_building_uuid
       (write-long (length _elevator_building_uuid) s) (princ _elevator_building_uuid s)
     ;; string _current_floor_id
       (write-long (length _current_floor_id) s) (princ _current_floor_id s)
     ;; string _target_map_uuid
       (write-long (length _target_map_uuid) s) (princ _target_map_uuid s)
     ;; string _target_floor_id
       (write-long (length _target_floor_id) s) (princ _target_floor_id s)
     ;; string _target_loc_uuid
       (write-long (length _target_loc_uuid) s) (princ _target_loc_uuid s)
     ;; string _target_loc_group_uuid
       (write-long (length _target_loc_group_uuid) s) (princ _target_loc_group_uuid s)
     ;; string _enter_elevator_loc_uuid
       (write-long (length _enter_elevator_loc_uuid) s) (princ _enter_elevator_loc_uuid s)
     ;; string _current_elevator_interior_loc_uuid
       (write-long (length _current_elevator_interior_loc_uuid) s) (princ _current_elevator_interior_loc_uuid s)
     ;; string _target_elevator_interior_loc_uuid
       (write-long (length _target_elevator_interior_loc_uuid) s) (princ _target_elevator_interior_loc_uuid s)
     ;; string _elevator_wait_loc_uuid
       (write-long (length _elevator_wait_loc_uuid) s) (princ _elevator_wait_loc_uuid s)
     ;; string _current_exit_elevator_loc_uuid
       (write-long (length _current_exit_elevator_loc_uuid) s) (princ _current_exit_elevator_loc_uuid s)
     ;; string _target_exit_elevator_loc_uuid
       (write-long (length _target_exit_elevator_loc_uuid) s) (princ _target_exit_elevator_loc_uuid s)
     ;; geometry_msgs/PoseStamped _dock_anchor_pose
       (send _dock_anchor_pose :serialize s)
     ;; robint_msgs/GateInfo[] _current_floor_gates
     (write-long (length _current_floor_gates) s)
     (dolist (elem _current_floor_gates)
       (send elem :serialize s)
       )
     ;; robint_msgs/GateInfo[] _target_floor_gates
     (write-long (length _target_floor_gates) s)
     (dolist (elem _target_floor_gates)
       (send elem :serialize s)
       )
     ;; robint_msgs/IsolatedZone[] _current_floor_isolated_zones
     (write-long (length _current_floor_isolated_zones) s)
     (dolist (elem _current_floor_isolated_zones)
       (send elem :serialize s)
       )
     ;; robint_msgs/IsolatedZone[] _target_floor_isolated_zones
     (write-long (length _target_floor_isolated_zones) s)
     (dolist (elem _target_floor_isolated_zones)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _current_map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _elevator_building_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _elevator_building_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_floor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_floor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_floor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_floor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_loc_group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_loc_group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _enter_elevator_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _enter_elevator_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_elevator_interior_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_elevator_interior_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_elevator_interior_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_elevator_interior_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _elevator_wait_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _elevator_wait_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_exit_elevator_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_exit_elevator_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_exit_elevator_loc_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_exit_elevator_loc_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _dock_anchor_pose
     (send _dock_anchor_pose :deserialize buf ptr-) (incf ptr- (send _dock_anchor_pose :serialization-length))
   ;; robint_msgs/GateInfo[] _current_floor_gates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_floor_gates (let (r) (dotimes (i n) (push (instance robint_msgs::GateInfo :init) r)) r))
     (dolist (elem- _current_floor_gates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robint_msgs/GateInfo[] _target_floor_gates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_floor_gates (let (r) (dotimes (i n) (push (instance robint_msgs::GateInfo :init) r)) r))
     (dolist (elem- _target_floor_gates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robint_msgs/IsolatedZone[] _current_floor_isolated_zones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_floor_isolated_zones (let (r) (dotimes (i n) (push (instance robint_msgs::IsolatedZone :init) r)) r))
     (dolist (elem- _current_floor_isolated_zones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robint_msgs/IsolatedZone[] _target_floor_isolated_zones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_floor_isolated_zones (let (r) (dotimes (i n) (push (instance robint_msgs::IsolatedZone :init) r)) r))
     (dolist (elem- _target_floor_isolated_zones)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::NavigationTaskInfo :md5sum-) "f44628125c7d26f45ef57fabf8e88cc4")
(setf (get robint_msgs::NavigationTaskInfo :datatype-) "robint_msgs/NavigationTaskInfo")
(setf (get robint_msgs::NavigationTaskInfo :definition-)
      "string current_map_uuid
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
bool direct
")



(provide :robint_msgs/NavigationTaskInfo "f44628125c7d26f45ef57fabf8e88cc4")


