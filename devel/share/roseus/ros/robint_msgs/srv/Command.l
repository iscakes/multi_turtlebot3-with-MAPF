;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::Command)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'Command (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::COMMAND")
  (make-package "ROBINT_MSGS::COMMAND"))
(unless (find-package "ROBINT_MSGS::COMMANDREQUEST")
  (make-package "ROBINT_MSGS::COMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::COMMANDRESPONSE")
  (make-package "ROBINT_MSGS::COMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::COMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::COMMANDREQUEST"))
(defconstant robint_msgs::CommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::COMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::COMMANDREQUEST"))
(defconstant robint_msgs::CommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::COMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::COMMANDREQUEST"))
(defconstant robint_msgs::CommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::COMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::COMMANDREQUEST"))
(defconstant robint_msgs::CommandRequest::*STOP* 3)

(defun robint_msgs::CommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::CommandRequest::*START*)
        ((= const 1) 'robint_msgs::CommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::CommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::CommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::CommandRequest
  :super ros::object
  :slots (_command _command_str ))

(defmethod robint_msgs::CommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:command_str __command_str) "")
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _command_str (string __command_str))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:command_str
   (&optional __command_str)
   (if __command_str (setq _command_str __command_str)) _command_str)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; string _command_str
    4 (length _command_str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; string _command_str
       (write-long (length _command_str) s) (princ _command_str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _command_str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command_str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::CommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::CommandResponse
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

(defclass robint_msgs::Command
  :super ros::object
  :slots ())

(setf (get robint_msgs::Command :md5sum-) "5d04c39ce79551e9cd033e644af5293f")
(setf (get robint_msgs::Command :datatype-) "robint_msgs/Command")
(setf (get robint_msgs::Command :request) robint_msgs::CommandRequest)
(setf (get robint_msgs::Command :response) robint_msgs::CommandResponse)

(defmethod robint_msgs::CommandRequest
  (:response () (instance robint_msgs::CommandResponse :init)))

(setf (get robint_msgs::CommandRequest :md5sum-) "5d04c39ce79551e9cd033e644af5293f")
(setf (get robint_msgs::CommandRequest :datatype-) "robint_msgs/CommandRequest")
(setf (get robint_msgs::CommandRequest :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string command_str
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::CommandResponse :md5sum-) "5d04c39ce79551e9cd033e644af5293f")
(setf (get robint_msgs::CommandResponse :datatype-) "robint_msgs/CommandResponse")
(setf (get robint_msgs::CommandResponse :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string command_str
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/Command "5d04c39ce79551e9cd033e644af5293f")


