;; Auto-generated. Do not edit!


(when (boundp 'coverage_path_planner::GetPathInZone)
  (if (not (find-package "COVERAGE_PATH_PLANNER"))
    (make-package "COVERAGE_PATH_PLANNER"))
  (shadow 'GetPathInZone (find-package "COVERAGE_PATH_PLANNER")))
(unless (find-package "COVERAGE_PATH_PLANNER::GETPATHINZONE")
  (make-package "COVERAGE_PATH_PLANNER::GETPATHINZONE"))
(unless (find-package "COVERAGE_PATH_PLANNER::GETPATHINZONEREQUEST")
  (make-package "COVERAGE_PATH_PLANNER::GETPATHINZONEREQUEST"))
(unless (find-package "COVERAGE_PATH_PLANNER::GETPATHINZONERESPONSE")
  (make-package "COVERAGE_PATH_PLANNER::GETPATHINZONERESPONSE"))

(in-package "ROS")

(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass coverage_path_planner::GetPathInZoneRequest
  :super ros::object
  :slots (_zone _type ))

(defmethod coverage_path_planner::GetPathInZoneRequest
  (:init
   (&key
    ((:zone __zone) (instance nav_msgs::Path :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _zone __zone)
   (setq _type (round __type))
   self)
  (:zone
   (&rest __zone)
   (if (keywordp (car __zone))
       (send* _zone __zone)
     (progn
       (if __zone (setq _zone (car __zone)))
       _zone)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path _zone
    (send _zone :serialization-length)
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path _zone
       (send _zone :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path _zone
     (send _zone :deserialize buf ptr-) (incf ptr- (send _zone :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass coverage_path_planner::GetPathInZoneResponse
  :super ros::object
  :slots (_coverage_paths ))

(defmethod coverage_path_planner::GetPathInZoneResponse
  (:init
   (&key
    ((:coverage_paths __coverage_paths) ())
    )
   (send-super :init)
   (setq _coverage_paths __coverage_paths)
   self)
  (:coverage_paths
   (&rest __coverage_paths)
   (if (keywordp (car __coverage_paths))
       (send* _coverage_paths __coverage_paths)
     (progn
       (if __coverage_paths (setq _coverage_paths (car __coverage_paths)))
       _coverage_paths)))
  (:serialization-length
   ()
   (+
    ;; nav_msgs/Path[] _coverage_paths
    (apply #'+ (send-all _coverage_paths :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/Path[] _coverage_paths
     (write-long (length _coverage_paths) s)
     (dolist (elem _coverage_paths)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/Path[] _coverage_paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coverage_paths (let (r) (dotimes (i n) (push (instance nav_msgs::Path :init) r)) r))
     (dolist (elem- _coverage_paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass coverage_path_planner::GetPathInZone
  :super ros::object
  :slots ())

(setf (get coverage_path_planner::GetPathInZone :md5sum-) "a62f47b7218351dab297d7590620e91a")
(setf (get coverage_path_planner::GetPathInZone :datatype-) "coverage_path_planner/GetPathInZone")
(setf (get coverage_path_planner::GetPathInZone :request) coverage_path_planner::GetPathInZoneRequest)
(setf (get coverage_path_planner::GetPathInZone :response) coverage_path_planner::GetPathInZoneResponse)

(defmethod coverage_path_planner::GetPathInZoneRequest
  (:response () (instance coverage_path_planner::GetPathInZoneResponse :init)))

(setf (get coverage_path_planner::GetPathInZoneRequest :md5sum-) "a62f47b7218351dab297d7590620e91a")
(setf (get coverage_path_planner::GetPathInZoneRequest :datatype-) "coverage_path_planner/GetPathInZoneRequest")
(setf (get coverage_path_planner::GetPathInZoneRequest :definition-)
      "nav_msgs/Path zone
uint8 type # 0 - zigzag; 1 - backshaped

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
nav_msgs/Path[] coverage_paths


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

(setf (get coverage_path_planner::GetPathInZoneResponse :md5sum-) "a62f47b7218351dab297d7590620e91a")
(setf (get coverage_path_planner::GetPathInZoneResponse :datatype-) "coverage_path_planner/GetPathInZoneResponse")
(setf (get coverage_path_planner::GetPathInZoneResponse :definition-)
      "nav_msgs/Path zone
uint8 type # 0 - zigzag; 1 - backshaped

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
nav_msgs/Path[] coverage_paths


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :coverage_path_planner/GetPathInZone "a62f47b7218351dab297d7590620e91a")


