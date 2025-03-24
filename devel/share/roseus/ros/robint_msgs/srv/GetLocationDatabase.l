;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetLocationDatabase)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetLocationDatabase (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETLOCATIONDATABASE")
  (make-package "ROBINT_MSGS::GETLOCATIONDATABASE"))
(unless (find-package "ROBINT_MSGS::GETLOCATIONDATABASEREQUEST")
  (make-package "ROBINT_MSGS::GETLOCATIONDATABASEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETLOCATIONDATABASERESPONSE")
  (make-package "ROBINT_MSGS::GETLOCATIONDATABASERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetLocationDatabaseRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetLocationDatabaseRequest
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

(defclass robint_msgs::GetLocationDatabaseResponse
  :super ros::object
  :slots (_database _success ))

(defmethod robint_msgs::GetLocationDatabaseResponse
  (:init
   (&key
    ((:database __database) ())
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _database __database)
   (setq _success __success)
   self)
  (:database
   (&rest __database)
   (if (keywordp (car __database))
       (send* _database __database)
     (progn
       (if __database (setq _database (car __database)))
       _database)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/LocationList[] _database
    (apply #'+ (send-all _database :serialization-length)) 4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/LocationList[] _database
     (write-long (length _database) s)
     (dolist (elem _database)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/LocationList[] _database
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _database (let (r) (dotimes (i n) (push (instance robint_msgs::LocationList :init) r)) r))
     (dolist (elem- _database)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetLocationDatabase
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetLocationDatabase :md5sum-) "a8ac951fad735d422e3f6b85eb9240ed")
(setf (get robint_msgs::GetLocationDatabase :datatype-) "robint_msgs/GetLocationDatabase")
(setf (get robint_msgs::GetLocationDatabase :request) robint_msgs::GetLocationDatabaseRequest)
(setf (get robint_msgs::GetLocationDatabase :response) robint_msgs::GetLocationDatabaseResponse)

(defmethod robint_msgs::GetLocationDatabaseRequest
  (:response () (instance robint_msgs::GetLocationDatabaseResponse :init)))

(setf (get robint_msgs::GetLocationDatabaseRequest :md5sum-) "a8ac951fad735d422e3f6b85eb9240ed")
(setf (get robint_msgs::GetLocationDatabaseRequest :datatype-) "robint_msgs/GetLocationDatabaseRequest")
(setf (get robint_msgs::GetLocationDatabaseRequest :definition-)
      "---
LocationList[] database
bool success

================================================================================
MSG: robint_msgs/LocationList
string map_name
string map_uuid
Location[] location_list
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

(setf (get robint_msgs::GetLocationDatabaseResponse :md5sum-) "a8ac951fad735d422e3f6b85eb9240ed")
(setf (get robint_msgs::GetLocationDatabaseResponse :datatype-) "robint_msgs/GetLocationDatabaseResponse")
(setf (get robint_msgs::GetLocationDatabaseResponse :definition-)
      "---
LocationList[] database
bool success

================================================================================
MSG: robint_msgs/LocationList
string map_name
string map_uuid
Location[] location_list
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



(provide :robint_msgs/GetLocationDatabase "a8ac951fad735d422e3f6b85eb9240ed")


