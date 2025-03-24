;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ExplorationGoal)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ExplorationGoal (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::EXPLORATIONGOAL")
  (make-package "ROBINT_MSGS::EXPLORATIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude ExplorationGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::ExplorationGoal
  :super ros::object
  :slots (_map_originX _map_originY _map_width _map_height _map_resolution _points ))

(defmethod robint_msgs::ExplorationGoal
  (:init
   (&key
    ((:map_originX __map_originX) 0.0)
    ((:map_originY __map_originY) 0.0)
    ((:map_width __map_width) 0)
    ((:map_height __map_height) 0)
    ((:map_resolution __map_resolution) 0.0)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _map_originX (float __map_originX))
   (setq _map_originY (float __map_originY))
   (setq _map_width (round __map_width))
   (setq _map_height (round __map_height))
   (setq _map_resolution (float __map_resolution))
   (setq _points __points)
   self)
  (:map_originX
   (&optional __map_originX)
   (if __map_originX (setq _map_originX __map_originX)) _map_originX)
  (:map_originY
   (&optional __map_originY)
   (if __map_originY (setq _map_originY __map_originY)) _map_originY)
  (:map_width
   (&optional __map_width)
   (if __map_width (setq _map_width __map_width)) _map_width)
  (:map_height
   (&optional __map_height)
   (if __map_height (setq _map_height __map_height)) _map_height)
  (:map_resolution
   (&optional __map_resolution)
   (if __map_resolution (setq _map_resolution __map_resolution)) _map_resolution)
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
    ;; float32 _map_originX
    4
    ;; float32 _map_originY
    4
    ;; uint32 _map_width
    4
    ;; uint32 _map_height
    4
    ;; float32 _map_resolution
    4
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _map_originX
       (sys::poke _map_originX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _map_originY
       (sys::poke _map_originY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _map_width
       (write-long _map_width s)
     ;; uint32 _map_height
       (write-long _map_height s)
     ;; float32 _map_resolution
       (sys::poke _map_resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _map_originX
     (setq _map_originX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _map_originY
     (setq _map_originY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _map_width
     (setq _map_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _map_height
     (setq _map_height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _map_resolution
     (setq _map_resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(setf (get robint_msgs::ExplorationGoal :md5sum-) "e071b18ba3db984910845497c9be477d")
(setf (get robint_msgs::ExplorationGoal :datatype-) "robint_msgs/ExplorationGoal")
(setf (get robint_msgs::ExplorationGoal :definition-)
      "float32 map_originX
float32 map_originY
uint32 map_width
uint32 map_height
float32 map_resolution
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :robint_msgs/ExplorationGoal "e071b18ba3db984910845497c9be477d")


