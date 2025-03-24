;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::FollowingCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'FollowingCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::FOLLOWINGCOMMAND")
  (make-package "ROBINT_MSGS::FOLLOWINGCOMMAND"))
(unless (find-package "ROBINT_MSGS::FOLLOWINGCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::FOLLOWINGCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::FOLLOWINGCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::FOLLOWINGCOMMANDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*START*" (find-package "ROBINT_MSGS::FOLLOWINGCOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::FOLLOWINGCOMMANDREQUEST"))
(defconstant robint_msgs::FollowingCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::FOLLOWINGCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::FOLLOWINGCOMMANDREQUEST"))
(defconstant robint_msgs::FollowingCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::FOLLOWINGCOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::FOLLOWINGCOMMANDREQUEST"))
(defconstant robint_msgs::FollowingCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::FOLLOWINGCOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::FOLLOWINGCOMMANDREQUEST"))
(defconstant robint_msgs::FollowingCommandRequest::*STOP* 3)

(defun robint_msgs::FollowingCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::FollowingCommandRequest::*START*)
        ((= const 1) 'robint_msgs::FollowingCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::FollowingCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::FollowingCommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::FollowingCommandRequest
  :super ros::object
  :slots (_target_id _command _goal ))

(defmethod robint_msgs::FollowingCommandRequest
  (:init
   (&key
    ((:target_id __target_id) "")
    ((:command __command) 0)
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _target_id (string __target_id))
   (setq _command (round __command))
   (setq _goal __goal)
   self)
  (:target_id
   (&optional __target_id)
   (if __target_id (setq _target_id __target_id)) _target_id)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; string _target_id
    4 (length _target_id)
    ;; uint8 _command
    1
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _target_id
       (write-long (length _target_id) s) (princ _target_id s)
     ;; uint8 _command
       (write-byte _command s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _target_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::FollowingCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::FollowingCommandResponse
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

(defclass robint_msgs::FollowingCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::FollowingCommand :md5sum-) "a1053459f3503a3f90e54c4fc75a320a")
(setf (get robint_msgs::FollowingCommand :datatype-) "robint_msgs/FollowingCommand")
(setf (get robint_msgs::FollowingCommand :request) robint_msgs::FollowingCommandRequest)
(setf (get robint_msgs::FollowingCommand :response) robint_msgs::FollowingCommandResponse)

(defmethod robint_msgs::FollowingCommandRequest
  (:response () (instance robint_msgs::FollowingCommandResponse :init)))

(setf (get robint_msgs::FollowingCommandRequest :md5sum-) "a1053459f3503a3f90e54c4fc75a320a")
(setf (get robint_msgs::FollowingCommandRequest :datatype-) "robint_msgs/FollowingCommandRequest")
(setf (get robint_msgs::FollowingCommandRequest :definition-)
      "string target_id
uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
geometry_msgs/PoseStamped goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::FollowingCommandResponse :md5sum-) "a1053459f3503a3f90e54c4fc75a320a")
(setf (get robint_msgs::FollowingCommandResponse :datatype-) "robint_msgs/FollowingCommandResponse")
(setf (get robint_msgs::FollowingCommandResponse :definition-)
      "string target_id
uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
geometry_msgs/PoseStamped goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/FollowingCommand "a1053459f3503a3f90e54c4fc75a320a")


