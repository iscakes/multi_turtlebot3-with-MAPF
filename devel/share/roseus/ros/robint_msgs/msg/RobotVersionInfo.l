;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RobotVersionInfo)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RobotVersionInfo (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ROBOTVERSIONINFO")
  (make-package "ROBINT_MSGS::ROBOTVERSIONINFO"))

(in-package "ROS")
;;//! \htmlinclude RobotVersionInfo.msg.html


(defclass robint_msgs::RobotVersionInfo
  :super ros::object
  :slots (_robot_id _firmware_version ))

(defmethod robint_msgs::RobotVersionInfo
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:firmware_version __firmware_version) "")
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _firmware_version (string __firmware_version))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:firmware_version
   (&optional __firmware_version)
   (if __firmware_version (setq _firmware_version __firmware_version)) _firmware_version)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _firmware_version
    4 (length _firmware_version)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _firmware_version
       (write-long (length _firmware_version) s) (princ _firmware_version s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _firmware_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firmware_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robint_msgs::RobotVersionInfo :md5sum-) "3dc3f7c1863c6b92ab7be18be30122c2")
(setf (get robint_msgs::RobotVersionInfo :datatype-) "robint_msgs/RobotVersionInfo")
(setf (get robint_msgs::RobotVersionInfo :definition-)
      "string robot_id
string firmware_version
")



(provide :robint_msgs/RobotVersionInfo "3dc3f7c1863c6b92ab7be18be30122c2")


