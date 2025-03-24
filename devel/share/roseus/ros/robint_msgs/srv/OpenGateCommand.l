;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::OpenGateCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'OpenGateCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::OPENGATECOMMAND")
  (make-package "ROBINT_MSGS::OPENGATECOMMAND"))
(unless (find-package "ROBINT_MSGS::OPENGATECOMMANDREQUEST")
  (make-package "ROBINT_MSGS::OPENGATECOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::OPENGATECOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::OPENGATECOMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::OPENGATECOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::OPENGATECOMMANDREQUEST"))
(defconstant robint_msgs::OpenGateCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::OPENGATECOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::OPENGATECOMMANDREQUEST"))
(defconstant robint_msgs::OpenGateCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::OPENGATECOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::OPENGATECOMMANDREQUEST"))
(defconstant robint_msgs::OpenGateCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::OPENGATECOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::OPENGATECOMMANDREQUEST"))
(defconstant robint_msgs::OpenGateCommandRequest::*STOP* 3)

(defun robint_msgs::OpenGateCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::OpenGateCommandRequest::*START*)
        ((= const 1) 'robint_msgs::OpenGateCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::OpenGateCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::OpenGateCommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::OpenGateCommandRequest
  :super ros::object
  :slots (_command _gate_id ))

(defmethod robint_msgs::OpenGateCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:gate_id __gate_id) "")
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _gate_id (string __gate_id))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:gate_id
   (&optional __gate_id)
   (if __gate_id (setq _gate_id __gate_id)) _gate_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; string _gate_id
    4 (length _gate_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; string _gate_id
       (write-long (length _gate_id) s) (princ _gate_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _gate_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gate_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::OpenGateCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::OpenGateCommandResponse
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

(defclass robint_msgs::OpenGateCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::OpenGateCommand :md5sum-) "dba074575c8b62ebbbcc46f495065ed7")
(setf (get robint_msgs::OpenGateCommand :datatype-) "robint_msgs/OpenGateCommand")
(setf (get robint_msgs::OpenGateCommand :request) robint_msgs::OpenGateCommandRequest)
(setf (get robint_msgs::OpenGateCommand :response) robint_msgs::OpenGateCommandResponse)

(defmethod robint_msgs::OpenGateCommandRequest
  (:response () (instance robint_msgs::OpenGateCommandResponse :init)))

(setf (get robint_msgs::OpenGateCommandRequest :md5sum-) "dba074575c8b62ebbbcc46f495065ed7")
(setf (get robint_msgs::OpenGateCommandRequest :datatype-) "robint_msgs/OpenGateCommandRequest")
(setf (get robint_msgs::OpenGateCommandRequest :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string gate_id
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::OpenGateCommandResponse :md5sum-) "dba074575c8b62ebbbcc46f495065ed7")
(setf (get robint_msgs::OpenGateCommandResponse :datatype-) "robint_msgs/OpenGateCommandResponse")
(setf (get robint_msgs::OpenGateCommandResponse :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string gate_id
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/OpenGateCommand "dba074575c8b62ebbbcc46f495065ed7")


