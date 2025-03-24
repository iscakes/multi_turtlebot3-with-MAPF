;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::TrackPathGoal)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'TrackPathGoal (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::TRACKPATHGOAL")
  (make-package "ROBINT_MSGS::TRACKPATHGOAL"))

(in-package "ROS")
;;//! \htmlinclude TrackPathGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*BACKANDFORTH*" (find-package "ROBINT_MSGS::TRACKPATHGOAL"))
(shadow '*BACKANDFORTH* (find-package "ROBINT_MSGS::TRACKPATHGOAL"))
(defconstant robint_msgs::TrackPathGoal::*BACKANDFORTH* 0)
(intern "*LOOP*" (find-package "ROBINT_MSGS::TRACKPATHGOAL"))
(shadow '*LOOP* (find-package "ROBINT_MSGS::TRACKPATHGOAL"))
(defconstant robint_msgs::TrackPathGoal::*LOOP* 1)

(defun robint_msgs::TrackPathGoal-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::TrackPathGoal::*BackAndForth*)
        ((= const 1) 'robint_msgs::TrackPathGoal::*Loop*)
        (t nil)))

(defclass robint_msgs::TrackPathGoal
  :super ros::object
  :slots (_paths _boundary _mode _loop_count _track_back_dist _enable_path_interpolation _path_group_uuid _coverage_method _enable_break_point _break_robot_pose _break_subtask _break_loop_index ))

(defmethod robint_msgs::TrackPathGoal
  (:init
   (&key
    ((:paths __paths) ())
    ((:boundary __boundary) (instance robint_msgs::PathWithPoint :init))
    ((:mode __mode) 0)
    ((:loop_count __loop_count) 0)
    ((:track_back_dist __track_back_dist) 0.0)
    ((:enable_path_interpolation __enable_path_interpolation) nil)
    ((:path_group_uuid __path_group_uuid) "")
    ((:coverage_method __coverage_method) "")
    ((:enable_break_point __enable_break_point) nil)
    ((:break_robot_pose __break_robot_pose) (instance geometry_msgs::PoseStamped :init))
    ((:break_subtask __break_subtask) "")
    ((:break_loop_index __break_loop_index) 0)
    )
   (send-super :init)
   (setq _paths __paths)
   (setq _boundary __boundary)
   (setq _mode (round __mode))
   (setq _loop_count (round __loop_count))
   (setq _track_back_dist (float __track_back_dist))
   (setq _enable_path_interpolation __enable_path_interpolation)
   (setq _path_group_uuid (string __path_group_uuid))
   (setq _coverage_method (string __coverage_method))
   (setq _enable_break_point __enable_break_point)
   (setq _break_robot_pose __break_robot_pose)
   (setq _break_subtask (string __break_subtask))
   (setq _break_loop_index (round __break_loop_index))
   self)
  (:paths
   (&rest __paths)
   (if (keywordp (car __paths))
       (send* _paths __paths)
     (progn
       (if __paths (setq _paths (car __paths)))
       _paths)))
  (:boundary
   (&rest __boundary)
   (if (keywordp (car __boundary))
       (send* _boundary __boundary)
     (progn
       (if __boundary (setq _boundary (car __boundary)))
       _boundary)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:loop_count
   (&optional __loop_count)
   (if __loop_count (setq _loop_count __loop_count)) _loop_count)
  (:track_back_dist
   (&optional __track_back_dist)
   (if __track_back_dist (setq _track_back_dist __track_back_dist)) _track_back_dist)
  (:enable_path_interpolation
   (&optional (__enable_path_interpolation :null))
   (if (not (eq __enable_path_interpolation :null)) (setq _enable_path_interpolation __enable_path_interpolation)) _enable_path_interpolation)
  (:path_group_uuid
   (&optional __path_group_uuid)
   (if __path_group_uuid (setq _path_group_uuid __path_group_uuid)) _path_group_uuid)
  (:coverage_method
   (&optional __coverage_method)
   (if __coverage_method (setq _coverage_method __coverage_method)) _coverage_method)
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
    ;; robint_msgs/PathWithPose[] _paths
    (apply #'+ (send-all _paths :serialization-length)) 4
    ;; robint_msgs/PathWithPoint _boundary
    (send _boundary :serialization-length)
    ;; uint8 _mode
    1
    ;; int32 _loop_count
    4
    ;; float64 _track_back_dist
    8
    ;; bool _enable_path_interpolation
    1
    ;; string _path_group_uuid
    4 (length _path_group_uuid)
    ;; string _coverage_method
    4 (length _coverage_method)
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
     ;; robint_msgs/PathWithPose[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
       (send elem :serialize s)
       )
     ;; robint_msgs/PathWithPoint _boundary
       (send _boundary :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; int32 _loop_count
       (write-long _loop_count s)
     ;; float64 _track_back_dist
       (sys::poke _track_back_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _enable_path_interpolation
       (if _enable_path_interpolation (write-byte -1 s) (write-byte 0 s))
     ;; string _path_group_uuid
       (write-long (length _path_group_uuid) s) (princ _path_group_uuid s)
     ;; string _coverage_method
       (write-long (length _coverage_method) s) (princ _coverage_method s)
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
   ;; robint_msgs/PathWithPose[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (let (r) (dotimes (i n) (push (instance robint_msgs::PathWithPose :init) r)) r))
     (dolist (elem- _paths)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robint_msgs/PathWithPoint _boundary
     (send _boundary :deserialize buf ptr-) (incf ptr- (send _boundary :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _loop_count
     (setq _loop_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _track_back_dist
     (setq _track_back_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _enable_path_interpolation
     (setq _enable_path_interpolation (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _path_group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _coverage_method
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _coverage_method (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get robint_msgs::TrackPathGoal :md5sum-) "61ffb591b1c795b53886c88a6d22f5c4")
(setf (get robint_msgs::TrackPathGoal :datatype-) "robint_msgs/TrackPathGoal")
(setf (get robint_msgs::TrackPathGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
PathWithPose[] paths
PathWithPoint boundary
uint8 mode
uint8 BackAndForth=0
uint8 Loop=1
int32 loop_count
float64 track_back_dist
bool enable_path_interpolation
string path_group_uuid
string coverage_method
bool enable_break_point
geometry_msgs/PoseStamped break_robot_pose
string break_subtask
int32 break_loop_index

================================================================================
MSG: robint_msgs/PathWithPose
uint32 id
string type
geometry_msgs/PoseStamped[] poses
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

================================================================================
MSG: robint_msgs/PathWithPoint
uint32 id
string type
geometry_msgs/Point[] points
")



(provide :robint_msgs/TrackPathGoal "61ffb591b1c795b53886c88a6d22f5c4")


