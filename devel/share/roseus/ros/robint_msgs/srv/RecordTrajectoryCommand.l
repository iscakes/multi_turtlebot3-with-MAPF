;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RecordTrajectoryCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RecordTrajectoryCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMAND")
  (make-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMAND"))
(unless (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(defconstant robint_msgs::RecordTrajectoryCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(defconstant robint_msgs::RecordTrajectoryCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(defconstant robint_msgs::RecordTrajectoryCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(defconstant robint_msgs::RecordTrajectoryCommandRequest::*STOP* 3)
(intern "*CANCEL*" (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(shadow '*CANCEL* (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(defconstant robint_msgs::RecordTrajectoryCommandRequest::*CANCEL* 4)
(intern "*CONTOUR*" (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(shadow '*CONTOUR* (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(defconstant robint_msgs::RecordTrajectoryCommandRequest::*CONTOUR* 11)
(intern "*PATH*" (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(shadow '*PATH* (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDREQUEST"))
(defconstant robint_msgs::RecordTrajectoryCommandRequest::*PATH* 12)

(defun robint_msgs::RecordTrajectoryCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::RecordTrajectoryCommandRequest::*START*)
        ((= const 1) 'robint_msgs::RecordTrajectoryCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::RecordTrajectoryCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::RecordTrajectoryCommandRequest::*STOP*)
        ((= const 4) 'robint_msgs::RecordTrajectoryCommandRequest::*CANCEL*)
        ((= const 11) 'robint_msgs::RecordTrajectoryCommandRequest::*CONTOUR*)
        ((= const 12) 'robint_msgs::RecordTrajectoryCommandRequest::*PATH*)
        (t nil)))

(defclass robint_msgs::RecordTrajectoryCommandRequest
  :super ros::object
  :slots (_command _type ))

(defmethod robint_msgs::RecordTrajectoryCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _type (round __type))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(intern "*WORLD*" (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDRESPONSE"))
(shadow '*WORLD* (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDRESPONSE"))
(defconstant robint_msgs::RecordTrajectoryCommandResponse::*WORLD* 0)
(intern "*IMAGE*" (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDRESPONSE"))
(shadow '*IMAGE* (find-package "ROBINT_MSGS::RECORDTRAJECTORYCOMMANDRESPONSE"))
(defconstant robint_msgs::RecordTrajectoryCommandResponse::*IMAGE* 1)

(defun robint_msgs::RecordTrajectoryCommandResponse-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::RecordTrajectoryCommandResponse::*WORLD*)
        ((= const 1) 'robint_msgs::RecordTrajectoryCommandResponse::*IMAGE*)
        (t nil)))

(defclass robint_msgs::RecordTrajectoryCommandResponse
  :super ros::object
  :slots (_coordinate_mode _trajectory _success _error_code _message ))

(defmethod robint_msgs::RecordTrajectoryCommandResponse
  (:init
   (&key
    ((:coordinate_mode __coordinate_mode) 0)
    ((:trajectory __trajectory) (instance robint_msgs::PathWithPoint :init))
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _coordinate_mode (round __coordinate_mode))
   (setq _trajectory __trajectory)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:coordinate_mode
   (&optional __coordinate_mode)
   (if __coordinate_mode (setq _coordinate_mode __coordinate_mode)) _coordinate_mode)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint8 _coordinate_mode
    1
    ;; robint_msgs/PathWithPoint _trajectory
    (send _trajectory :serialization-length)
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _coordinate_mode
       (write-byte _coordinate_mode s)
     ;; robint_msgs/PathWithPoint _trajectory
       (send _trajectory :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _coordinate_mode
     (setq _coordinate_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; robint_msgs/PathWithPoint _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::RecordTrajectoryCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::RecordTrajectoryCommand :md5sum-) "a95c4c5dd7f9657113c5edf61d82b639")
(setf (get robint_msgs::RecordTrajectoryCommand :datatype-) "robint_msgs/RecordTrajectoryCommand")
(setf (get robint_msgs::RecordTrajectoryCommand :request) robint_msgs::RecordTrajectoryCommandRequest)
(setf (get robint_msgs::RecordTrajectoryCommand :response) robint_msgs::RecordTrajectoryCommandResponse)

(defmethod robint_msgs::RecordTrajectoryCommandRequest
  (:response () (instance robint_msgs::RecordTrajectoryCommandResponse :init)))

(setf (get robint_msgs::RecordTrajectoryCommandRequest :md5sum-) "a95c4c5dd7f9657113c5edf61d82b639")
(setf (get robint_msgs::RecordTrajectoryCommandRequest :datatype-) "robint_msgs/RecordTrajectoryCommandRequest")
(setf (get robint_msgs::RecordTrajectoryCommandRequest :definition-)
      "uint8 command
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
uint8 CANCEL=4
uint8 type
uint8 CONTOUR=11
uint8 PATH=12
---
uint8 coordinate_mode
uint8 WORLD=0
uint8 IMAGE=1
PathWithPoint trajectory
bool success
uint8 error_code
string message

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

(setf (get robint_msgs::RecordTrajectoryCommandResponse :md5sum-) "a95c4c5dd7f9657113c5edf61d82b639")
(setf (get robint_msgs::RecordTrajectoryCommandResponse :datatype-) "robint_msgs/RecordTrajectoryCommandResponse")
(setf (get robint_msgs::RecordTrajectoryCommandResponse :definition-)
      "uint8 command
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
uint8 CANCEL=4
uint8 type
uint8 CONTOUR=11
uint8 PATH=12
---
uint8 coordinate_mode
uint8 WORLD=0
uint8 IMAGE=1
PathWithPoint trajectory
bool success
uint8 error_code
string message

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



(provide :robint_msgs/RecordTrajectoryCommand "a95c4c5dd7f9657113c5edf61d82b639")


