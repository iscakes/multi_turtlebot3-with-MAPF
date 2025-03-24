;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AutoExploreCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AutoExploreCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::AUTOEXPLORECOMMAND")
  (make-package "ROBINT_MSGS::AUTOEXPLORECOMMAND"))
(unless (find-package "ROBINT_MSGS::AUTOEXPLORECOMMANDREQUEST")
  (make-package "ROBINT_MSGS::AUTOEXPLORECOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::AUTOEXPLORECOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::AUTOEXPLORECOMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::AUTOEXPLORECOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::AUTOEXPLORECOMMANDREQUEST"))
(defconstant robint_msgs::AutoExploreCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::AUTOEXPLORECOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::AUTOEXPLORECOMMANDREQUEST"))
(defconstant robint_msgs::AutoExploreCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::AUTOEXPLORECOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::AUTOEXPLORECOMMANDREQUEST"))
(defconstant robint_msgs::AutoExploreCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::AUTOEXPLORECOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::AUTOEXPLORECOMMANDREQUEST"))
(defconstant robint_msgs::AutoExploreCommandRequest::*STOP* 3)

(defun robint_msgs::AutoExploreCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::AutoExploreCommandRequest::*START*)
        ((= const 1) 'robint_msgs::AutoExploreCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::AutoExploreCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::AutoExploreCommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::AutoExploreCommandRequest
  :super ros::object
  :slots (_command ))

(defmethod robint_msgs::AutoExploreCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::AutoExploreCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::AutoExploreCommandResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
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
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::AutoExploreCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::AutoExploreCommand :md5sum-) "2a8aa6d49f12807a85b62e57d3a33334")
(setf (get robint_msgs::AutoExploreCommand :datatype-) "robint_msgs/AutoExploreCommand")
(setf (get robint_msgs::AutoExploreCommand :request) robint_msgs::AutoExploreCommandRequest)
(setf (get robint_msgs::AutoExploreCommand :response) robint_msgs::AutoExploreCommandResponse)

(defmethod robint_msgs::AutoExploreCommandRequest
  (:response () (instance robint_msgs::AutoExploreCommandResponse :init)))

(setf (get robint_msgs::AutoExploreCommandRequest :md5sum-) "2a8aa6d49f12807a85b62e57d3a33334")
(setf (get robint_msgs::AutoExploreCommandRequest :datatype-) "robint_msgs/AutoExploreCommandRequest")
(setf (get robint_msgs::AutoExploreCommandRequest :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::AutoExploreCommandResponse :md5sum-) "2a8aa6d49f12807a85b62e57d3a33334")
(setf (get robint_msgs::AutoExploreCommandResponse :datatype-) "robint_msgs/AutoExploreCommandResponse")
(setf (get robint_msgs::AutoExploreCommandResponse :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/AutoExploreCommand "2a8aa6d49f12807a85b62e57d3a33334")


