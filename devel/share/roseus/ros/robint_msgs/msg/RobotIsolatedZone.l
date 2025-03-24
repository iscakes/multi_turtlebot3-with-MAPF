;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RobotIsolatedZone)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RobotIsolatedZone (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ROBOTISOLATEDZONE")
  (make-package "ROBINT_MSGS::ROBOTISOLATEDZONE"))

(in-package "ROS")
;;//! \htmlinclude RobotIsolatedZone.msg.html


(defclass robint_msgs::RobotIsolatedZone
  :super ros::object
  :slots (_zone_uuid _robot_list ))

(defmethod robint_msgs::RobotIsolatedZone
  (:init
   (&key
    ((:zone_uuid __zone_uuid) "")
    ((:robot_list __robot_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _zone_uuid (string __zone_uuid))
   (setq _robot_list __robot_list)
   self)
  (:zone_uuid
   (&optional __zone_uuid)
   (if __zone_uuid (setq _zone_uuid __zone_uuid)) _zone_uuid)
  (:robot_list
   (&optional __robot_list)
   (if __robot_list (setq _robot_list __robot_list)) _robot_list)
  (:serialization-length
   ()
   (+
    ;; string _zone_uuid
    4 (length _zone_uuid)
    ;; string[] _robot_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _robot_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _zone_uuid
       (write-long (length _zone_uuid) s) (princ _zone_uuid s)
     ;; string[] _robot_list
     (write-long (length _robot_list) s)
     (dolist (elem _robot_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _zone_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _zone_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _robot_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _robot_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::RobotIsolatedZone :md5sum-) "ae9554ce58aef29ade4877f7ded80370")
(setf (get robint_msgs::RobotIsolatedZone :datatype-) "robint_msgs/RobotIsolatedZone")
(setf (get robint_msgs::RobotIsolatedZone :definition-)
      "string zone_uuid
string[] robot_list
")



(provide :robint_msgs/RobotIsolatedZone "ae9554ce58aef29ade4877f7ded80370")


