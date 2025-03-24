;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::IsolatedWait)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'IsolatedWait (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ISOLATEDWAIT")
  (make-package "ROBINT_MSGS::ISOLATEDWAIT"))

(in-package "ROS")
;;//! \htmlinclude IsolatedWait.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::IsolatedWait
  :super ros::object
  :slots (_pose _uuid _direct ))

(defmethod robint_msgs::IsolatedWait
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:uuid __uuid) "")
    ((:direct __direct) nil)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _uuid (string __uuid))
   (setq _direct __direct)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:direct
   (&optional (__direct :null))
   (if (not (eq __direct :null)) (setq _direct __direct)) _direct)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string _uuid
    4 (length _uuid)
    ;; bool _direct
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; bool _direct
       (if _direct (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _direct
     (setq _direct (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::IsolatedWait :md5sum-) "daf9e3b0429e595e00ee93cf39383683")
(setf (get robint_msgs::IsolatedWait :datatype-) "robint_msgs/IsolatedWait")
(setf (get robint_msgs::IsolatedWait :definition-)
      "geometry_msgs/Pose pose
string uuid
bool direct
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



(provide :robint_msgs/IsolatedWait "daf9e3b0429e595e00ee93cf39383683")


