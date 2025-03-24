;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ReviseLocation)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ReviseLocation (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::REVISELOCATION")
  (make-package "ROBINT_MSGS::REVISELOCATION"))
(unless (find-package "ROBINT_MSGS::REVISELOCATIONREQUEST")
  (make-package "ROBINT_MSGS::REVISELOCATIONREQUEST"))
(unless (find-package "ROBINT_MSGS::REVISELOCATIONRESPONSE")
  (make-package "ROBINT_MSGS::REVISELOCATIONRESPONSE"))

(in-package "ROS")





(intern "*NAME*" (find-package "ROBINT_MSGS::REVISELOCATIONREQUEST"))
(shadow '*NAME* (find-package "ROBINT_MSGS::REVISELOCATIONREQUEST"))
(defconstant robint_msgs::ReviseLocationRequest::*NAME* 0)
(intern "*MAP*" (find-package "ROBINT_MSGS::REVISELOCATIONREQUEST"))
(shadow '*MAP* (find-package "ROBINT_MSGS::REVISELOCATIONREQUEST"))
(defconstant robint_msgs::ReviseLocationRequest::*MAP* 1)
(intern "*TYPE*" (find-package "ROBINT_MSGS::REVISELOCATIONREQUEST"))
(shadow '*TYPE* (find-package "ROBINT_MSGS::REVISELOCATIONREQUEST"))
(defconstant robint_msgs::ReviseLocationRequest::*TYPE* 2)
(intern "*POSE*" (find-package "ROBINT_MSGS::REVISELOCATIONREQUEST"))
(shadow '*POSE* (find-package "ROBINT_MSGS::REVISELOCATIONREQUEST"))
(defconstant robint_msgs::ReviseLocationRequest::*POSE* 3)

(defun robint_msgs::ReviseLocationRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::ReviseLocationRequest::*NAME*)
        ((= const 1) 'robint_msgs::ReviseLocationRequest::*MAP*)
        ((= const 2) 'robint_msgs::ReviseLocationRequest::*TYPE*)
        ((= const 3) 'robint_msgs::ReviseLocationRequest::*POSE*)
        (t nil)))

(defclass robint_msgs::ReviseLocationRequest
  :super ros::object
  :slots (_map_name _original_location_name _revise_type _location ))

(defmethod robint_msgs::ReviseLocationRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:original_location_name __original_location_name) "")
    ((:revise_type __revise_type) 0)
    ((:location __location) (instance robint_msgs::Location :init))
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _original_location_name (string __original_location_name))
   (setq _revise_type (round __revise_type))
   (setq _location __location)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:original_location_name
   (&optional __original_location_name)
   (if __original_location_name (setq _original_location_name __original_location_name)) _original_location_name)
  (:revise_type
   (&optional __revise_type)
   (if __revise_type (setq _revise_type __revise_type)) _revise_type)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _original_location_name
    4 (length _original_location_name)
    ;; uint8 _revise_type
    1
    ;; robint_msgs/Location _location
    (send _location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _original_location_name
       (write-long (length _original_location_name) s) (princ _original_location_name s)
     ;; uint8 _revise_type
       (write-byte _revise_type s)
     ;; robint_msgs/Location _location
       (send _location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _original_location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _original_location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _revise_type
     (setq _revise_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; robint_msgs/Location _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::ReviseLocationResponse
  :super ros::object
  :slots (_success ))

(defmethod robint_msgs::ReviseLocationResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::ReviseLocation
  :super ros::object
  :slots ())

(setf (get robint_msgs::ReviseLocation :md5sum-) "0627acabb367151c8cf033760d2d57ba")
(setf (get robint_msgs::ReviseLocation :datatype-) "robint_msgs/ReviseLocation")
(setf (get robint_msgs::ReviseLocation :request) robint_msgs::ReviseLocationRequest)
(setf (get robint_msgs::ReviseLocation :response) robint_msgs::ReviseLocationResponse)

(defmethod robint_msgs::ReviseLocationRequest
  (:response () (instance robint_msgs::ReviseLocationResponse :init)))

(setf (get robint_msgs::ReviseLocationRequest :md5sum-) "0627acabb367151c8cf033760d2d57ba")
(setf (get robint_msgs::ReviseLocationRequest :datatype-) "robint_msgs/ReviseLocationRequest")
(setf (get robint_msgs::ReviseLocationRequest :definition-)
      "string map_name
string original_location_name
uint8 NAME=0
uint8 MAP=1
uint8 TYPE=2
uint8 POSE=3
uint8 revise_type
Location location

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
---
bool success

")

(setf (get robint_msgs::ReviseLocationResponse :md5sum-) "0627acabb367151c8cf033760d2d57ba")
(setf (get robint_msgs::ReviseLocationResponse :datatype-) "robint_msgs/ReviseLocationResponse")
(setf (get robint_msgs::ReviseLocationResponse :definition-)
      "string map_name
string original_location_name
uint8 NAME=0
uint8 MAP=1
uint8 TYPE=2
uint8 POSE=3
uint8 revise_type
Location location

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
---
bool success

")



(provide :robint_msgs/ReviseLocation "0627acabb367151c8cf033760d2d57ba")


