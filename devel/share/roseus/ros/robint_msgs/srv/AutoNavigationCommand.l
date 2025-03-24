;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AutoNavigationCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AutoNavigationCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMAND")
  (make-package "ROBINT_MSGS::AUTONAVIGATIONCOMMAND"))
(unless (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*START*" (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDREQUEST"))
(defconstant robint_msgs::AutoNavigationCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDREQUEST"))
(defconstant robint_msgs::AutoNavigationCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDREQUEST"))
(defconstant robint_msgs::AutoNavigationCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::AUTONAVIGATIONCOMMANDREQUEST"))
(defconstant robint_msgs::AutoNavigationCommandRequest::*STOP* 3)

(defun robint_msgs::AutoNavigationCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::AutoNavigationCommandRequest::*START*)
        ((= const 1) 'robint_msgs::AutoNavigationCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::AutoNavigationCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::AutoNavigationCommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::AutoNavigationCommandRequest
  :super ros::object
  :slots (_location_name _location_uuid _command _goal ))

(defmethod robint_msgs::AutoNavigationCommandRequest
  (:init
   (&key
    ((:location_name __location_name) "")
    ((:location_uuid __location_uuid) "")
    ((:command __command) 0)
    ((:goal __goal) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _location_name (string __location_name))
   (setq _location_uuid (string __location_uuid))
   (setq _command (round __command))
   (setq _goal __goal)
   self)
  (:location_name
   (&optional __location_name)
   (if __location_name (setq _location_name __location_name)) _location_name)
  (:location_uuid
   (&optional __location_uuid)
   (if __location_uuid (setq _location_uuid __location_uuid)) _location_uuid)
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
    ;; string _location_name
    4 (length _location_name)
    ;; string _location_uuid
    4 (length _location_uuid)
    ;; uint8 _command
    1
    ;; geometry_msgs/PoseStamped _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location_name
       (write-long (length _location_name) s) (princ _location_name s)
     ;; string _location_uuid
       (write-long (length _location_uuid) s) (princ _location_uuid s)
     ;; uint8 _command
       (write-byte _command s)
     ;; geometry_msgs/PoseStamped _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::AutoNavigationCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::AutoNavigationCommandResponse
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

(defclass robint_msgs::AutoNavigationCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::AutoNavigationCommand :md5sum-) "8e5ed6d39361d738450eb8bf459912b8")
(setf (get robint_msgs::AutoNavigationCommand :datatype-) "robint_msgs/AutoNavigationCommand")
(setf (get robint_msgs::AutoNavigationCommand :request) robint_msgs::AutoNavigationCommandRequest)
(setf (get robint_msgs::AutoNavigationCommand :response) robint_msgs::AutoNavigationCommandResponse)

(defmethod robint_msgs::AutoNavigationCommandRequest
  (:response () (instance robint_msgs::AutoNavigationCommandResponse :init)))

(setf (get robint_msgs::AutoNavigationCommandRequest :md5sum-) "8e5ed6d39361d738450eb8bf459912b8")
(setf (get robint_msgs::AutoNavigationCommandRequest :datatype-) "robint_msgs/AutoNavigationCommandRequest")
(setf (get robint_msgs::AutoNavigationCommandRequest :definition-)
      "string location_name
string location_uuid
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

(setf (get robint_msgs::AutoNavigationCommandResponse :md5sum-) "8e5ed6d39361d738450eb8bf459912b8")
(setf (get robint_msgs::AutoNavigationCommandResponse :datatype-) "robint_msgs/AutoNavigationCommandResponse")
(setf (get robint_msgs::AutoNavigationCommandResponse :definition-)
      "string location_name
string location_uuid
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



(provide :robint_msgs/AutoNavigationCommand "8e5ed6d39361d738450eb8bf459912b8")


