;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SetRobotPose)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SetRobotPose (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SETROBOTPOSE")
  (make-package "ROBINT_MSGS::SETROBOTPOSE"))
(unless (find-package "ROBINT_MSGS::SETROBOTPOSEREQUEST")
  (make-package "ROBINT_MSGS::SETROBOTPOSEREQUEST"))
(unless (find-package "ROBINT_MSGS::SETROBOTPOSERESPONSE")
  (make-package "ROBINT_MSGS::SETROBOTPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*LOCATION_UUID*" (find-package "ROBINT_MSGS::SETROBOTPOSEREQUEST"))
(shadow '*LOCATION_UUID* (find-package "ROBINT_MSGS::SETROBOTPOSEREQUEST"))
(defconstant robint_msgs::SetRobotPoseRequest::*LOCATION_UUID* 0)
(intern "*SPECIALIZED_IMAGE_POSE*" (find-package "ROBINT_MSGS::SETROBOTPOSEREQUEST"))
(shadow '*SPECIALIZED_IMAGE_POSE* (find-package "ROBINT_MSGS::SETROBOTPOSEREQUEST"))
(defconstant robint_msgs::SetRobotPoseRequest::*SPECIALIZED_IMAGE_POSE* 1)
(intern "*SPECIALIZED_WORLD_POSE*" (find-package "ROBINT_MSGS::SETROBOTPOSEREQUEST"))
(shadow '*SPECIALIZED_WORLD_POSE* (find-package "ROBINT_MSGS::SETROBOTPOSEREQUEST"))
(defconstant robint_msgs::SetRobotPoseRequest::*SPECIALIZED_WORLD_POSE* 2)
(intern "*CURRENT_POSE*" (find-package "ROBINT_MSGS::SETROBOTPOSEREQUEST"))
(shadow '*CURRENT_POSE* (find-package "ROBINT_MSGS::SETROBOTPOSEREQUEST"))
(defconstant robint_msgs::SetRobotPoseRequest::*CURRENT_POSE* 3)

(defun robint_msgs::SetRobotPoseRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::SetRobotPoseRequest::*LOCATION_UUID*)
        ((= const 1) 'robint_msgs::SetRobotPoseRequest::*SPECIALIZED_IMAGE_POSE*)
        ((= const 2) 'robint_msgs::SetRobotPoseRequest::*SPECIALIZED_WORLD_POSE*)
        ((= const 3) 'robint_msgs::SetRobotPoseRequest::*CURRENT_POSE*)
        (t nil)))

(defclass robint_msgs::SetRobotPoseRequest
  :super ros::object
  :slots (_mode _location_uuid _image_pose _pose _covariance ))

(defmethod robint_msgs::SetRobotPoseRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:location_uuid __location_uuid) "")
    ((:image_pose __image_pose) (instance geometry_msgs::Pose2D :init))
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:covariance __covariance) (make-array 36 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _location_uuid (string __location_uuid))
   (setq _image_pose __image_pose)
   (setq _pose __pose)
   (setq _covariance __covariance)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:location_uuid
   (&optional __location_uuid)
   (if __location_uuid (setq _location_uuid __location_uuid)) _location_uuid)
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
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; string _location_uuid
    4 (length _location_uuid)
    ;; geometry_msgs/Pose2D _image_pose
    (send _image_pose :serialization-length)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; float64[36] _covariance
    (* 8    36)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; string _location_uuid
       (write-long (length _location_uuid) s) (princ _location_uuid s)
     ;; geometry_msgs/Pose2D _image_pose
       (send _image_pose :serialize s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; float64[36] _covariance
     (dotimes (i 36)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _location_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _image_pose
     (send _image_pose :deserialize buf ptr-) (incf ptr- (send _image_pose :serialization-length))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[36] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass robint_msgs::SetRobotPoseResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::SetRobotPoseResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::SetRobotPose
  :super ros::object
  :slots ())

(setf (get robint_msgs::SetRobotPose :md5sum-) "2399e09dd0e6eeae49eee7f85a83055c")
(setf (get robint_msgs::SetRobotPose :datatype-) "robint_msgs/SetRobotPose")
(setf (get robint_msgs::SetRobotPose :request) robint_msgs::SetRobotPoseRequest)
(setf (get robint_msgs::SetRobotPose :response) robint_msgs::SetRobotPoseResponse)

(defmethod robint_msgs::SetRobotPoseRequest
  (:response () (instance robint_msgs::SetRobotPoseResponse :init)))

(setf (get robint_msgs::SetRobotPoseRequest :md5sum-) "2399e09dd0e6eeae49eee7f85a83055c")
(setf (get robint_msgs::SetRobotPoseRequest :datatype-) "robint_msgs/SetRobotPoseRequest")
(setf (get robint_msgs::SetRobotPoseRequest :definition-)
      "uint8 mode
uint8 LOCATION_UUID = 0
uint8 SPECIALIZED_IMAGE_POSE = 1
uint8 SPECIALIZED_WORLD_POSE = 2
uint8 CURRENT_POSE = 3
string location_uuid
geometry_msgs/Pose2D image_pose
geometry_msgs/PoseStamped pose
float64[36] covariance

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
string message
")

(setf (get robint_msgs::SetRobotPoseResponse :md5sum-) "2399e09dd0e6eeae49eee7f85a83055c")
(setf (get robint_msgs::SetRobotPoseResponse :datatype-) "robint_msgs/SetRobotPoseResponse")
(setf (get robint_msgs::SetRobotPoseResponse :definition-)
      "uint8 mode
uint8 LOCATION_UUID = 0
uint8 SPECIALIZED_IMAGE_POSE = 1
uint8 SPECIALIZED_WORLD_POSE = 2
uint8 CURRENT_POSE = 3
string location_uuid
geometry_msgs/Pose2D image_pose
geometry_msgs/PoseStamped pose
float64[36] covariance

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
string message
")



(provide :robint_msgs/SetRobotPose "2399e09dd0e6eeae49eee7f85a83055c")


