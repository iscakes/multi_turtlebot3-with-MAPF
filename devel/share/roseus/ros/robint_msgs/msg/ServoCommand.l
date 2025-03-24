;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ServoCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ServoCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SERVOCOMMAND")
  (make-package "ROBINT_MSGS::SERVOCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ServoCommand.msg.html


(defclass robint_msgs::ServoCommand
  :super ros::object
  :slots (_servo_ID _angle _runningtime ))

(defmethod robint_msgs::ServoCommand
  (:init
   (&key
    ((:servo_ID __servo_ID) "")
    ((:angle __angle) 0)
    ((:runningtime __runningtime) 0)
    )
   (send-super :init)
   (setq _servo_ID (string __servo_ID))
   (setq _angle (round __angle))
   (setq _runningtime (round __runningtime))
   self)
  (:servo_ID
   (&optional __servo_ID)
   (if __servo_ID (setq _servo_ID __servo_ID)) _servo_ID)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:runningtime
   (&optional __runningtime)
   (if __runningtime (setq _runningtime __runningtime)) _runningtime)
  (:serialization-length
   ()
   (+
    ;; string _servo_ID
    4 (length _servo_ID)
    ;; int16 _angle
    2
    ;; int16 _runningtime
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _servo_ID
       (write-long (length _servo_ID) s) (princ _servo_ID s)
     ;; int16 _angle
       (write-word _angle s)
     ;; int16 _runningtime
       (write-word _runningtime s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _servo_ID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _servo_ID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _angle
     (setq _angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _runningtime
     (setq _runningtime (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robint_msgs::ServoCommand :md5sum-) "055df8167a6869ba237fd86867a5bca5")
(setf (get robint_msgs::ServoCommand :datatype-) "robint_msgs/ServoCommand")
(setf (get robint_msgs::ServoCommand :definition-)
      "string servo_ID
int16 angle
int16 runningtime
")



(provide :robint_msgs/ServoCommand "055df8167a6869ba237fd86867a5bca5")


