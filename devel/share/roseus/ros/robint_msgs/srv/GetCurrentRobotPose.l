;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetCurrentRobotPose)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetCurrentRobotPose (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCURRENTROBOTPOSE")
  (make-package "ROBINT_MSGS::GETCURRENTROBOTPOSE"))
(unless (find-package "ROBINT_MSGS::GETCURRENTROBOTPOSEREQUEST")
  (make-package "ROBINT_MSGS::GETCURRENTROBOTPOSEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCURRENTROBOTPOSERESPONSE")
  (make-package "ROBINT_MSGS::GETCURRENTROBOTPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::GetCurrentRobotPoseRequest
  :super ros::object
  :slots (_target_frame _robot_frame ))

(defmethod robint_msgs::GetCurrentRobotPoseRequest
  (:init
   (&key
    ((:target_frame __target_frame) "")
    ((:robot_frame __robot_frame) "")
    )
   (send-super :init)
   (setq _target_frame (string __target_frame))
   (setq _robot_frame (string __robot_frame))
   self)
  (:target_frame
   (&optional __target_frame)
   (if __target_frame (setq _target_frame __target_frame)) _target_frame)
  (:robot_frame
   (&optional __robot_frame)
   (if __robot_frame (setq _robot_frame __robot_frame)) _robot_frame)
  (:serialization-length
   ()
   (+
    ;; string _target_frame
    4 (length _target_frame)
    ;; string _robot_frame
    4 (length _robot_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_frame
       (write-long (length _target_frame) s) (princ _target_frame s)
     ;; string _robot_frame
       (write-long (length _robot_frame) s) (princ _robot_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetCurrentRobotPoseResponse
  :super ros::object
  :slots (_map_name _map_uuid _image_pose _pose _success ))

(defmethod robint_msgs::GetCurrentRobotPoseResponse
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:map_uuid __map_uuid) "")
    ((:image_pose __image_pose) (instance geometry_msgs::Pose2D :init))
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _map_uuid (string __map_uuid))
   (setq _image_pose __image_pose)
   (setq _pose __pose)
   (setq _success __success)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:image_pose
   (&rest __image_pose)
   (if (keywordp (car __image_pose))
       (send* _image_pose __image_pose)
     (progn
       (if __image_pose (setq _image_pose (car __image_pose)))
       _image_pose)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; geometry_msgs/Pose2D _image_pose
    (send _image_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; geometry_msgs/Pose2D _image_pose
       (send _image_pose :serialize s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _image_pose
     (send _image_pose :deserialize buf ptr-) (incf ptr- (send _image_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetCurrentRobotPose
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetCurrentRobotPose :md5sum-) "e893e35ee69a289c4ba9dfb64de7b851")
(setf (get robint_msgs::GetCurrentRobotPose :datatype-) "robint_msgs/GetCurrentRobotPose")
(setf (get robint_msgs::GetCurrentRobotPose :request) robint_msgs::GetCurrentRobotPoseRequest)
(setf (get robint_msgs::GetCurrentRobotPose :response) robint_msgs::GetCurrentRobotPoseResponse)

(defmethod robint_msgs::GetCurrentRobotPoseRequest
  (:response () (instance robint_msgs::GetCurrentRobotPoseResponse :init)))

(setf (get robint_msgs::GetCurrentRobotPoseRequest :md5sum-) "e893e35ee69a289c4ba9dfb64de7b851")
(setf (get robint_msgs::GetCurrentRobotPoseRequest :datatype-) "robint_msgs/GetCurrentRobotPoseRequest")
(setf (get robint_msgs::GetCurrentRobotPoseRequest :definition-)
      "string target_frame
string robot_frame
---
string map_name
string map_uuid
geometry_msgs/Pose2D image_pose
geometry_msgs/PoseStamped pose
bool success

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

(setf (get robint_msgs::GetCurrentRobotPoseResponse :md5sum-) "e893e35ee69a289c4ba9dfb64de7b851")
(setf (get robint_msgs::GetCurrentRobotPoseResponse :datatype-) "robint_msgs/GetCurrentRobotPoseResponse")
(setf (get robint_msgs::GetCurrentRobotPoseResponse :definition-)
      "string target_frame
string robot_frame
---
string map_name
string map_uuid
geometry_msgs/Pose2D image_pose
geometry_msgs/PoseStamped pose
bool success

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



(provide :robint_msgs/GetCurrentRobotPose "e893e35ee69a289c4ba9dfb64de7b851")


