;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetMapList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetMapList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETMAPLIST")
  (make-package "ROBINT_MSGS::GETMAPLIST"))
(unless (find-package "ROBINT_MSGS::GETMAPLISTREQUEST")
  (make-package "ROBINT_MSGS::GETMAPLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::GETMAPLISTRESPONSE")
  (make-package "ROBINT_MSGS::GETMAPLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetMapListRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetMapListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robint_msgs::GetMapListResponse
  :super ros::object
  :slots (_map_list _success _message ))

(defmethod robint_msgs::GetMapListResponse
  (:init
   (&key
    ((:map_list __map_list) ())
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _map_list __map_list)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:map_list
   (&rest __map_list)
   (if (keywordp (car __map_list))
       (send* _map_list __map_list)
     (progn
       (if __map_list (setq _map_list (car __map_list)))
       _map_list)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/MapData[] _map_list
    (apply #'+ (send-all _map_list :serialization-length)) 4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/MapData[] _map_list
     (write-long (length _map_list) s)
     (dolist (elem _map_list)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/MapData[] _map_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_list (let (r) (dotimes (i n) (push (instance robint_msgs::MapData :init) r)) r))
     (dolist (elem- _map_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetMapList
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetMapList :md5sum-) "6549f3622deec1320be4bd6d70207b11")
(setf (get robint_msgs::GetMapList :datatype-) "robint_msgs/GetMapList")
(setf (get robint_msgs::GetMapList :request) robint_msgs::GetMapListRequest)
(setf (get robint_msgs::GetMapList :response) robint_msgs::GetMapListResponse)

(defmethod robint_msgs::GetMapListRequest
  (:response () (instance robint_msgs::GetMapListResponse :init)))

(setf (get robint_msgs::GetMapListRequest :md5sum-) "6549f3622deec1320be4bd6d70207b11")
(setf (get robint_msgs::GetMapListRequest :datatype-) "robint_msgs/GetMapListRequest")
(setf (get robint_msgs::GetMapListRequest :definition-)
      "---
MapData[] map_list
bool success
string message

================================================================================
MSG: robint_msgs/MapData
string name
string time
nav_msgs/OccupancyGrid data
================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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

(setf (get robint_msgs::GetMapListResponse :md5sum-) "6549f3622deec1320be4bd6d70207b11")
(setf (get robint_msgs::GetMapListResponse :datatype-) "robint_msgs/GetMapListResponse")
(setf (get robint_msgs::GetMapListResponse :definition-)
      "---
MapData[] map_list
bool success
string message

================================================================================
MSG: robint_msgs/MapData
string name
string time
nav_msgs/OccupancyGrid data
================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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



(provide :robint_msgs/GetMapList "6549f3622deec1320be4bd6d70207b11")


