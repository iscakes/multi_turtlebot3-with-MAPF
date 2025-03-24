;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetMapMetaData)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetMapMetaData (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETMAPMETADATA")
  (make-package "ROBINT_MSGS::GETMAPMETADATA"))
(unless (find-package "ROBINT_MSGS::GETMAPMETADATAREQUEST")
  (make-package "ROBINT_MSGS::GETMAPMETADATAREQUEST"))
(unless (find-package "ROBINT_MSGS::GETMAPMETADATARESPONSE")
  (make-package "ROBINT_MSGS::GETMAPMETADATARESPONSE"))

(in-package "ROS")



(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass robint_msgs::GetMapMetaDataRequest
  :super ros::object
  :slots (_map_name ))

(defmethod robint_msgs::GetMapMetaDataRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetMapMetaDataResponse
  :super ros::object
  :slots (_info _success _message ))

(defmethod robint_msgs::GetMapMetaDataResponse
  (:init
   (&key
    ((:info __info) (instance nav_msgs::MapMetaData :init))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _info __info)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; nav_msgs/MapMetaData _info
    (send _info :serialization-length)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nav_msgs/MapMetaData _info
       (send _info :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nav_msgs/MapMetaData _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetMapMetaData
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetMapMetaData :md5sum-) "4b57def2d4ddfc8e6f492e3341a1f1ac")
(setf (get robint_msgs::GetMapMetaData :datatype-) "robint_msgs/GetMapMetaData")
(setf (get robint_msgs::GetMapMetaData :request) robint_msgs::GetMapMetaDataRequest)
(setf (get robint_msgs::GetMapMetaData :response) robint_msgs::GetMapMetaDataResponse)

(defmethod robint_msgs::GetMapMetaDataRequest
  (:response () (instance robint_msgs::GetMapMetaDataResponse :init)))

(setf (get robint_msgs::GetMapMetaDataRequest :md5sum-) "4b57def2d4ddfc8e6f492e3341a1f1ac")
(setf (get robint_msgs::GetMapMetaDataRequest :datatype-) "robint_msgs/GetMapMetaDataRequest")
(setf (get robint_msgs::GetMapMetaDataRequest :definition-)
      "string map_name
---
nav_msgs/MapMetaData info
bool success
string message

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

(setf (get robint_msgs::GetMapMetaDataResponse :md5sum-) "4b57def2d4ddfc8e6f492e3341a1f1ac")
(setf (get robint_msgs::GetMapMetaDataResponse :datatype-) "robint_msgs/GetMapMetaDataResponse")
(setf (get robint_msgs::GetMapMetaDataResponse :definition-)
      "string map_name
---
nav_msgs/MapMetaData info
bool success
string message

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



(provide :robint_msgs/GetMapMetaData "4b57def2d4ddfc8e6f492e3341a1f1ac")


