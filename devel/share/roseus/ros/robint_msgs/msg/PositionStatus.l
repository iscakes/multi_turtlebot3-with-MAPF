;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::PositionStatus)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'PositionStatus (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::POSITIONSTATUS")
  (make-package "ROBINT_MSGS::POSITIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PositionStatus.msg.html


(intern "*NORMAL*" (find-package "ROBINT_MSGS::POSITIONSTATUS"))
(shadow '*NORMAL* (find-package "ROBINT_MSGS::POSITIONSTATUS"))
(defconstant robint_msgs::PositionStatus::*NORMAL* 0)
(intern "*UNKNOWN*" (find-package "ROBINT_MSGS::POSITIONSTATUS"))
(shadow '*UNKNOWN* (find-package "ROBINT_MSGS::POSITIONSTATUS"))
(defconstant robint_msgs::PositionStatus::*UNKNOWN* 1)
(intern "*LOCALIZATION_ERROR*" (find-package "ROBINT_MSGS::POSITIONSTATUS"))
(shadow '*LOCALIZATION_ERROR* (find-package "ROBINT_MSGS::POSITIONSTATUS"))
(defconstant robint_msgs::PositionStatus::*LOCALIZATION_ERROR* 2)

(defun robint_msgs::PositionStatus-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::PositionStatus::*NORMAL*)
        ((= const 1) 'robint_msgs::PositionStatus::*UNKNOWN*)
        ((= const 2) 'robint_msgs::PositionStatus::*LOCALIZATION_ERROR*)
        (t nil)))

(defclass robint_msgs::PositionStatus
  :super ros::object
  :slots (_status _localization_status ))

(defmethod robint_msgs::PositionStatus
  (:init
   (&key
    ((:status __status) 0)
    ((:localization_status __localization_status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _localization_status (round __localization_status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:localization_status
   (&optional __localization_status)
   (if __localization_status (setq _localization_status __localization_status)) _localization_status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; uint8 _localization_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _localization_status
       (write-byte _localization_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _localization_status
     (setq _localization_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::PositionStatus :md5sum-) "9f79e0da31ae4de315253c90cc1b04d0")
(setf (get robint_msgs::PositionStatus :datatype-) "robint_msgs/PositionStatus")
(setf (get robint_msgs::PositionStatus :definition-)
      "uint8 status
uint8 localization_status
uint8 NORMAL=0
uint8 UNKNOWN=1
uint8 LOCALIZATION_ERROR=2
")



(provide :robint_msgs/PositionStatus "9f79e0da31ae4de315253c90cc1b04d0")


