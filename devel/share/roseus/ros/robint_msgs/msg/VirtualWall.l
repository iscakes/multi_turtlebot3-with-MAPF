;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::VirtualWall)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'VirtualWall (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::VIRTUALWALL")
  (make-package "ROBINT_MSGS::VIRTUALWALL"))

(in-package "ROS")
;;//! \htmlinclude VirtualWall.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*LINE*" (find-package "ROBINT_MSGS::VIRTUALWALL"))
(shadow '*LINE* (find-package "ROBINT_MSGS::VIRTUALWALL"))
(defconstant robint_msgs::VirtualWall::*LINE* 0)
(intern "*RECTANGLE*" (find-package "ROBINT_MSGS::VIRTUALWALL"))
(shadow '*RECTANGLE* (find-package "ROBINT_MSGS::VIRTUALWALL"))
(defconstant robint_msgs::VirtualWall::*RECTANGLE* 1)
(intern "*POLYGON*" (find-package "ROBINT_MSGS::VIRTUALWALL"))
(shadow '*POLYGON* (find-package "ROBINT_MSGS::VIRTUALWALL"))
(defconstant robint_msgs::VirtualWall::*POLYGON* 2)

(defun robint_msgs::VirtualWall-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::VirtualWall::*Line*)
        ((= const 1) 'robint_msgs::VirtualWall::*Rectangle*)
        ((= const 2) 'robint_msgs::VirtualWall::*Polygon*)
        (t nil)))

(defclass robint_msgs::VirtualWall
  :super ros::object
  :slots (_id _type _vw_uuid _vw_name _map_uuid _group_uuid _points ))

(defmethod robint_msgs::VirtualWall
  (:init
   (&key
    ((:id __id) "")
    ((:type __type) 0)
    ((:vw_uuid __vw_uuid) "")
    ((:vw_name __vw_name) "")
    ((:map_uuid __map_uuid) "")
    ((:group_uuid __group_uuid) "")
    ((:points __points) ())
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _type (round __type))
   (setq _vw_uuid (string __vw_uuid))
   (setq _vw_name (string __vw_name))
   (setq _map_uuid (string __map_uuid))
   (setq _group_uuid (string __group_uuid))
   (setq _points __points)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:vw_uuid
   (&optional __vw_uuid)
   (if __vw_uuid (setq _vw_uuid __vw_uuid)) _vw_uuid)
  (:vw_name
   (&optional __vw_name)
   (if __vw_name (setq _vw_name __vw_name)) _vw_name)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:group_uuid
   (&optional __group_uuid)
   (if __group_uuid (setq _group_uuid __group_uuid)) _group_uuid)
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
    ;; string _id
    4 (length _id)
    ;; uint8 _type
    1
    ;; string _vw_uuid
    4 (length _vw_uuid)
    ;; string _vw_name
    4 (length _vw_name)
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; string _group_uuid
    4 (length _group_uuid)
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; uint8 _type
       (write-byte _type s)
     ;; string _vw_uuid
       (write-long (length _vw_uuid) s) (princ _vw_uuid s)
     ;; string _vw_name
       (write-long (length _vw_name) s) (princ _vw_name s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; string _group_uuid
       (write-long (length _group_uuid) s) (princ _group_uuid s)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _vw_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vw_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _vw_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vw_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get robint_msgs::VirtualWall :md5sum-) "24e716918fa2c6fa0da0e5ec3950f548")
(setf (get robint_msgs::VirtualWall :datatype-) "robint_msgs/VirtualWall")
(setf (get robint_msgs::VirtualWall :definition-)
      "string id
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



(provide :robint_msgs/VirtualWall "24e716918fa2c6fa0da0e5ec3950f548")


