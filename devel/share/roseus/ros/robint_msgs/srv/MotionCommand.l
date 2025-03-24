;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::MotionCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'MotionCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::MOTIONCOMMAND")
  (make-package "ROBINT_MSGS::MOTIONCOMMAND"))
(unless (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::MOTIONCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::MOTIONCOMMANDRESPONSE"))

(in-package "ROS")





(intern "*START*" (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(defconstant robint_msgs::MotionCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(defconstant robint_msgs::MotionCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(defconstant robint_msgs::MotionCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(defconstant robint_msgs::MotionCommandRequest::*STOP* 3)
(intern "*MOVE*" (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(shadow '*MOVE* (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(defconstant robint_msgs::MotionCommandRequest::*MOVE* 11)
(intern "*ROTATE*" (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(shadow '*ROTATE* (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(defconstant robint_msgs::MotionCommandRequest::*ROTATE* 12)
(intern "*CALL*" (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(shadow '*CALL* (find-package "ROBINT_MSGS::MOTIONCOMMANDREQUEST"))
(defconstant robint_msgs::MotionCommandRequest::*CALL* 13)

(defun robint_msgs::MotionCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::MotionCommandRequest::*START*)
        ((= const 1) 'robint_msgs::MotionCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::MotionCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::MotionCommandRequest::*STOP*)
        ((= const 11) 'robint_msgs::MotionCommandRequest::*MOVE*)
        ((= const 12) 'robint_msgs::MotionCommandRequest::*ROTATE*)
        ((= const 13) 'robint_msgs::MotionCommandRequest::*CALL*)
        (t nil)))

(defclass robint_msgs::MotionCommandRequest
  :super ros::object
  :slots (_command _type _dist _theta_degree ))

(defmethod robint_msgs::MotionCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:type __type) 0)
    ((:dist __dist) 0.0)
    ((:theta_degree __theta_degree) 0.0)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _type (round __type))
   (setq _dist (float __dist))
   (setq _theta_degree (float __theta_degree))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:theta_degree
   (&optional __theta_degree)
   (if __theta_degree (setq _theta_degree __theta_degree)) _theta_degree)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; uint8 _type
    1
    ;; float32 _dist
    4
    ;; float32 _theta_degree
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta_degree
       (sys::poke _theta_degree (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _dist
     (setq _dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta_degree
     (setq _theta_degree (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robint_msgs::MotionCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::MotionCommandResponse
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

(defclass robint_msgs::MotionCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::MotionCommand :md5sum-) "2cae5a401f113aafe8af556e3b9fcac1")
(setf (get robint_msgs::MotionCommand :datatype-) "robint_msgs/MotionCommand")
(setf (get robint_msgs::MotionCommand :request) robint_msgs::MotionCommandRequest)
(setf (get robint_msgs::MotionCommand :response) robint_msgs::MotionCommandResponse)

(defmethod robint_msgs::MotionCommandRequest
  (:response () (instance robint_msgs::MotionCommandResponse :init)))

(setf (get robint_msgs::MotionCommandRequest :md5sum-) "2cae5a401f113aafe8af556e3b9fcac1")
(setf (get robint_msgs::MotionCommandRequest :datatype-) "robint_msgs/MotionCommandRequest")
(setf (get robint_msgs::MotionCommandRequest :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
uint8 type
uint8 MOVE=11
uint8 ROTATE=12
uint8 CALL=13
float32 dist
float32 theta_degree
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::MotionCommandResponse :md5sum-) "2cae5a401f113aafe8af556e3b9fcac1")
(setf (get robint_msgs::MotionCommandResponse :datatype-) "robint_msgs/MotionCommandResponse")
(setf (get robint_msgs::MotionCommandResponse :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
uint8 type
uint8 MOVE=11
uint8 ROTATE=12
uint8 CALL=13
float32 dist
float32 theta_degree
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/MotionCommand "2cae5a401f113aafe8af556e3b9fcac1")


