;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AddCurrentLocation)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AddCurrentLocation (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ADDCURRENTLOCATION")
  (make-package "ROBINT_MSGS::ADDCURRENTLOCATION"))
(unless (find-package "ROBINT_MSGS::ADDCURRENTLOCATIONREQUEST")
  (make-package "ROBINT_MSGS::ADDCURRENTLOCATIONREQUEST"))
(unless (find-package "ROBINT_MSGS::ADDCURRENTLOCATIONRESPONSE")
  (make-package "ROBINT_MSGS::ADDCURRENTLOCATIONRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::AddCurrentLocationRequest
  :super ros::object
  :slots (_map_name _type_name _location_name _map_uuid _group_uuid ))

(defmethod robint_msgs::AddCurrentLocationRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:type_name __type_name) "")
    ((:location_name __location_name) "")
    ((:map_uuid __map_uuid) "")
    ((:group_uuid __group_uuid) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _type_name (string __type_name))
   (setq _location_name (string __location_name))
   (setq _map_uuid (string __map_uuid))
   (setq _group_uuid (string __group_uuid))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:type_name
   (&optional __type_name)
   (if __type_name (setq _type_name __type_name)) _type_name)
  (:location_name
   (&optional __location_name)
   (if __location_name (setq _location_name __location_name)) _location_name)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:group_uuid
   (&optional __group_uuid)
   (if __group_uuid (setq _group_uuid __group_uuid)) _group_uuid)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _type_name
    4 (length _type_name)
    ;; string _location_name
    4 (length _location_name)
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; string _group_uuid
    4 (length _group_uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _type_name
       (write-long (length _type_name) s) (princ _type_name s)
     ;; string _location_name
       (write-long (length _location_name) s) (princ _location_name s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; string _group_uuid
       (write-long (length _group_uuid) s) (princ _group_uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::AddCurrentLocationResponse
  :super ros::object
  :slots (_location _success _error_code ))

(defmethod robint_msgs::AddCurrentLocationResponse
  (:init
   (&key
    ((:location __location) (instance robint_msgs::Location :init))
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _location __location)
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/Location _location
    (send _location :serialization-length)
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/Location _location
       (send _location :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/Location _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::AddCurrentLocation
  :super ros::object
  :slots ())

(setf (get robint_msgs::AddCurrentLocation :md5sum-) "b06bd95ad79c8912392a1b4469764813")
(setf (get robint_msgs::AddCurrentLocation :datatype-) "robint_msgs/AddCurrentLocation")
(setf (get robint_msgs::AddCurrentLocation :request) robint_msgs::AddCurrentLocationRequest)
(setf (get robint_msgs::AddCurrentLocation :response) robint_msgs::AddCurrentLocationResponse)

(defmethod robint_msgs::AddCurrentLocationRequest
  (:response () (instance robint_msgs::AddCurrentLocationResponse :init)))

(setf (get robint_msgs::AddCurrentLocationRequest :md5sum-) "b06bd95ad79c8912392a1b4469764813")
(setf (get robint_msgs::AddCurrentLocationRequest :datatype-) "robint_msgs/AddCurrentLocationRequest")
(setf (get robint_msgs::AddCurrentLocationRequest :definition-)
      "string map_name
string type_name
string location_name
string map_uuid
string group_uuid
---
Location location
bool success
uint8 error_code

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

(setf (get robint_msgs::AddCurrentLocationResponse :md5sum-) "b06bd95ad79c8912392a1b4469764813")
(setf (get robint_msgs::AddCurrentLocationResponse :datatype-) "robint_msgs/AddCurrentLocationResponse")
(setf (get robint_msgs::AddCurrentLocationResponse :definition-)
      "string map_name
string type_name
string location_name
string map_uuid
string group_uuid
---
Location location
bool success
uint8 error_code

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



(provide :robint_msgs/AddCurrentLocation "b06bd95ad79c8912392a1b4469764813")


