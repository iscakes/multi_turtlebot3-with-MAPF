;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::DockCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'DockCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::DOCKCOMMAND")
  (make-package "ROBINT_MSGS::DOCKCOMMAND"))
(unless (find-package "ROBINT_MSGS::DOCKCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::DOCKCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::DOCKCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::DOCKCOMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::DOCKCOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::DOCKCOMMANDREQUEST"))
(defconstant robint_msgs::DockCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::DOCKCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::DOCKCOMMANDREQUEST"))
(defconstant robint_msgs::DockCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::DOCKCOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::DOCKCOMMANDREQUEST"))
(defconstant robint_msgs::DockCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::DOCKCOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::DOCKCOMMANDREQUEST"))
(defconstant robint_msgs::DockCommandRequest::*STOP* 3)

(defun robint_msgs::DockCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::DockCommandRequest::*START*)
        ((= const 1) 'robint_msgs::DockCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::DockCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::DockCommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::DockCommandRequest
  :super ros::object
  :slots (_command _current_loc_group ))

(defmethod robint_msgs::DockCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:current_loc_group __current_loc_group) "")
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _current_loc_group (string __current_loc_group))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:current_loc_group
   (&optional __current_loc_group)
   (if __current_loc_group (setq _current_loc_group __current_loc_group)) _current_loc_group)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; string _current_loc_group
    4 (length _current_loc_group)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; string _current_loc_group
       (write-long (length _current_loc_group) s) (princ _current_loc_group s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _current_loc_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_loc_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::DockCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::DockCommandResponse
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

(defclass robint_msgs::DockCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::DockCommand :md5sum-) "04ef91de9a41c0204d8f06a5ea72526d")
(setf (get robint_msgs::DockCommand :datatype-) "robint_msgs/DockCommand")
(setf (get robint_msgs::DockCommand :request) robint_msgs::DockCommandRequest)
(setf (get robint_msgs::DockCommand :response) robint_msgs::DockCommandResponse)

(defmethod robint_msgs::DockCommandRequest
  (:response () (instance robint_msgs::DockCommandResponse :init)))

(setf (get robint_msgs::DockCommandRequest :md5sum-) "04ef91de9a41c0204d8f06a5ea72526d")
(setf (get robint_msgs::DockCommandRequest :datatype-) "robint_msgs/DockCommandRequest")
(setf (get robint_msgs::DockCommandRequest :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string current_loc_group  # \"CONTAINER\", \"DEFAULT_CHARGE_BASE\"
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::DockCommandResponse :md5sum-) "04ef91de9a41c0204d8f06a5ea72526d")
(setf (get robint_msgs::DockCommandResponse :datatype-) "robint_msgs/DockCommandResponse")
(setf (get robint_msgs::DockCommandResponse :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string current_loc_group  # \"CONTAINER\", \"DEFAULT_CHARGE_BASE\"
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/DockCommand "04ef91de9a41c0204d8f06a5ea72526d")


