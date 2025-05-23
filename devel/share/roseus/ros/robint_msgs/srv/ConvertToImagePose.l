;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ConvertToImagePose)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ConvertToImagePose (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CONVERTTOIMAGEPOSE")
  (make-package "ROBINT_MSGS::CONVERTTOIMAGEPOSE"))
(unless (find-package "ROBINT_MSGS::CONVERTTOIMAGEPOSEREQUEST")
  (make-package "ROBINT_MSGS::CONVERTTOIMAGEPOSEREQUEST"))
(unless (find-package "ROBINT_MSGS::CONVERTTOIMAGEPOSERESPONSE")
  (make-package "ROBINT_MSGS::CONVERTTOIMAGEPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::ConvertToImagePoseRequest
  :super ros::object
  :slots (_map_uuid _pose ))

(defmethod robint_msgs::ConvertToImagePoseRequest
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _pose __pose)
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::ConvertToImagePoseResponse
  :super ros::object
  :slots (_map_uuid _pose2d _error_code _success ))

(defmethod robint_msgs::ConvertToImagePoseResponse
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:pose2d __pose2d) (instance geometry_msgs::Pose2D :init))
    ((:error_code __error_code) 0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _pose2d __pose2d)
   (setq _error_code (round __error_code))
   (setq _success __success)
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:pose2d
   (&rest __pose2d)
   (if (keywordp (car __pose2d))
       (send* _pose2d __pose2d)
     (progn
       (if __pose2d (setq _pose2d (car __pose2d)))
       _pose2d)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; geometry_msgs/Pose2D _pose2d
    (send _pose2d :serialization-length)
    ;; uint8 _error_code
    1
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; geometry_msgs/Pose2D _pose2d
       (send _pose2d :serialize s)
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _pose2d
     (send _pose2d :deserialize buf ptr-) (incf ptr- (send _pose2d :serialization-length))
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::ConvertToImagePose
  :super ros::object
  :slots ())

(setf (get robint_msgs::ConvertToImagePose :md5sum-) "98f246256c6be12ca761c5ac673adcea")
(setf (get robint_msgs::ConvertToImagePose :datatype-) "robint_msgs/ConvertToImagePose")
(setf (get robint_msgs::ConvertToImagePose :request) robint_msgs::ConvertToImagePoseRequest)
(setf (get robint_msgs::ConvertToImagePose :response) robint_msgs::ConvertToImagePoseResponse)

(defmethod robint_msgs::ConvertToImagePoseRequest
  (:response () (instance robint_msgs::ConvertToImagePoseResponse :init)))

(setf (get robint_msgs::ConvertToImagePoseRequest :md5sum-) "98f246256c6be12ca761c5ac673adcea")
(setf (get robint_msgs::ConvertToImagePoseRequest :datatype-) "robint_msgs/ConvertToImagePoseRequest")
(setf (get robint_msgs::ConvertToImagePoseRequest :definition-)
      "string map_uuid
geometry_msgs/Pose pose

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
string map_uuid
geometry_msgs/Pose2D pose2d
uint8 error_code
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
")

(setf (get robint_msgs::ConvertToImagePoseResponse :md5sum-) "98f246256c6be12ca761c5ac673adcea")
(setf (get robint_msgs::ConvertToImagePoseResponse :datatype-) "robint_msgs/ConvertToImagePoseResponse")
(setf (get robint_msgs::ConvertToImagePoseResponse :definition-)
      "string map_uuid
geometry_msgs/Pose pose

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
string map_uuid
geometry_msgs/Pose2D pose2d
uint8 error_code
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
")



(provide :robint_msgs/ConvertToImagePose "98f246256c6be12ca761c5ac673adcea")


