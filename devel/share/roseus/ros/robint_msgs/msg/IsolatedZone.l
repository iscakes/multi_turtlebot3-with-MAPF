;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::IsolatedZone)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'IsolatedZone (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ISOLATEDZONE")
  (make-package "ROBINT_MSGS::ISOLATEDZONE"))

(in-package "ROS")
;;//! \htmlinclude IsolatedZone.msg.html


(defclass robint_msgs::IsolatedZone
  :super ros::object
  :slots (_zone _wait_points _next_task ))

(defmethod robint_msgs::IsolatedZone
  (:init
   (&key
    ((:zone __zone) (instance robint_msgs::Zone :init))
    ((:wait_points __wait_points) ())
    ((:next_task __next_task) "")
    )
   (send-super :init)
   (setq _zone __zone)
   (setq _wait_points __wait_points)
   (setq _next_task (string __next_task))
   self)
  (:zone
   (&rest __zone)
   (if (keywordp (car __zone))
       (send* _zone __zone)
     (progn
       (if __zone (setq _zone (car __zone)))
       _zone)))
  (:wait_points
   (&rest __wait_points)
   (if (keywordp (car __wait_points))
       (send* _wait_points __wait_points)
     (progn
       (if __wait_points (setq _wait_points (car __wait_points)))
       _wait_points)))
  (:next_task
   (&optional __next_task)
   (if __next_task (setq _next_task __next_task)) _next_task)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/Zone _zone
    (send _zone :serialization-length)
    ;; robint_msgs/IsolatedWait[] _wait_points
    (apply #'+ (send-all _wait_points :serialization-length)) 4
    ;; string _next_task
    4 (length _next_task)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/Zone _zone
       (send _zone :serialize s)
     ;; robint_msgs/IsolatedWait[] _wait_points
     (write-long (length _wait_points) s)
     (dolist (elem _wait_points)
       (send elem :serialize s)
       )
     ;; string _next_task
       (write-long (length _next_task) s) (princ _next_task s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/Zone _zone
     (send _zone :deserialize buf ptr-) (incf ptr- (send _zone :serialization-length))
   ;; robint_msgs/IsolatedWait[] _wait_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wait_points (let (r) (dotimes (i n) (push (instance robint_msgs::IsolatedWait :init) r)) r))
     (dolist (elem- _wait_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _next_task
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _next_task (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robint_msgs::IsolatedZone :md5sum-) "42047e004f43f0c737c09962b5dbeda6")
(setf (get robint_msgs::IsolatedZone :datatype-) "robint_msgs/IsolatedZone")
(setf (get robint_msgs::IsolatedZone :definition-)
      "Zone zone
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



(provide :robint_msgs/IsolatedZone "42047e004f43f0c737c09962b5dbeda6")


