;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AddLocationList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AddLocationList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ADDLOCATIONLIST")
  (make-package "ROBINT_MSGS::ADDLOCATIONLIST"))
(unless (find-package "ROBINT_MSGS::ADDLOCATIONLISTREQUEST")
  (make-package "ROBINT_MSGS::ADDLOCATIONLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::ADDLOCATIONLISTRESPONSE")
  (make-package "ROBINT_MSGS::ADDLOCATIONLISTRESPONSE"))

(in-package "ROS")





(intern "*WORLD*" (find-package "ROBINT_MSGS::ADDLOCATIONLISTREQUEST"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::ADDLOCATIONLISTREQUEST"))
(defconstant robint_msgs::AddLocationListRequest::*WORLD* 0)
(intern "*IMAGE*" (find-package "ROBINT_MSGS::ADDLOCATIONLISTREQUEST"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::ADDLOCATIONLISTREQUEST"))
(defconstant robint_msgs::AddLocationListRequest::*IMAGE* 1)

(defun robint_msgs::AddLocationListRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::AddLocationListRequest::*WORLD*)
        ((= const 1) 'robint_msgs::AddLocationListRequest::*IMAGE*)
        (t nil)))

(defclass robint_msgs::AddLocationListRequest
  :super ros::object
  :slots (_location_mode _map_name _map_uuid _location_list ))

(defmethod robint_msgs::AddLocationListRequest
  (:init
   (&key
    ((:location_mode __location_mode) 0)
    ((:map_name __map_name) "")
    ((:map_uuid __map_uuid) "")
    ((:location_list __location_list) ())
    )
   (send-super :init)
   (setq _location_mode (round __location_mode))
   (setq _map_name (string __map_name))
   (setq _map_uuid (string __map_uuid))
   (setq _location_list __location_list)
   self)
  (:location_mode
   (&optional __location_mode)
   (if __location_mode (setq _location_mode __location_mode)) _location_mode)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
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
    ;; uint8 _location_mode
    1
    ;; string _map_name
    4 (length _map_name)
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; robint_msgs/Location[] _location_list
    (apply #'+ (send-all _location_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _location_mode
       (write-byte _location_mode s)
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; robint_msgs/Location[] _location_list
     (write-long (length _location_list) s)
     (dolist (elem _location_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _location_mode
     (setq _location_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass robint_msgs::AddLocationListResponse
  :super ros::object
  :slots (_location_list _success _error_code ))

(defmethod robint_msgs::AddLocationListResponse
  (:init
   (&key
    ((:location_list __location_list) ())
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _location_list __location_list)
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:location_list
   (&rest __location_list)
   (if (keywordp (car __location_list))
       (send* _location_list __location_list)
     (progn
       (if __location_list (setq _location_list (car __location_list)))
       _location_list)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/Location[] _location_list
    (apply #'+ (send-all _location_list :serialization-length)) 4
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/Location[] _location_list
     (write-long (length _location_list) s)
     (dolist (elem _location_list)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/Location[] _location_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _location_list (let (r) (dotimes (i n) (push (instance robint_msgs::Location :init) r)) r))
     (dolist (elem- _location_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::AddLocationList
  :super ros::object
  :slots ())

(setf (get robint_msgs::AddLocationList :md5sum-) "71d3bf9e5e9044c1a5eaa8dd7715c1b8")
(setf (get robint_msgs::AddLocationList :datatype-) "robint_msgs/AddLocationList")
(setf (get robint_msgs::AddLocationList :request) robint_msgs::AddLocationListRequest)
(setf (get robint_msgs::AddLocationList :response) robint_msgs::AddLocationListResponse)

(defmethod robint_msgs::AddLocationListRequest
  (:response () (instance robint_msgs::AddLocationListResponse :init)))

(setf (get robint_msgs::AddLocationListRequest :md5sum-) "71d3bf9e5e9044c1a5eaa8dd7715c1b8")
(setf (get robint_msgs::AddLocationListRequest :datatype-) "robint_msgs/AddLocationListRequest")
(setf (get robint_msgs::AddLocationListRequest :definition-)
      "uint8 location_mode
uint8 WORLD=0
uint8 IMAGE=1
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
---
Location[] location_list
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

(setf (get robint_msgs::AddLocationListResponse :md5sum-) "71d3bf9e5e9044c1a5eaa8dd7715c1b8")
(setf (get robint_msgs::AddLocationListResponse :datatype-) "robint_msgs/AddLocationListResponse")
(setf (get robint_msgs::AddLocationListResponse :definition-)
      "uint8 location_mode
uint8 WORLD=0
uint8 IMAGE=1
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
---
Location[] location_list
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



(provide :robint_msgs/AddLocationList "71d3bf9e5e9044c1a5eaa8dd7715c1b8")


