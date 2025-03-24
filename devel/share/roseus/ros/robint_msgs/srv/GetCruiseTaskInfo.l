;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetCruiseTaskInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetCruiseTaskInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCRUISETASKINFO")
  (make-package "ROBINT_MSGS::GETCRUISETASKINFO"))
(unless (find-package "ROBINT_MSGS::GETCRUISETASKINFOREQUEST")
  (make-package "ROBINT_MSGS::GETCRUISETASKINFOREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCRUISETASKINFORESPONSE")
  (make-package "ROBINT_MSGS::GETCRUISETASKINFORESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetCruiseTaskInfoRequest
  :super ros::object
  :slots (_task_uuid _task_name _start_location_uuid _end_location_uuid ))

(defmethod robint_msgs::GetCruiseTaskInfoRequest
  (:init
   (&key
    ((:task_uuid __task_uuid) "")
    ((:task_name __task_name) "")
    ((:start_location_uuid __start_location_uuid) "")
    ((:end_location_uuid __end_location_uuid) "")
    )
   (send-super :init)
   (setq _task_uuid (string __task_uuid))
   (setq _task_name (string __task_name))
   (setq _start_location_uuid (string __start_location_uuid))
   (setq _end_location_uuid (string __end_location_uuid))
   self)
  (:task_uuid
   (&optional __task_uuid)
   (if __task_uuid (setq _task_uuid __task_uuid)) _task_uuid)
  (:task_name
   (&optional __task_name)
   (if __task_name (setq _task_name __task_name)) _task_name)
  (:start_location_uuid
   (&optional __start_location_uuid)
   (if __start_location_uuid (setq _start_location_uuid __start_location_uuid)) _start_location_uuid)
  (:end_location_uuid
   (&optional __end_location_uuid)
   (if __end_location_uuid (setq _end_location_uuid __end_location_uuid)) _end_location_uuid)
  (:serialization-length
   ()
   (+
    ;; string _task_uuid
    4 (length _task_uuid)
    ;; string _task_name
    4 (length _task_name)
    ;; string _start_location_uuid
    4 (length _start_location_uuid)
    ;; string _end_location_uuid
    4 (length _end_location_uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task_uuid
       (write-long (length _task_uuid) s) (princ _task_uuid s)
     ;; string _task_name
       (write-long (length _task_name) s) (princ _task_name s)
     ;; string _start_location_uuid
       (write-long (length _start_location_uuid) s) (princ _start_location_uuid s)
     ;; string _end_location_uuid
       (write-long (length _end_location_uuid) s) (princ _end_location_uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _task_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _start_location_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_location_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_location_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_location_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetCruiseTaskInfoResponse
  :super ros::object
  :slots (_task_info _success _error_code ))

(defmethod robint_msgs::GetCruiseTaskInfoResponse
  (:init
   (&key
    ((:task_info __task_info) (instance robint_msgs::CruiseTaskInfo :init))
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
    ;; robint_msgs/CruiseTaskInfo _task_info
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
     ;; robint_msgs/CruiseTaskInfo _task_info
       (send _task_info :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/CruiseTaskInfo _task_info
     (send _task_info :deserialize buf ptr-) (incf ptr- (send _task_info :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetCruiseTaskInfo
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetCruiseTaskInfo :md5sum-) "30e01ca2aae78308577b217c8f03f041")
(setf (get robint_msgs::GetCruiseTaskInfo :datatype-) "robint_msgs/GetCruiseTaskInfo")
(setf (get robint_msgs::GetCruiseTaskInfo :request) robint_msgs::GetCruiseTaskInfoRequest)
(setf (get robint_msgs::GetCruiseTaskInfo :response) robint_msgs::GetCruiseTaskInfoResponse)

(defmethod robint_msgs::GetCruiseTaskInfoRequest
  (:response () (instance robint_msgs::GetCruiseTaskInfoResponse :init)))

(setf (get robint_msgs::GetCruiseTaskInfoRequest :md5sum-) "30e01ca2aae78308577b217c8f03f041")
(setf (get robint_msgs::GetCruiseTaskInfoRequest :datatype-) "robint_msgs/GetCruiseTaskInfoRequest")
(setf (get robint_msgs::GetCruiseTaskInfoRequest :definition-)
      "string task_uuid
string task_name
string start_location_uuid
string end_location_uuid
---
CruiseTaskInfo task_info
bool success
uint8 error_code

================================================================================
MSG: robint_msgs/CruiseTaskInfo
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

(setf (get robint_msgs::GetCruiseTaskInfoResponse :md5sum-) "30e01ca2aae78308577b217c8f03f041")
(setf (get robint_msgs::GetCruiseTaskInfoResponse :datatype-) "robint_msgs/GetCruiseTaskInfoResponse")
(setf (get robint_msgs::GetCruiseTaskInfoResponse :definition-)
      "string task_uuid
string task_name
string start_location_uuid
string end_location_uuid
---
CruiseTaskInfo task_info
bool success
uint8 error_code

================================================================================
MSG: robint_msgs/CruiseTaskInfo
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



(provide :robint_msgs/GetCruiseTaskInfo "30e01ca2aae78308577b217c8f03f041")


