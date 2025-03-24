;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::PathWithPoint)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'PathWithPoint (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::PATHWITHPOINT")
  (make-package "ROBINT_MSGS::PATHWITHPOINT"))

(in-package "ROS")
;;//! \htmlinclude PathWithPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::PathWithPoint
  :super ros::object
  :slots (_id _type _points ))

(defmethod robint_msgs::PathWithPoint
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) "")
    ((:points __points) ())
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type (string __type))
   (setq _points __points)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; string _type
    4 (length _type)
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::PathWithPoint :md5sum-) "5c7c6a8a36b23c1f5a17fe364a806ad8")
(setf (get robint_msgs::PathWithPoint :datatype-) "robint_msgs/PathWithPoint")
(setf (get robint_msgs::PathWithPoint :definition-)
      "uint32 id
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :robint_msgs/PathWithPoint "5c7c6a8a36b23c1f5a17fe364a806ad8")


