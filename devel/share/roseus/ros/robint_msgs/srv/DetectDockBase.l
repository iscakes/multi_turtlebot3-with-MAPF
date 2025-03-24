;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::DetectDockBase)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'DetectDockBase (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::DETECTDOCKBASE")
  (make-package "ROBINT_MSGS::DETECTDOCKBASE"))
(unless (find-package "ROBINT_MSGS::DETECTDOCKBASEREQUEST")
  (make-package "ROBINT_MSGS::DETECTDOCKBASEREQUEST"))
(unless (find-package "ROBINT_MSGS::DETECTDOCKBASERESPONSE")
  (make-package "ROBINT_MSGS::DETECTDOCKBASERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::DetectDockBaseRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::DetectDockBaseRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robint_msgs::DetectDockBaseResponse
  :super ros::object
  :slots (_dock_pose _success _error_code ))

(defmethod robint_msgs::DetectDockBaseResponse
  (:init
   (&key
    ((:dock_pose __dock_pose) (instance geometry_msgs::PoseStamped :init))
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _dock_pose __dock_pose)
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:dock_pose
   (&rest __dock_pose)
   (if (keywordp (car __dock_pose))
       (send* _dock_pose __dock_pose)
     (progn
       (if __dock_pose (setq _dock_pose (car __dock_pose)))
       _dock_pose)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _dock_pose
    (send _dock_pose :serialization-length)
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _dock_pose
       (send _dock_pose :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _dock_pose
     (send _dock_pose :deserialize buf ptr-) (incf ptr- (send _dock_pose :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::DetectDockBase
  :super ros::object
  :slots ())

(setf (get robint_msgs::DetectDockBase :md5sum-) "4ead082030f3dc019a260fec9bdd9d31")
(setf (get robint_msgs::DetectDockBase :datatype-) "robint_msgs/DetectDockBase")
(setf (get robint_msgs::DetectDockBase :request) robint_msgs::DetectDockBaseRequest)
(setf (get robint_msgs::DetectDockBase :response) robint_msgs::DetectDockBaseResponse)

(defmethod robint_msgs::DetectDockBaseRequest
  (:response () (instance robint_msgs::DetectDockBaseResponse :init)))

(setf (get robint_msgs::DetectDockBaseRequest :md5sum-) "4ead082030f3dc019a260fec9bdd9d31")
(setf (get robint_msgs::DetectDockBaseRequest :datatype-) "robint_msgs/DetectDockBaseRequest")
(setf (get robint_msgs::DetectDockBaseRequest :definition-)
      "---
geometry_msgs/PoseStamped dock_pose
bool success
uint8 error_code

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

(setf (get robint_msgs::DetectDockBaseResponse :md5sum-) "4ead082030f3dc019a260fec9bdd9d31")
(setf (get robint_msgs::DetectDockBaseResponse :datatype-) "robint_msgs/DetectDockBaseResponse")
(setf (get robint_msgs::DetectDockBaseResponse :definition-)
      "---
geometry_msgs/PoseStamped dock_pose
bool success
uint8 error_code

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



(provide :robint_msgs/DetectDockBase "4ead082030f3dc019a260fec9bdd9d31")


