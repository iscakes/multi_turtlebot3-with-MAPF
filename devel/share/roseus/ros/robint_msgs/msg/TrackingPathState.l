;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::TrackingPathState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'TrackingPathState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::TRACKINGPATHSTATE")
  (make-package "ROBINT_MSGS::TRACKINGPATHSTATE"))

(in-package "ROS")
;;//! \htmlinclude TrackingPathState.msg.html


(defclass robint_msgs::TrackingPathState
  :super ros::object
  :slots (_header _path_name _path_uuid _path_group_uuid _state _feedback _r_state _r_feedback _progress _current_loop_index _subtask _high_speed_status _finished ))

(defmethod robint_msgs::TrackingPathState
  (:init
   (&key
    ((:header __header) (instance robint_msgs::TaskStateHeader :init))
    ((:path_name __path_name) "")
    ((:path_uuid __path_uuid) "")
    ((:path_group_uuid __path_group_uuid) "")
    ((:state __state) "")
    ((:feedback __feedback) "")
    ((:r_state __r_state) 0)
    ((:r_feedback __r_feedback) 0)
    ((:progress __progress) 0.0)
    ((:current_loop_index __current_loop_index) 0)
    ((:subtask __subtask) "")
    ((:high_speed_status __high_speed_status) nil)
    ((:finished __finished) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _path_name (string __path_name))
   (setq _path_uuid (string __path_uuid))
   (setq _path_group_uuid (string __path_group_uuid))
   (setq _state (string __state))
   (setq _feedback (string __feedback))
   (setq _r_state (round __r_state))
   (setq _r_feedback (round __r_feedback))
   (setq _progress (float __progress))
   (setq _current_loop_index (round __current_loop_index))
   (setq _subtask (string __subtask))
   (setq _high_speed_status __high_speed_status)
   (setq _finished __finished)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path_name
   (&optional __path_name)
   (if __path_name (setq _path_name __path_name)) _path_name)
  (:path_uuid
   (&optional __path_uuid)
   (if __path_uuid (setq _path_uuid __path_uuid)) _path_uuid)
  (:path_group_uuid
   (&optional __path_group_uuid)
   (if __path_group_uuid (setq _path_group_uuid __path_group_uuid)) _path_group_uuid)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:r_state
   (&optional __r_state)
   (if __r_state (setq _r_state __r_state)) _r_state)
  (:r_feedback
   (&optional __r_feedback)
   (if __r_feedback (setq _r_feedback __r_feedback)) _r_feedback)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:current_loop_index
   (&optional __current_loop_index)
   (if __current_loop_index (setq _current_loop_index __current_loop_index)) _current_loop_index)
  (:subtask
   (&optional __subtask)
   (if __subtask (setq _subtask __subtask)) _subtask)
  (:high_speed_status
   (&optional (__high_speed_status :null))
   (if (not (eq __high_speed_status :null)) (setq _high_speed_status __high_speed_status)) _high_speed_status)
  (:finished
   (&optional (__finished :null))
   (if (not (eq __finished :null)) (setq _finished __finished)) _finished)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/TaskStateHeader _header
    (send _header :serialization-length)
    ;; string _path_name
    4 (length _path_name)
    ;; string _path_uuid
    4 (length _path_uuid)
    ;; string _path_group_uuid
    4 (length _path_group_uuid)
    ;; string _state
    4 (length _state)
    ;; string _feedback
    4 (length _feedback)
    ;; uint8 _r_state
    1
    ;; uint8 _r_feedback
    1
    ;; float32 _progress
    4
    ;; int32 _current_loop_index
    4
    ;; string _subtask
    4 (length _subtask)
    ;; bool _high_speed_status
    1
    ;; bool _finished
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/TaskStateHeader _header
       (send _header :serialize s)
     ;; string _path_name
       (write-long (length _path_name) s) (princ _path_name s)
     ;; string _path_uuid
       (write-long (length _path_uuid) s) (princ _path_uuid s)
     ;; string _path_group_uuid
       (write-long (length _path_group_uuid) s) (princ _path_group_uuid s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;; uint8 _r_state
       (write-byte _r_state s)
     ;; uint8 _r_feedback
       (write-byte _r_feedback s)
     ;; float32 _progress
       (sys::poke _progress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _current_loop_index
       (write-long _current_loop_index s)
     ;; string _subtask
       (write-long (length _subtask) s) (princ _subtask s)
     ;; bool _high_speed_status
       (if _high_speed_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _finished
       (if _finished (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/TaskStateHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _path_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _path_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _path_group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _r_state
     (setq _r_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _r_feedback
     (setq _r_feedback (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _progress
     (setq _progress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _current_loop_index
     (setq _current_loop_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _subtask
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subtask (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _high_speed_status
     (setq _high_speed_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _finished
     (setq _finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::TrackingPathState :md5sum-) "e85e55ca5dc1fe8c31d4a12fbf57df8e")
(setf (get robint_msgs::TrackingPathState :datatype-) "robint_msgs/TrackingPathState")
(setf (get robint_msgs::TrackingPathState :definition-)
      "TaskStateHeader header 
string path_name
string path_uuid
string path_group_uuid
string state
string feedback
uint8 r_state
uint8 r_feedback
float32 progress
int32 current_loop_index
string subtask
bool high_speed_status
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time

")



(provide :robint_msgs/TrackingPathState "e85e55ca5dc1fe8c31d4a12fbf57df8e")


