;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ZoneList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ZoneList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ZONELIST")
  (make-package "ROBINT_MSGS::ZONELIST"))

(in-package "ROS")
;;//! \htmlinclude ZoneList.msg.html


(defclass robint_msgs::ZoneList
  :super ros::object
  :slots (_zone_list ))

(defmethod robint_msgs::ZoneList
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
    ;; robint_msgs/Zone[] _zone_list
    (apply #'+ (send-all _zone_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/Zone[] _zone_list
     (write-long (length _zone_list) s)
     (dolist (elem _zone_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/Zone[] _zone_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _zone_list (let (r) (dotimes (i n) (push (instance robint_msgs::Zone :init) r)) r))
     (dolist (elem- _zone_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::ZoneList :md5sum-) "78e20121c12878622efd248cb2a92c84")
(setf (get robint_msgs::ZoneList :datatype-) "robint_msgs/ZoneList")
(setf (get robint_msgs::ZoneList :definition-)
      "Zone[] zone_list
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

")



(provide :robint_msgs/ZoneList "78e20121c12878622efd248cb2a92c84")


