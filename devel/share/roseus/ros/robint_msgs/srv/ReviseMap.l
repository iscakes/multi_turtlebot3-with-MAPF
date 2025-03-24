;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ReviseMap)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ReviseMap (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::REVISEMAP")
  (make-package "ROBINT_MSGS::REVISEMAP"))
(unless (find-package "ROBINT_MSGS::REVISEMAPREQUEST")
  (make-package "ROBINT_MSGS::REVISEMAPREQUEST"))
(unless (find-package "ROBINT_MSGS::REVISEMAPRESPONSE")
  (make-package "ROBINT_MSGS::REVISEMAPRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::ReviseMapRequest
  :super ros::object
  :slots (_map_name _map ))

(defmethod robint_msgs::ReviseMapRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:map __map) (instance robint_msgs::MapData :init))
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _map __map)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; robint_msgs/MapData _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; robint_msgs/MapData _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robint_msgs/MapData _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::ReviseMapResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robint_msgs::ReviseMapResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
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
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::ReviseMap
  :super ros::object
  :slots ())

(setf (get robint_msgs::ReviseMap :md5sum-) "61d4f94e645500014ea40345198ee9cb")
(setf (get robint_msgs::ReviseMap :datatype-) "robint_msgs/ReviseMap")
(setf (get robint_msgs::ReviseMap :request) robint_msgs::ReviseMapRequest)
(setf (get robint_msgs::ReviseMap :response) robint_msgs::ReviseMapResponse)

(defmethod robint_msgs::ReviseMapRequest
  (:response () (instance robint_msgs::ReviseMapResponse :init)))

(setf (get robint_msgs::ReviseMapRequest :md5sum-) "61d4f94e645500014ea40345198ee9cb")
(setf (get robint_msgs::ReviseMapRequest :datatype-) "robint_msgs/ReviseMapRequest")
(setf (get robint_msgs::ReviseMapRequest :definition-)
      "string map_name
MapData map

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
---
bool success
string message

")

(setf (get robint_msgs::ReviseMapResponse :md5sum-) "61d4f94e645500014ea40345198ee9cb")
(setf (get robint_msgs::ReviseMapResponse :datatype-) "robint_msgs/ReviseMapResponse")
(setf (get robint_msgs::ReviseMapResponse :definition-)
      "string map_name
MapData map

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
---
bool success
string message

")



(provide :robint_msgs/ReviseMap "61d4f94e645500014ea40345198ee9cb")


