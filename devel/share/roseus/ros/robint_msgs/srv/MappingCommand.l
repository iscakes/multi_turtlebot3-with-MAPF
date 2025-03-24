;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::MappingCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'MappingCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::MAPPINGCOMMAND")
  (make-package "ROBINT_MSGS::MAPPINGCOMMAND"))
(unless (find-package "ROBINT_MSGS::MAPPINGCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::MAPPINGCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::MAPPINGCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::MAPPINGCOMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::MAPPINGCOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::MAPPINGCOMMANDREQUEST"))
(defconstant robint_msgs::MappingCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::MAPPINGCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::MAPPINGCOMMANDREQUEST"))
(defconstant robint_msgs::MappingCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::MAPPINGCOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::MAPPINGCOMMANDREQUEST"))
(defconstant robint_msgs::MappingCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::MAPPINGCOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::MAPPINGCOMMANDREQUEST"))
(defconstant robint_msgs::MappingCommandRequest::*STOP* 3)

(defun robint_msgs::MappingCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::MappingCommandRequest::*START*)
        ((= const 1) 'robint_msgs::MappingCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::MappingCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::MappingCommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::MappingCommandRequest
  :super ros::object
  :slots (_command _exploration _low_resolution ))

(defmethod robint_msgs::MappingCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:exploration __exploration) nil)
    ((:low_resolution __low_resolution) nil)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _exploration __exploration)
   (setq _low_resolution __low_resolution)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:exploration
   (&optional (__exploration :null))
   (if (not (eq __exploration :null)) (setq _exploration __exploration)) _exploration)
  (:low_resolution
   (&optional (__low_resolution :null))
   (if (not (eq __low_resolution :null)) (setq _low_resolution __low_resolution)) _low_resolution)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; bool _exploration
    1
    ;; bool _low_resolution
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; bool _exploration
       (if _exploration (write-byte -1 s) (write-byte 0 s))
     ;; bool _low_resolution
       (if _low_resolution (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _exploration
     (setq _exploration (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _low_resolution
     (setq _low_resolution (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::MappingCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::MappingCommandResponse
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

(defclass robint_msgs::MappingCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::MappingCommand :md5sum-) "a1bea852b6ad33a4d1d554a92e22d008")
(setf (get robint_msgs::MappingCommand :datatype-) "robint_msgs/MappingCommand")
(setf (get robint_msgs::MappingCommand :request) robint_msgs::MappingCommandRequest)
(setf (get robint_msgs::MappingCommand :response) robint_msgs::MappingCommandResponse)

(defmethod robint_msgs::MappingCommandRequest
  (:response () (instance robint_msgs::MappingCommandResponse :init)))

(setf (get robint_msgs::MappingCommandRequest :md5sum-) "a1bea852b6ad33a4d1d554a92e22d008")
(setf (get robint_msgs::MappingCommandRequest :datatype-) "robint_msgs/MappingCommandRequest")
(setf (get robint_msgs::MappingCommandRequest :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
bool exploration
bool low_resolution
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::MappingCommandResponse :md5sum-) "a1bea852b6ad33a4d1d554a92e22d008")
(setf (get robint_msgs::MappingCommandResponse :datatype-) "robint_msgs/MappingCommandResponse")
(setf (get robint_msgs::MappingCommandResponse :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
bool exploration
bool low_resolution
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/MappingCommand "a1bea852b6ad33a4d1d554a92e22d008")


