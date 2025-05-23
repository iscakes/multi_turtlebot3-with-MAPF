;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::TrackPathFeedback)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'TrackPathFeedback (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::TRACKPATHFEEDBACK")
  (make-package "ROBINT_MSGS::TRACKPATHFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TrackPathFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::TrackPathFeedback
  :super ros::object
  :slots (_base_position _current_loop_index _progress _high_speed_status _subtask _state _status ))

(defmethod robint_msgs::TrackPathFeedback
  (:init
   (&key
    ((:base_position __base_position) (instance geometry_msgs::PoseStamped :init))
    ((:current_loop_index __current_loop_index) 0)
    ((:progress __progress) 0.0)
    ((:high_speed_status __high_speed_status) nil)
    ((:subtask __subtask) "")
    ((:state __state) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _base_position __base_position)
   (setq _current_loop_index (round __current_loop_index))
   (setq _progress (float __progress))
   (setq _high_speed_status __high_speed_status)
   (setq _subtask (string __subtask))
   (setq _state (string __state))
   (setq _status (round __status))
   self)
  (:base_position
   (&rest __base_position)
   (if (keywordp (car __base_position))
       (send* _base_position __base_position)
     (progn
       (if __base_position (setq _base_position (car __base_position)))
       _base_position)))
  (:current_loop_index
   (&optional __current_loop_index)
   (if __current_loop_index (setq _current_loop_index __current_loop_index)) _current_loop_index)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:high_speed_status
   (&optional (__high_speed_status :null))
   (if (not (eq __high_speed_status :null)) (setq _high_speed_status __high_speed_status)) _high_speed_status)
  (:subtask
   (&optional __subtask)
   (if __subtask (setq _subtask __subtask)) _subtask)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _base_position
    (send _base_position :serialization-length)
    ;; int32 _current_loop_index
    4
    ;; float32 _progress
    4
    ;; bool _high_speed_status
    1
    ;; string _subtask
    4 (length _subtask)
    ;; string _state
    4 (length _state)
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _base_position
       (send _base_position :serialize s)
     ;; int32 _current_loop_index
       (write-long _current_loop_index s)
     ;; float32 _progress
       (sys::poke _progress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _high_speed_status
       (if _high_speed_status (write-byte -1 s) (write-byte 0 s))
     ;; string _subtask
       (write-long (length _subtask) s) (princ _subtask s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _base_position
     (send _base_position :deserialize buf ptr-) (incf ptr- (send _base_position :serialization-length))
   ;; int32 _current_loop_index
     (setq _current_loop_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _progress
     (setq _progress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _high_speed_status
     (setq _high_speed_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _subtask
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subtask (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::TrackPathFeedback :md5sum-) "eb8e7ca299d8bec46f0c1dba808f611c")
(setf (get robint_msgs::TrackPathFeedback :datatype-) "robint_msgs/TrackPathFeedback")
(setf (get robint_msgs::TrackPathFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
geometry_msgs/PoseStamped base_position
int32 current_loop_index
float32 progress
bool high_speed_status
string subtask # \"None\", \"Follow_Wall\", \"Track_OuterPath\", \"Track_InnerPath\"
string state
uint8 status

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

")



(provide :robint_msgs/TrackPathFeedback "eb8e7ca299d8bec46f0c1dba808f611c")


