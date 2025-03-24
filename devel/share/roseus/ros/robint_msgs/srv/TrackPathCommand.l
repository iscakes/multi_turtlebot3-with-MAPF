;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::TrackPathCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'TrackPathCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::TRACKPATHCOMMAND")
  (make-package "ROBINT_MSGS::TRACKPATHCOMMAND"))
(unless (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::TRACKPATHCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::TRACKPATHCOMMANDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*START*" (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(defconstant robint_msgs::TrackPathCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(defconstant robint_msgs::TrackPathCommandRequest::*PAUSE* 1)
(intern "*CONTINUE*" (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(shadow '*CONTINUE* (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(defconstant robint_msgs::TrackPathCommandRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(defconstant robint_msgs::TrackPathCommandRequest::*STOP* 3)
(intern "*BACKANDFORTH*" (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(shadow '*BACKANDFORTH* (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(defconstant robint_msgs::TrackPathCommandRequest::*BACKANDFORTH* 0)
(intern "*LOOP*" (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(shadow '*LOOP* (find-package "ROBINT_MSGS::TRACKPATHCOMMANDREQUEST"))
(defconstant robint_msgs::TrackPathCommandRequest::*LOOP* 1)

(defun robint_msgs::TrackPathCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::TrackPathCommandRequest::*START*)
        ((= const 1) 'robint_msgs::TrackPathCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::TrackPathCommandRequest::*CONTINUE*)
        ((= const 3) 'robint_msgs::TrackPathCommandRequest::*STOP*)
        ((= const 0) 'robint_msgs::TrackPathCommandRequest::*BackAndForth*)
        ((= const 1) 'robint_msgs::TrackPathCommandRequest::*Loop*)
        (t nil)))

(defclass robint_msgs::TrackPathCommandRequest
  :super ros::object
  :slots (_command _path_uuid _mode _count _nav_to_start _end_pose ))

(defmethod robint_msgs::TrackPathCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:path_uuid __path_uuid) "")
    ((:mode __mode) 0)
    ((:count __count) 0)
    ((:nav_to_start __nav_to_start) nil)
    ((:end_pose __end_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _path_uuid (string __path_uuid))
   (setq _mode (round __mode))
   (setq _count (round __count))
   (setq _nav_to_start __nav_to_start)
   (setq _end_pose __end_pose)
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:path_uuid
   (&optional __path_uuid)
   (if __path_uuid (setq _path_uuid __path_uuid)) _path_uuid)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:nav_to_start
   (&optional (__nav_to_start :null))
   (if (not (eq __nav_to_start :null)) (setq _nav_to_start __nav_to_start)) _nav_to_start)
  (:end_pose
   (&rest __end_pose)
   (if (keywordp (car __end_pose))
       (send* _end_pose __end_pose)
     (progn
       (if __end_pose (setq _end_pose (car __end_pose)))
       _end_pose)))
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; string _path_uuid
    4 (length _path_uuid)
    ;; uint8 _mode
    1
    ;; int32 _count
    4
    ;; bool _nav_to_start
    1
    ;; geometry_msgs/Pose _end_pose
    (send _end_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; string _path_uuid
       (write-long (length _path_uuid) s) (princ _path_uuid s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; int32 _count
       (write-long _count s)
     ;; bool _nav_to_start
       (if _nav_to_start (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _end_pose
       (send _end_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _path_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _nav_to_start
     (setq _nav_to_start (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _end_pose
     (send _end_pose :deserialize buf ptr-) (incf ptr- (send _end_pose :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::TrackPathCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::TrackPathCommandResponse
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

(defclass robint_msgs::TrackPathCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::TrackPathCommand :md5sum-) "6b8d1ea369c9419e81b9375c3cef4b05")
(setf (get robint_msgs::TrackPathCommand :datatype-) "robint_msgs/TrackPathCommand")
(setf (get robint_msgs::TrackPathCommand :request) robint_msgs::TrackPathCommandRequest)
(setf (get robint_msgs::TrackPathCommand :response) robint_msgs::TrackPathCommandResponse)

(defmethod robint_msgs::TrackPathCommandRequest
  (:response () (instance robint_msgs::TrackPathCommandResponse :init)))

(setf (get robint_msgs::TrackPathCommandRequest :md5sum-) "6b8d1ea369c9419e81b9375c3cef4b05")
(setf (get robint_msgs::TrackPathCommandRequest :datatype-) "robint_msgs/TrackPathCommandRequest")
(setf (get robint_msgs::TrackPathCommandRequest :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string path_uuid
uint8 mode
uint8 BackAndForth=0
uint8 Loop=1
int32 count
bool nav_to_start
geometry_msgs/Pose end_pose

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

(setf (get robint_msgs::TrackPathCommandResponse :md5sum-) "6b8d1ea369c9419e81b9375c3cef4b05")
(setf (get robint_msgs::TrackPathCommandResponse :datatype-) "robint_msgs/TrackPathCommandResponse")
(setf (get robint_msgs::TrackPathCommandResponse :definition-)
      "uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 CONTINUE=2
uint8 STOP=3
string path_uuid
uint8 mode
uint8 BackAndForth=0
uint8 Loop=1
int32 count
bool nav_to_start
geometry_msgs/Pose end_pose

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



(provide :robint_msgs/TrackPathCommand "6b8d1ea369c9419e81b9375c3cef4b05")


