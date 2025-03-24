;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ChargeBaseInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ChargeBaseInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CHARGEBASEINFO")
  (make-package "ROBINT_MSGS::CHARGEBASEINFO"))

(in-package "ROS")
;;//! \htmlinclude ChargeBaseInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::ChargeBaseInfo
  :super ros::object
  :slots (_location_uuid _location_name _group_uuid _map_uuid _floor_id _building_id _pose _anchor_pose ))

(defmethod robint_msgs::ChargeBaseInfo
  (:init
   (&key
    ((:location_uuid __location_uuid) "")
    ((:location_name __location_name) "")
    ((:group_uuid __group_uuid) "")
    ((:map_uuid __map_uuid) "")
    ((:floor_id __floor_id) "")
    ((:building_id __building_id) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:anchor_pose __anchor_pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _location_uuid (string __location_uuid))
   (setq _location_name (string __location_name))
   (setq _group_uuid (string __group_uuid))
   (setq _map_uuid (string __map_uuid))
   (setq _floor_id (string __floor_id))
   (setq _building_id (string __building_id))
   (setq _pose __pose)
   (setq _anchor_pose __anchor_pose)
   self)
  (:location_uuid
   (&optional __location_uuid)
   (if __location_uuid (setq _location_uuid __location_uuid)) _location_uuid)
  (:location_name
   (&optional __location_name)
   (if __location_name (setq _location_name __location_name)) _location_name)
  (:group_uuid
   (&optional __group_uuid)
   (if __group_uuid (setq _group_uuid __group_uuid)) _group_uuid)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:floor_id
   (&optional __floor_id)
   (if __floor_id (setq _floor_id __floor_id)) _floor_id)
  (:building_id
   (&optional __building_id)
   (if __building_id (setq _building_id __building_id)) _building_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:anchor_pose
   (&rest __anchor_pose)
   (if (keywordp (car __anchor_pose))
       (send* _anchor_pose __anchor_pose)
     (progn
       (if __anchor_pose (setq _anchor_pose (car __anchor_pose)))
       _anchor_pose)))
  (:serialization-length
   ()
   (+
    ;; string _location_uuid
    4 (length _location_uuid)
    ;; string _location_name
    4 (length _location_name)
    ;; string _group_uuid
    4 (length _group_uuid)
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; string _floor_id
    4 (length _floor_id)
    ;; string _building_id
    4 (length _building_id)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/PoseStamped _anchor_pose
    (send _anchor_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location_uuid
       (write-long (length _location_uuid) s) (princ _location_uuid s)
     ;; string _location_name
       (write-long (length _location_name) s) (princ _location_name s)
     ;; string _group_uuid
       (write-long (length _group_uuid) s) (princ _group_uuid s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; string _floor_id
       (write-long (length _floor_id) s) (princ _floor_id s)
     ;; string _building_id
       (write-long (length _building_id) s) (princ _building_id s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; geometry_msgs/PoseStamped _anchor_pose
       (send _anchor_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _floor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _floor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _building_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/PoseStamped _anchor_pose
     (send _anchor_pose :deserialize buf ptr-) (incf ptr- (send _anchor_pose :serialization-length))
   ;;
   self)
  )

(setf (get robint_msgs::ChargeBaseInfo :md5sum-) "f0d4cbfd1ab263fc96b403946bd97599")
(setf (get robint_msgs::ChargeBaseInfo :datatype-) "robint_msgs/ChargeBaseInfo")
(setf (get robint_msgs::ChargeBaseInfo :definition-)
      "string location_uuid
string location_name
string group_uuid
string map_uuid
string floor_id
string building_id
geometry_msgs/PoseStamped pose
geometry_msgs/PoseStamped anchor_pose
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



(provide :robint_msgs/ChargeBaseInfo "f0d4cbfd1ab263fc96b403946bd97599")


