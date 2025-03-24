;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AddLocation)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AddLocation (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ADDLOCATION")
  (make-package "ROBINT_MSGS::ADDLOCATION"))
(unless (find-package "ROBINT_MSGS::ADDLOCATIONREQUEST")
  (make-package "ROBINT_MSGS::ADDLOCATIONREQUEST"))
(unless (find-package "ROBINT_MSGS::ADDLOCATIONRESPONSE")
  (make-package "ROBINT_MSGS::ADDLOCATIONRESPONSE"))

(in-package "ROS")





(intern "*WORLD*" (find-package "ROBINT_MSGS::ADDLOCATIONREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::ADDLOCATIONREQUEST"))
(defconstant robint_msgs::AddLocationRequest::*WORLD* 0)
(intern "*IMAGE*" (find-package "ROBINT_MSGS::ADDLOCATIONREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::ADDLOCATIONREQUEST"))
(defconstant robint_msgs::AddLocationRequest::*IMAGE* 1)

(defun robint_msgs::AddLocationRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::AddLocationRequest::*WORLD*)
        ((= const 1) 'robint_msgs::AddLocationRequest::*IMAGE*)
        (t nil)))

(defclass robint_msgs::AddLocationRequest
  :super ros::object
  :slots (_location_mode _location ))

(defmethod robint_msgs::AddLocationRequest
  (:init
   (&key
    ((:location_mode __location_mode) 0)
    ((:location __location) (instance robint_msgs::Location :init))
    )
   (send-super :init)
   (setq _location_mode (round __location_mode))
   (setq _location __location)
   self)
  (:location_mode
   (&optional __location_mode)
   (if __location_mode (setq _location_mode __location_mode)) _location_mode)
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
    ;; uint8 _location_mode
    1
    ;; robint_msgs/Location _location
    (send _location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _location_mode
       (write-byte _location_mode s)
     ;; robint_msgs/Location _location
       (send _location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _location_mode
     (setq _location_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; robint_msgs/Location _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::AddLocationResponse
  :super ros::object
  :slots (_success ))

(defmethod robint_msgs::AddLocationResponse
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

(defclass robint_msgs::AddLocation
  :super ros::object
  :slots ())

(setf (get robint_msgs::AddLocation :md5sum-) "e7bdfdb420d7c889969f8ee848aa57ec")
(setf (get robint_msgs::AddLocation :datatype-) "robint_msgs/AddLocation")
(setf (get robint_msgs::AddLocation :request) robint_msgs::AddLocationRequest)
(setf (get robint_msgs::AddLocation :response) robint_msgs::AddLocationResponse)

(defmethod robint_msgs::AddLocationRequest
  (:response () (instance robint_msgs::AddLocationResponse :init)))

(setf (get robint_msgs::AddLocationRequest :md5sum-) "e7bdfdb420d7c889969f8ee848aa57ec")
(setf (get robint_msgs::AddLocationRequest :datatype-) "robint_msgs/AddLocationRequest")
(setf (get robint_msgs::AddLocationRequest :definition-)
      "uint8 location_mode
uint8 WORLD=0
uint8 IMAGE=1
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

(setf (get robint_msgs::AddLocationResponse :md5sum-) "e7bdfdb420d7c889969f8ee848aa57ec")
(setf (get robint_msgs::AddLocationResponse :datatype-) "robint_msgs/AddLocationResponse")
(setf (get robint_msgs::AddLocationResponse :definition-)
      "uint8 location_mode
uint8 WORLD=0
uint8 IMAGE=1
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



(provide :robint_msgs/AddLocation "e7bdfdb420d7c889969f8ee848aa57ec")


