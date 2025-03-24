;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CallElevatorCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CallElevatorCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CALLELEVATORCOMMAND")
  (make-package "ROBINT_MSGS::CALLELEVATORCOMMAND"))
(unless (find-package "ROBINT_MSGS::CALLELEVATORCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::CALLELEVATORCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::CALLELEVATORCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::CALLELEVATORCOMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::CALLELEVATORCOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::CALLELEVATORCOMMANDREQUEST"))
(defconstant robint_msgs::CallElevatorCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::CALLELEVATORCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::CALLELEVATORCOMMANDREQUEST"))
(defconstant robint_msgs::CallElevatorCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::CALLELEVATORCOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::CALLELEVATORCOMMANDREQUEST"))
(defconstant robint_msgs::CallElevatorCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::CALLELEVATORCOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::CALLELEVATORCOMMANDREQUEST"))
(defconstant robint_msgs::CallElevatorCommandRequest::*STOP* 3)

(defun robint_msgs::CallElevatorCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::CallElevatorCommandRequest::*START*)
        ((= const 1) 'robint_msgs::CallElevatorCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::CallElevatorCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::CallElevatorCommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::CallElevatorCommandRequest
  :super ros::object
  :slots (_command _building_name _from_floor _to_floor _in_elevator ))

(defmethod robint_msgs::CallElevatorCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:building_name __building_name) "")
    ((:from_floor __from_floor) 0)
    ((:to_floor __to_floor) 0)
    ((:in_elevator __in_elevator) nil)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _building_name (string __building_name))
   (setq _from_floor (round __from_floor))
   (setq _to_floor (round __to_floor))
   (setq _in_elevator __in_elevator)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:building_name
   (&optional __building_name)
   (if __building_name (setq _building_name __building_name)) _building_name)
  (:from_floor
   (&optional __from_floor)
   (if __from_floor (setq _from_floor __from_floor)) _from_floor)
  (:to_floor
   (&optional __to_floor)
   (if __to_floor (setq _to_floor __to_floor)) _to_floor)
  (:in_elevator
   (&optional (__in_elevator :null))
   (if (not (eq __in_elevator :null)) (setq _in_elevator __in_elevator)) _in_elevator)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; string _building_name
    4 (length _building_name)
    ;; int32 _from_floor
    4
    ;; int32 _to_floor
    4
    ;; bool _in_elevator
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; string _building_name
       (write-long (length _building_name) s) (princ _building_name s)
     ;; int32 _from_floor
       (write-long _from_floor s)
     ;; int32 _to_floor
       (write-long _to_floor s)
     ;; bool _in_elevator
       (if _in_elevator (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _building_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _from_floor
     (setq _from_floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _to_floor
     (setq _to_floor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _in_elevator
     (setq _in_elevator (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::CallElevatorCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::CallElevatorCommandResponse
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

(defclass robint_msgs::CallElevatorCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::CallElevatorCommand :md5sum-) "76382a8f79198018adfe306bd305cb26")
(setf (get robint_msgs::CallElevatorCommand :datatype-) "robint_msgs/CallElevatorCommand")
(setf (get robint_msgs::CallElevatorCommand :request) robint_msgs::CallElevatorCommandRequest)
(setf (get robint_msgs::CallElevatorCommand :response) robint_msgs::CallElevatorCommandResponse)

(defmethod robint_msgs::CallElevatorCommandRequest
  (:response () (instance robint_msgs::CallElevatorCommandResponse :init)))

(setf (get robint_msgs::CallElevatorCommandRequest :md5sum-) "76382a8f79198018adfe306bd305cb26")
(setf (get robint_msgs::CallElevatorCommandRequest :datatype-) "robint_msgs/CallElevatorCommandRequest")
(setf (get robint_msgs::CallElevatorCommandRequest :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string building_name
int32 from_floor
int32 to_floor
bool in_elevator
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::CallElevatorCommandResponse :md5sum-) "76382a8f79198018adfe306bd305cb26")
(setf (get robint_msgs::CallElevatorCommandResponse :datatype-) "robint_msgs/CallElevatorCommandResponse")
(setf (get robint_msgs::CallElevatorCommandResponse :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string building_name
int32 from_floor
int32 to_floor
bool in_elevator
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/CallElevatorCommand "76382a8f79198018adfe306bd305cb26")


