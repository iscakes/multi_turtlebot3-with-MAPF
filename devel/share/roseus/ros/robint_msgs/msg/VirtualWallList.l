;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::VirtualWallList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'VirtualWallList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::VIRTUALWALLLIST")
  (make-package "ROBINT_MSGS::VIRTUALWALLLIST"))

(in-package "ROS")
;;//! \htmlinclude VirtualWallList.msg.html


(defclass robint_msgs::VirtualWallList
  :super ros::object
  :slots (_wall_list ))

(defmethod robint_msgs::VirtualWallList
  (:init
   (&key
    ((:wall_list __wall_list) ())
    )
   (send-super :init)
   (setq _wall_list __wall_list)
   self)
  (:wall_list
   (&rest __wall_list)
   (if (keywordp (car __wall_list))
       (send* _wall_list __wall_list)
     (progn
       (if __wall_list (setq _wall_list (car __wall_list)))
       _wall_list)))
  (:serialization-length
   ()
   (+
    ;; robint_msgs/VirtualWall[] _wall_list
    (apply #'+ (send-all _wall_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/VirtualWall[] _wall_list
     (write-long (length _wall_list) s)
     (dolist (elem _wall_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/VirtualWall[] _wall_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wall_list (let (r) (dotimes (i n) (push (instance robint_msgs::VirtualWall :init) r)) r))
     (dolist (elem- _wall_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::VirtualWallList :md5sum-) "e31dc94ec8c76c82853f300c24dbb707")
(setf (get robint_msgs::VirtualWallList :datatype-) "robint_msgs/VirtualWallList")
(setf (get robint_msgs::VirtualWallList :definition-)
      "VirtualWall[] wall_list
================================================================================
MSG: robint_msgs/VirtualWall
string id
uint8 type
uint8 Line = 0
uint8 Rectangle = 1
uint8 Polygon = 2
string vw_uuid
string vw_name
string map_uuid
string group_uuid
geometry_msgs/Point[] points 
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :robint_msgs/VirtualWallList "e31dc94ec8c76c82853f300c24dbb707")


