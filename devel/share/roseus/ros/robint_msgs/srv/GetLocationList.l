;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetLocationList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetLocationList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETLOCATIONLIST")
  (make-package "ROBINT_MSGS::GETLOCATIONLIST"))
(unless (find-package "ROBINT_MSGS::GETLOCATIONLISTREQUEST")
  (make-package "ROBINT_MSGS::GETLOCATIONLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::GETLOCATIONLISTRESPONSE")
  (make-package "ROBINT_MSGS::GETLOCATIONLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetLocationListRequest
  :super ros::object
  :slots (_map_name _type_name _map_uuid _uuid_list ))

(defmethod robint_msgs::GetLocationListRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:type_name __type_name) "")
    ((:map_uuid __map_uuid) "")
    ((:uuid_list __uuid_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _type_name (string __type_name))
   (setq _map_uuid (string __map_uuid))
   (setq _uuid_list __uuid_list)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:type_name
   (&optional __type_name)
   (if __type_name (setq _type_name __type_name)) _type_name)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:uuid_list
   (&optional __uuid_list)
   (if __uuid_list (setq _uuid_list __uuid_list)) _uuid_list)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _type_name
    4 (length _type_name)
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; string[] _uuid_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _uuid_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _type_name
       (write-long (length _type_name) s) (princ _type_name s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; string[] _uuid_list
     (write-long (length _uuid_list) s)
     (dolist (elem _uuid_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _uuid_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uuid_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _uuid_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robint_msgs::GetLocationListResponse
  :super ros::object
  :slots (_location_list _success _error_code ))

(defmethod robint_msgs::GetLocationListResponse
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

(defclass robint_msgs::GetLocationList
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetLocationList :md5sum-) "99bdb46f323a7f571c135d2543eb7b49")
(setf (get robint_msgs::GetLocationList :datatype-) "robint_msgs/GetLocationList")
(setf (get robint_msgs::GetLocationList :request) robint_msgs::GetLocationListRequest)
(setf (get robint_msgs::GetLocationList :response) robint_msgs::GetLocationListResponse)

(defmethod robint_msgs::GetLocationListRequest
  (:response () (instance robint_msgs::GetLocationListResponse :init)))

(setf (get robint_msgs::GetLocationListRequest :md5sum-) "99bdb46f323a7f571c135d2543eb7b49")
(setf (get robint_msgs::GetLocationListRequest :datatype-) "robint_msgs/GetLocationListRequest")
(setf (get robint_msgs::GetLocationListRequest :definition-)
      "string map_name
string type_name
string map_uuid
string[] uuid_list
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

(setf (get robint_msgs::GetLocationListResponse :md5sum-) "99bdb46f323a7f571c135d2543eb7b49")
(setf (get robint_msgs::GetLocationListResponse :datatype-) "robint_msgs/GetLocationListResponse")
(setf (get robint_msgs::GetLocationListResponse :definition-)
      "string map_name
string type_name
string map_uuid
string[] uuid_list
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



(provide :robint_msgs/GetLocationList "99bdb46f323a7f571c135d2543eb7b49")


