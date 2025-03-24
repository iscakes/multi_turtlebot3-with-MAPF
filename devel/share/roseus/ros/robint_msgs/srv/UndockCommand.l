;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::UndockCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'UndockCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::UNDOCKCOMMAND")
  (make-package "ROBINT_MSGS::UNDOCKCOMMAND"))
(unless (find-package "ROBINT_MSGS::UNDOCKCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::UNDOCKCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::UNDOCKCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::UNDOCKCOMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::UNDOCKCOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::UNDOCKCOMMANDREQUEST"))
(defconstant robint_msgs::UndockCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::UNDOCKCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::UNDOCKCOMMANDREQUEST"))
(defconstant robint_msgs::UndockCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::UNDOCKCOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::UNDOCKCOMMANDREQUEST"))
(defconstant robint_msgs::UndockCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::UNDOCKCOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::UNDOCKCOMMANDREQUEST"))
(defconstant robint_msgs::UndockCommandRequest::*STOP* 3)

(defun robint_msgs::UndockCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::UndockCommandRequest::*START*)
        ((= const 1) 'robint_msgs::UndockCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::UndockCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::UndockCommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::UndockCommandRequest
  :super ros::object
  :slots (_command ))

(defmethod robint_msgs::UndockCommandRequest
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

(defclass robint_msgs::UndockCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::UndockCommandResponse
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

(defclass robint_msgs::UndockCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::UndockCommand :md5sum-) "2a8aa6d49f12807a85b62e57d3a33334")
(setf (get robint_msgs::UndockCommand :datatype-) "robint_msgs/UndockCommand")
(setf (get robint_msgs::UndockCommand :request) robint_msgs::UndockCommandRequest)
(setf (get robint_msgs::UndockCommand :response) robint_msgs::UndockCommandResponse)

(defmethod robint_msgs::UndockCommandRequest
  (:response () (instance robint_msgs::UndockCommandResponse :init)))

(setf (get robint_msgs::UndockCommandRequest :md5sum-) "2a8aa6d49f12807a85b62e57d3a33334")
(setf (get robint_msgs::UndockCommandRequest :datatype-) "robint_msgs/UndockCommandRequest")
(setf (get robint_msgs::UndockCommandRequest :definition-)
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

(setf (get robint_msgs::UndockCommandResponse :md5sum-) "2a8aa6d49f12807a85b62e57d3a33334")
(setf (get robint_msgs::UndockCommandResponse :datatype-) "robint_msgs/UndockCommandResponse")
(setf (get robint_msgs::UndockCommandResponse :definition-)
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



(provide :robint_msgs/UndockCommand "2a8aa6d49f12807a85b62e57d3a33334")


