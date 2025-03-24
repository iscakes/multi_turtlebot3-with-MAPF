;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::IsolatedZoneList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'IsolatedZoneList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ISOLATEDZONELIST")
  (make-package "ROBINT_MSGS::ISOLATEDZONELIST"))

(in-package "ROS")
;;//! \htmlinclude IsolatedZoneList.msg.html


(defclass robint_msgs::IsolatedZoneList
  :super ros::object
  :slots (_zone_list ))

(defmethod robint_msgs::IsolatedZoneList
  (:init
   (&key
    ((:zone_list __zone_list) ())
    )
   (send-super :init)
   (setq _zone_list __zone_list)
   self)
  (:zone_list
   (&rest __zone_list)
   (if (keywordp (car __zone_list))
       (send* _zone_list __zone_list)
     (progn
       (if __zone_list (setq _zone_list (car __zone_list)))
       _zone_list)))
  (:serialization-length
   ()
   (+
    ;; robint_msgs/IsolatedZone[] _zone_list
    (apply #'+ (send-all _zone_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/IsolatedZone[] _zone_list
     (write-long (length _zone_list) s)
     (dolist (elem _zone_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/IsolatedZone[] _zone_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _zone_list (let (r) (dotimes (i n) (push (instance robint_msgs::IsolatedZone :init) r)) r))
     (dolist (elem- _zone_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::IsolatedZoneList :md5sum-) "2be48a82e856075e1d4177e40252d0e1")
(setf (get robint_msgs::IsolatedZoneList :datatype-) "robint_msgs/IsolatedZoneList")
(setf (get robint_msgs::IsolatedZoneList :definition-)
      "IsolatedZone[] zone_list

================================================================================
MSG: robint_msgs/IsolatedZone
Zone zone
IsolatedWait[] wait_points
string next_task
================================================================================
MSG: robint_msgs/Zone
string uuid
string name
string map_uuid
string group_uuid
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: robint_msgs/IsolatedWait
geometry_msgs/Pose pose
string uuid
bool direct
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :robint_msgs/IsolatedZoneList "2be48a82e856075e1d4177e40252d0e1")


