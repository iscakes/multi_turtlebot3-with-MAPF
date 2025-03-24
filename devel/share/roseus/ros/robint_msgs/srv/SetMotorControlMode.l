;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SetMotorControlMode)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SetMotorControlMode (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SETMOTORCONTROLMODE")
  (make-package "ROBINT_MSGS::SETMOTORCONTROLMODE"))
(unless (find-package "ROBINT_MSGS::SETMOTORCONTROLMODEREQUEST")
  (make-package "ROBINT_MSGS::SETMOTORCONTROLMODEREQUEST"))
(unless (find-package "ROBINT_MSGS::SETMOTORCONTROLMODERESPONSE")
  (make-package "ROBINT_MSGS::SETMOTORCONTROLMODERESPONSE"))

(in-package "ROS")





(intern "*PARK*" (find-package "ROBINT_MSGS::SETMOTORCONTROLMODEREQUEST"))
(shadow '*PARK* (find-package "ROBINT_MSGS::SETMOTORCONTROLMODEREQUEST"))
(defconstant robint_msgs::SetMotorControlModeRequest::*PARK* 0)
(intern "*MANUAL*" (find-package "ROBINT_MSGS::SETMOTORCONTROLMODEREQUEST"))
(shadow '*MANUAL* (find-package "ROBINT_MSGS::SETMOTORCONTROLMODEREQUEST"))
(defconstant robint_msgs::SetMotorControlModeRequest::*MANUAL* 1)
(intern "*AUTO*" (find-package "ROBINT_MSGS::SETMOTORCONTROLMODEREQUEST"))
(shadow '*AUTO* (find-package "ROBINT_MSGS::SETMOTORCONTROLMODEREQUEST"))
(defconstant robint_msgs::SetMotorControlModeRequest::*AUTO* 2)

(defun robint_msgs::SetMotorControlModeRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::SetMotorControlModeRequest::*PARK*)
        ((= const 1) 'robint_msgs::SetMotorControlModeRequest::*MANUAL*)
        ((= const 2) 'robint_msgs::SetMotorControlModeRequest::*AUTO*)
        (t nil)))

(defclass robint_msgs::SetMotorControlModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod robint_msgs::SetMotorControlModeRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::SetMotorControlModeResponse
  :super ros::object
  :slots (_success ))

(defmethod robint_msgs::SetMotorControlModeResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::SetMotorControlMode
  :super ros::object
  :slots ())

(setf (get robint_msgs::SetMotorControlMode :md5sum-) "b40f8acade9ef49cd514ae09c667e3fe")
(setf (get robint_msgs::SetMotorControlMode :datatype-) "robint_msgs/SetMotorControlMode")
(setf (get robint_msgs::SetMotorControlMode :request) robint_msgs::SetMotorControlModeRequest)
(setf (get robint_msgs::SetMotorControlMode :response) robint_msgs::SetMotorControlModeResponse)

(defmethod robint_msgs::SetMotorControlModeRequest
  (:response () (instance robint_msgs::SetMotorControlModeResponse :init)))

(setf (get robint_msgs::SetMotorControlModeRequest :md5sum-) "b40f8acade9ef49cd514ae09c667e3fe")
(setf (get robint_msgs::SetMotorControlModeRequest :datatype-) "robint_msgs/SetMotorControlModeRequest")
(setf (get robint_msgs::SetMotorControlModeRequest :definition-)
      "uint8 mode
uint8 PARK=0
uint8 MANUAL=1
uint8 AUTO=2
---
bool success
")

(setf (get robint_msgs::SetMotorControlModeResponse :md5sum-) "b40f8acade9ef49cd514ae09c667e3fe")
(setf (get robint_msgs::SetMotorControlModeResponse :datatype-) "robint_msgs/SetMotorControlModeResponse")
(setf (get robint_msgs::SetMotorControlModeResponse :definition-)
      "uint8 mode
uint8 PARK=0
uint8 MANUAL=1
uint8 AUTO=2
---
bool success
")



(provide :robint_msgs/SetMotorControlMode "b40f8acade9ef49cd514ae09c667e3fe")


