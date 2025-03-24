;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CleaningArea)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CleaningArea (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CLEANINGAREA")
  (make-package "ROBINT_MSGS::CLEANINGAREA"))

(in-package "ROS")
;;//! \htmlinclude CleaningArea.msg.html


(defclass robint_msgs::CleaningArea
  :super ros::object
  :slots (_uuid _name _map_uuid _group_uuid _coverage_method _contour _paths _holes ))

(defmethod robint_msgs::CleaningArea
  (:init
   (&key
    ((:uuid __uuid) "")
    ((:name __name) "")
    ((:map_uuid __map_uuid) "")
    ((:group_uuid __group_uuid) "")
    ((:coverage_method __coverage_method) "")
    ((:contour __contour) (instance robint_msgs::PathWithPoint :init))
    ((:paths __paths) ())
    ((:holes __holes) ())
    )
   (send-super :init)
   (setq _uuid (string __uuid))
   (setq _name (string __name))
   (setq _map_uuid (string __map_uuid))
   (setq _group_uuid (string __group_uuid))
   (setq _coverage_method (string __coverage_method))
   (setq _contour __contour)
   (setq _paths __paths)
   (setq _holes __holes)
   self)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:group_uuid
   (&optional __group_uuid)
   (if __group_uuid (setq _group_uuid __group_uuid)) _group_uuid)
  (:coverage_method
   (&optional __coverage_method)
   (if __coverage_method (setq _coverage_method __coverage_method)) _coverage_method)
  (:contour
   (&rest __contour)
   (if (keywordp (car __contour))
       (send* _contour __contour)
     (progn
       (if __contour (setq _contour (car __contour)))
       _contour)))
  (:paths
   (&rest __paths)
   (if (keywordp (car __paths))
       (send* _paths __paths)
     (progn
       (if __paths (setq _paths (car __paths)))
       _paths)))
  (:holes
   (&rest __holes)
   (if (keywordp (car __holes))
       (send* _holes __holes)
     (progn
       (if __holes (setq _holes (car __holes)))
       _holes)))
  (:serialization-length
   ()
   (+
    ;; string _uuid
    4 (length _uuid)
    ;; string _name
    4 (length _name)
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; string _group_uuid
    4 (length _group_uuid)
    ;; string _coverage_method
    4 (length _coverage_method)
    ;; robint_msgs/PathWithPoint _contour
    (send _contour :serialization-length)
    ;; robint_msgs/PathWithPoint[] _paths
    (apply #'+ (send-all _paths :serialization-length)) 4
    ;; robint_msgs/PathWithPoint[] _holes
    (apply #'+ (send-all _holes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; string _group_uuid
       (write-long (length _group_uuid) s) (princ _group_uuid s)
     ;; string _coverage_method
       (write-long (length _coverage_method) s) (princ _coverage_method s)
     ;; robint_msgs/PathWithPoint _contour
       (send _contour :serialize s)
     ;; robint_msgs/PathWithPoint[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
       (send elem :serialize s)
       )
     ;; robint_msgs/PathWithPoint[] _holes
     (write-long (length _holes) s)
     (dolist (elem _holes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _coverage_method
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _coverage_method (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robint_msgs/PathWithPoint _contour
     (send _contour :deserialize buf ptr-) (incf ptr- (send _contour :serialization-length))
   ;; robint_msgs/PathWithPoint[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (let (r) (dotimes (i n) (push (instance robint_msgs::PathWithPoint :init) r)) r))
     (dolist (elem- _paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robint_msgs/PathWithPoint[] _holes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _holes (let (r) (dotimes (i n) (push (instance robint_msgs::PathWithPoint :init) r)) r))
     (dolist (elem- _holes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::CleaningArea :md5sum-) "d085d456f94676961740fbaa496c8e73")
(setf (get robint_msgs::CleaningArea :datatype-) "robint_msgs/CleaningArea")
(setf (get robint_msgs::CleaningArea :definition-)
      "string uuid
string name
string map_uuid
string group_uuid
string coverage_method
PathWithPoint contour
PathWithPoint[] paths
PathWithPoint[] holes
================================================================================
MSG: robint_msgs/PathWithPoint
uint32 id
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :robint_msgs/CleaningArea "d085d456f94676961740fbaa496c8e73")


