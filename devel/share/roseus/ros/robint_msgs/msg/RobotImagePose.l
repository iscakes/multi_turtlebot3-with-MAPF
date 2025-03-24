;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RobotImagePose)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RobotImagePose (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ROBOTIMAGEPOSE")
  (make-package "ROBINT_MSGS::ROBOTIMAGEPOSE"))

(in-package "ROS")
;;//! \htmlinclude RobotImagePose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::RobotImagePose
  :super ros::object
  :slots (_map_uuid _image_pose _normal ))

(defmethod robint_msgs::RobotImagePose
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:image_pose __image_pose) (instance geometry_msgs::Pose2D :init))
    ((:normal __normal) nil)
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _image_pose __image_pose)
   (setq _normal __normal)
   self)
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
  (:normal
   (&optional (__normal :null))
   (if (not (eq __normal :null)) (setq _normal __normal)) _normal)
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; geometry_msgs/Pose2D _image_pose
    (send _image_pose :serialization-length)
    ;; bool _normal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; geometry_msgs/Pose2D _image_pose
       (send _image_pose :serialize s)
     ;; bool _normal
       (if _normal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _image_pose
     (send _image_pose :deserialize buf ptr-) (incf ptr- (send _image_pose :serialization-length))
   ;; bool _normal
     (setq _normal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::RobotImagePose :md5sum-) "63c6918d070f32a3168513d2d33658bd")
(setf (get robint_msgs::RobotImagePose :datatype-) "robint_msgs/RobotImagePose")
(setf (get robint_msgs::RobotImagePose :definition-)
      "string map_uuid
geometry_msgs/Pose2D image_pose
bool normal
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



(provide :robint_msgs/RobotImagePose "63c6918d070f32a3168513d2d33658bd")


