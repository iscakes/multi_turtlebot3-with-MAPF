;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AutoCruiseCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AutoCruiseCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::AUTOCRUISECOMMAND")
  (make-package "ROBINT_MSGS::AUTOCRUISECOMMAND"))
(unless (find-package "ROBINT_MSGS::AUTOCRUISECOMMANDREQUEST")
  (make-package "ROBINT_MSGS::AUTOCRUISECOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::AUTOCRUISECOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::AUTOCRUISECOMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::AUTOCRUISECOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::AUTOCRUISECOMMANDREQUEST"))
(defconstant robint_msgs::AutoCruiseCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::AUTOCRUISECOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::AUTOCRUISECOMMANDREQUEST"))
(defconstant robint_msgs::AutoCruiseCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::AUTOCRUISECOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::AUTOCRUISECOMMANDREQUEST"))
(defconstant robint_msgs::AutoCruiseCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::AUTOCRUISECOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::AUTOCRUISECOMMANDREQUEST"))
(defconstant robint_msgs::AutoCruiseCommandRequest::*STOP* 3)

(defun robint_msgs::AutoCruiseCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::AutoCruiseCommandRequest::*START*)
        ((= const 1) 'robint_msgs::AutoCruiseCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::AutoCruiseCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::AutoCruiseCommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::AutoCruiseCommandRequest
  :super ros::object
  :slots (_task_name _task_uuid _command _start_location_uuid _end_location_uuid ))

(defmethod robint_msgs::AutoCruiseCommandRequest
  (:init
   (&key
    ((:task_name __task_name) "")
    ((:task_uuid __task_uuid) "")
    ((:command __command) 0)
    ((:start_location_uuid __start_location_uuid) "")
    ((:end_location_uuid __end_location_uuid) "")
    )
   (send-super :init)
   (setq _task_name (string __task_name))
   (setq _task_uuid (string __task_uuid))
   (setq _command (round __command))
   (setq _start_location_uuid (string __start_location_uuid))
   (setq _end_location_uuid (string __end_location_uuid))
   self)
  (:task_name
   (&optional __task_name)
   (if __task_name (setq _task_name __task_name)) _task_name)
  (:task_uuid
   (&optional __task_uuid)
   (if __task_uuid (setq _task_uuid __task_uuid)) _task_uuid)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:start_location_uuid
   (&optional __start_location_uuid)
   (if __start_location_uuid (setq _start_location_uuid __start_location_uuid)) _start_location_uuid)
  (:end_location_uuid
   (&optional __end_location_uuid)
   (if __end_location_uuid (setq _end_location_uuid __end_location_uuid)) _end_location_uuid)
  (:serialization-length
   ()
   (+
    ;; string _task_name
    4 (length _task_name)
    ;; string _task_uuid
    4 (length _task_uuid)
    ;; uint8 _command
    1
    ;; string _start_location_uuid
    4 (length _start_location_uuid)
    ;; string _end_location_uuid
    4 (length _end_location_uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task_name
       (write-long (length _task_name) s) (princ _task_name s)
     ;; string _task_uuid
       (write-long (length _task_uuid) s) (princ _task_uuid s)
     ;; uint8 _command
       (write-byte _command s)
     ;; string _start_location_uuid
       (write-long (length _start_location_uuid) s) (princ _start_location_uuid s)
     ;; string _end_location_uuid
       (write-long (length _end_location_uuid) s) (princ _end_location_uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _task_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _start_location_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_location_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_location_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_location_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::AutoCruiseCommandResponse
  :super ros::object
  :slots (_success _error_code _message _percent ))

(defmethod robint_msgs::AutoCruiseCommandResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    ((:percent __percent) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   (setq _percent (round __percent))
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
  (:percent
   (&optional __percent)
   (if __percent (setq _percent __percent)) _percent)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ;; string _message
    4 (length _message)
    ;; uint8 _percent
    1
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
     ;; uint8 _percent
       (write-byte _percent s)
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
   ;; uint8 _percent
     (setq _percent (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::AutoCruiseCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::AutoCruiseCommand :md5sum-) "13b775ca1ec1ffd6cc417222cb8e4b2e")
(setf (get robint_msgs::AutoCruiseCommand :datatype-) "robint_msgs/AutoCruiseCommand")
(setf (get robint_msgs::AutoCruiseCommand :request) robint_msgs::AutoCruiseCommandRequest)
(setf (get robint_msgs::AutoCruiseCommand :response) robint_msgs::AutoCruiseCommandResponse)

(defmethod robint_msgs::AutoCruiseCommandRequest
  (:response () (instance robint_msgs::AutoCruiseCommandResponse :init)))

(setf (get robint_msgs::AutoCruiseCommandRequest :md5sum-) "13b775ca1ec1ffd6cc417222cb8e4b2e")
(setf (get robint_msgs::AutoCruiseCommandRequest :datatype-) "robint_msgs/AutoCruiseCommandRequest")
(setf (get robint_msgs::AutoCruiseCommandRequest :definition-)
      "string task_name
string task_uuid
uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string start_location_uuid
string end_location_uuid
---
bool success
uint8 error_code
string message
uint8 percent
")

(setf (get robint_msgs::AutoCruiseCommandResponse :md5sum-) "13b775ca1ec1ffd6cc417222cb8e4b2e")
(setf (get robint_msgs::AutoCruiseCommandResponse :datatype-) "robint_msgs/AutoCruiseCommandResponse")
(setf (get robint_msgs::AutoCruiseCommandResponse :definition-)
      "string task_name
string task_uuid
uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string start_location_uuid
string end_location_uuid
---
bool success
uint8 error_code
string message
uint8 percent
")



(provide :robint_msgs/AutoCruiseCommand "13b775ca1ec1ffd6cc417222cb8e4b2e")


