;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CleaningCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CleaningCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CLEANINGCOMMAND")
  (make-package "ROBINT_MSGS::CLEANINGCOMMAND"))
(unless (find-package "ROBINT_MSGS::CLEANINGCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::CLEANINGCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::CLEANINGCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::CLEANINGCOMMANDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(intern "*START*" (find-package "ROBINT_MSGS::CLEANINGCOMMANDREQUEST"))
(shadow '*START* (find-package "ROBINT_MSGS::CLEANINGCOMMANDREQUEST"))
(defconstant robint_msgs::CleaningCommandRequest::*START* 0)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::CLEANINGCOMMANDREQUEST"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::CLEANINGCOMMANDREQUEST"))
(defconstant robint_msgs::CleaningCommandRequest::*PAUSE* 1)
(intern "*RESUME*" (find-package "ROBINT_MSGS::CLEANINGCOMMANDREQUEST"))
(shadow '*RESUME* (find-package "ROBINT_MSGS::CLEANINGCOMMANDREQUEST"))
(defconstant robint_msgs::CleaningCommandRequest::*RESUME* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::CLEANINGCOMMANDREQUEST"))
(shadow '*STOP* (find-package "ROBINT_MSGS::CLEANINGCOMMANDREQUEST"))
(defconstant robint_msgs::CleaningCommandRequest::*STOP* 3)

(defun robint_msgs::CleaningCommandRequest-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::CleaningCommandRequest::*START*)
        ((= const 1) 'robint_msgs::CleaningCommandRequest::*PAUSE*)
        ((= const 2) 'robint_msgs::CleaningCommandRequest::*RESUME*)
        ((= const 3) 'robint_msgs::CleaningCommandRequest::*STOP*)
        (t nil)))

(defclass robint_msgs::CleaningCommandRequest
  :super ros::object
  :slots (_command _cleaning_area_uuid _resume_unfinished_task _save_cleaning_process _enable_track_contour _loop_count _track_back_dist _enable_break_point _break_robot_pose _break_subtask _break_loop_index ))

(defmethod robint_msgs::CleaningCommandRequest
  (:init
   (&key
    ((:command __command) 0)
    ((:cleaning_area_uuid __cleaning_area_uuid) "")
    ((:resume_unfinished_task __resume_unfinished_task) nil)
    ((:save_cleaning_process __save_cleaning_process) nil)
    ((:enable_track_contour __enable_track_contour) nil)
    ((:loop_count __loop_count) 0)
    ((:track_back_dist __track_back_dist) 0.0)
    ((:enable_break_point __enable_break_point) nil)
    ((:break_robot_pose __break_robot_pose) (instance geometry_msgs::PoseStamped :init))
    ((:break_subtask __break_subtask) "")
    ((:break_loop_index __break_loop_index) 0)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _cleaning_area_uuid (string __cleaning_area_uuid))
   (setq _resume_unfinished_task __resume_unfinished_task)
   (setq _save_cleaning_process __save_cleaning_process)
   (setq _enable_track_contour __enable_track_contour)
   (setq _loop_count (round __loop_count))
   (setq _track_back_dist (float __track_back_dist))
   (setq _enable_break_point __enable_break_point)
   (setq _break_robot_pose __break_robot_pose)
   (setq _break_subtask (string __break_subtask))
   (setq _break_loop_index (round __break_loop_index))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:cleaning_area_uuid
   (&optional __cleaning_area_uuid)
   (if __cleaning_area_uuid (setq _cleaning_area_uuid __cleaning_area_uuid)) _cleaning_area_uuid)
  (:resume_unfinished_task
   (&optional (__resume_unfinished_task :null))
   (if (not (eq __resume_unfinished_task :null)) (setq _resume_unfinished_task __resume_unfinished_task)) _resume_unfinished_task)
  (:save_cleaning_process
   (&optional (__save_cleaning_process :null))
   (if (not (eq __save_cleaning_process :null)) (setq _save_cleaning_process __save_cleaning_process)) _save_cleaning_process)
  (:enable_track_contour
   (&optional (__enable_track_contour :null))
   (if (not (eq __enable_track_contour :null)) (setq _enable_track_contour __enable_track_contour)) _enable_track_contour)
  (:loop_count
   (&optional __loop_count)
   (if __loop_count (setq _loop_count __loop_count)) _loop_count)
  (:track_back_dist
   (&optional __track_back_dist)
   (if __track_back_dist (setq _track_back_dist __track_back_dist)) _track_back_dist)
  (:enable_break_point
   (&optional (__enable_break_point :null))
   (if (not (eq __enable_break_point :null)) (setq _enable_break_point __enable_break_point)) _enable_break_point)
  (:break_robot_pose
   (&rest __break_robot_pose)
   (if (keywordp (car __break_robot_pose))
       (send* _break_robot_pose __break_robot_pose)
     (progn
       (if __break_robot_pose (setq _break_robot_pose (car __break_robot_pose)))
       _break_robot_pose)))
  (:break_subtask
   (&optional __break_subtask)
   (if __break_subtask (setq _break_subtask __break_subtask)) _break_subtask)
  (:break_loop_index
   (&optional __break_loop_index)
   (if __break_loop_index (setq _break_loop_index __break_loop_index)) _break_loop_index)
  (:serialization-length
   ()
   (+
    ;; uint8 _command
    1
    ;; string _cleaning_area_uuid
    4 (length _cleaning_area_uuid)
    ;; bool _resume_unfinished_task
    1
    ;; bool _save_cleaning_process
    1
    ;; bool _enable_track_contour
    1
    ;; int32 _loop_count
    4
    ;; float64 _track_back_dist
    8
    ;; bool _enable_break_point
    1
    ;; geometry_msgs/PoseStamped _break_robot_pose
    (send _break_robot_pose :serialization-length)
    ;; string _break_subtask
    4 (length _break_subtask)
    ;; int32 _break_loop_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _command
       (write-byte _command s)
     ;; string _cleaning_area_uuid
       (write-long (length _cleaning_area_uuid) s) (princ _cleaning_area_uuid s)
     ;; bool _resume_unfinished_task
       (if _resume_unfinished_task (write-byte -1 s) (write-byte 0 s))
     ;; bool _save_cleaning_process
       (if _save_cleaning_process (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_track_contour
       (if _enable_track_contour (write-byte -1 s) (write-byte 0 s))
     ;; int32 _loop_count
       (write-long _loop_count s)
     ;; float64 _track_back_dist
       (sys::poke _track_back_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _enable_break_point
       (if _enable_break_point (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped _break_robot_pose
       (send _break_robot_pose :serialize s)
     ;; string _break_subtask
       (write-long (length _break_subtask) s) (princ _break_subtask s)
     ;; int32 _break_loop_index
       (write-long _break_loop_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _cleaning_area_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cleaning_area_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _resume_unfinished_task
     (setq _resume_unfinished_task (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _save_cleaning_process
     (setq _save_cleaning_process (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_track_contour
     (setq _enable_track_contour (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _loop_count
     (setq _loop_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _track_back_dist
     (setq _track_back_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _enable_break_point
     (setq _enable_break_point (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _break_robot_pose
     (send _break_robot_pose :deserialize buf ptr-) (incf ptr- (send _break_robot_pose :serialization-length))
   ;; string _break_subtask
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _break_subtask (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _break_loop_index
     (setq _break_loop_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robint_msgs::CleaningCommandResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::CleaningCommandResponse
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

(defclass robint_msgs::CleaningCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::CleaningCommand :md5sum-) "53d75104790d5d4f0b3ebfae9d23803e")
(setf (get robint_msgs::CleaningCommand :datatype-) "robint_msgs/CleaningCommand")
(setf (get robint_msgs::CleaningCommand :request) robint_msgs::CleaningCommandRequest)
(setf (get robint_msgs::CleaningCommand :response) robint_msgs::CleaningCommandResponse)

(defmethod robint_msgs::CleaningCommandRequest
  (:response () (instance robint_msgs::CleaningCommandResponse :init)))

(setf (get robint_msgs::CleaningCommandRequest :md5sum-) "53d75104790d5d4f0b3ebfae9d23803e")
(setf (get robint_msgs::CleaningCommandRequest :datatype-) "robint_msgs/CleaningCommandRequest")
(setf (get robint_msgs::CleaningCommandRequest :definition-)
      "uint8 command       # 'Start', 'Pause', 'Resume', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 RESUME=2
uint8 STOP=3
string cleaning_area_uuid
bool resume_unfinished_task
bool save_cleaning_process
bool enable_track_contour
int32 loop_count
float64 track_back_dist
bool enable_break_point
geometry_msgs/PoseStamped break_robot_pose
string break_subtask
int32 break_loop_index

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

(setf (get robint_msgs::CleaningCommandResponse :md5sum-) "53d75104790d5d4f0b3ebfae9d23803e")
(setf (get robint_msgs::CleaningCommandResponse :datatype-) "robint_msgs/CleaningCommandResponse")
(setf (get robint_msgs::CleaningCommandResponse :definition-)
      "uint8 command       # 'Start', 'Pause', 'Resume', 'Stop'
uint8 START=0
uint8 PAUSE=1
uint8 RESUME=2
uint8 STOP=3
string cleaning_area_uuid
bool resume_unfinished_task
bool save_cleaning_process
bool enable_track_contour
int32 loop_count
float64 track_back_dist
bool enable_break_point
geometry_msgs/PoseStamped break_robot_pose
string break_subtask
int32 break_loop_index

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



(provide :robint_msgs/CleaningCommand "53d75104790d5d4f0b3ebfae9d23803e")


