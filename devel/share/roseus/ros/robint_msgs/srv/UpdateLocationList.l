;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::UpdateLocationList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'UpdateLocationList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::UPDATELOCATIONLIST")
  (make-package "ROBINT_MSGS::UPDATELOCATIONLIST"))
(unless (find-package "ROBINT_MSGS::UPDATELOCATIONLISTREQUEST")
  (make-package "ROBINT_MSGS::UPDATELOCATIONLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::UPDATELOCATIONLISTRESPONSE")
  (make-package "ROBINT_MSGS::UPDATELOCATIONLISTRESPONSE"))

(in-package "ROS")





(intern "*WORLD*" (find-package "ROBINT_MSGS::UPDATELOCATIONLISTREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::UPDATELOCATIONLISTREQUEST"))
(defconstant robint_msgs::UpdateLocationListRequest::*WORLD* 0)
(intern "*IMAGE*" (find-package "ROBINT_MSGS::UPDATELOCATIONLISTREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::UPDATELOCATIONLISTREQUEST"))
(defconstant robint_msgs::UpdateLocationListRequest::*IMAGE* 1)

(defun robint_msgs::UpdateLocationListRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::UpdateLocationListRequest::*WORLD*)
        ((= const 1) 'robint_msgs::UpdateLocationListRequest::*IMAGE*)
        (t nil)))

(defclass robint_msgs::UpdateLocationListRequest
  :super ros::object
  :slots (_map_uuid _location_mode _location_list ))

(defmethod robint_msgs::UpdateLocationListRequest
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:location_mode __location_mode) 0)
    ((:location_list __location_list) ())
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _location_mode (round __location_mode))
   (setq _location_list __location_list)
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:location_mode
   (&optional __location_mode)
   (if __location_mode (setq _location_mode __location_mode)) _location_mode)
  (:location_list
   (&rest __location_list)
   (if (keywordp (car __location_list))
       (send* _location_list __location_list)
     (progn
       (if __location_list (setq _location_list (car __location_list)))
       _location_list)))
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; uint8 _location_mode
    1
    ;; robint_msgs/Location[] _location_list
    (apply #'+ (send-all _location_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; uint8 _location_mode
       (write-byte _location_mode s)
     ;; robint_msgs/Location[] _location_list
     (write-long (length _location_list) s)
     (dolist (elem _location_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _location_mode
     (setq _location_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; robint_msgs/Location[] _location_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _location_list (let (r) (dotimes (i n) (push (instance robint_msgs::Location :init) r)) r))
     (dolist (elem- _location_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robint_msgs::UpdateLocationListResponse
  :super ros::object
  :slots (_success _error_code ))

(defmethod robint_msgs::UpdateLocationListResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::UpdateLocationList
  :super ros::object
  :slots ())

(setf (get robint_msgs::UpdateLocationList :md5sum-) "db5536b5ff3cfe2e4559b7715d48a2fe")
(setf (get robint_msgs::UpdateLocationList :datatype-) "robint_msgs/UpdateLocationList")
(setf (get robint_msgs::UpdateLocationList :request) robint_msgs::UpdateLocationListRequest)
(setf (get robint_msgs::UpdateLocationList :response) robint_msgs::UpdateLocationListResponse)

(defmethod robint_msgs::UpdateLocationListRequest
  (:response () (instance robint_msgs::UpdateLocationListResponse :init)))

(setf (get robint_msgs::UpdateLocationListRequest :md5sum-) "db5536b5ff3cfe2e4559b7715d48a2fe")
(setf (get robint_msgs::UpdateLocationListRequest :datatype-) "robint_msgs/UpdateLocationListRequest")
(setf (get robint_msgs::UpdateLocationListRequest :definition-)
      "string map_uuid
uint8 location_mode
uint8 WORLD=0
uint8 IMAGE=1
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
---
bool success
uint8 error_code
")

(setf (get robint_msgs::UpdateLocationListResponse :md5sum-) "db5536b5ff3cfe2e4559b7715d48a2fe")
(setf (get robint_msgs::UpdateLocationListResponse :datatype-) "robint_msgs/UpdateLocationListResponse")
(setf (get robint_msgs::UpdateLocationListResponse :definition-)
      "string map_uuid
uint8 location_mode
uint8 WORLD=0
uint8 IMAGE=1
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
---
bool success
uint8 error_code
")



(provide :robint_msgs/UpdateLocationList "db5536b5ff3cfe2e4559b7715d48a2fe")


