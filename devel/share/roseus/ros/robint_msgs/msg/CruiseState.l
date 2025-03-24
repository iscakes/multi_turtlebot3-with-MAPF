;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::CruiseState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'CruiseState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::CRUISESTATE")
  (make-package "ROBINT_MSGS::CRUISESTATE"))

(in-package "ROS")
;;//! \htmlinclude CruiseState.msg.html


(defclass robint_msgs::CruiseState
  :super ros::object
  :slots (_header _task_name _task_uuid _current_goal_name _current_goal_group_uuid _state _feedback _r_state _r_feedback _percent _reached ))

(defmethod robint_msgs::CruiseState
  (:init
   (&key
    ((:header __header) (instance robint_msgs::TaskStateHeader :init))
    ((:task_name __task_name) "")
    ((:task_uuid __task_uuid) "")
    ((:current_goal_name __current_goal_name) "")
    ((:current_goal_group_uuid __current_goal_group_uuid) "")
    ((:state __state) "")
    ((:feedback __feedback) "")
    ((:r_state __r_state) 0)
    ((:r_feedback __r_feedback) 0)
    ((:percent __percent) 0)
    ((:reached __reached) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _task_name (string __task_name))
   (setq _task_uuid (string __task_uuid))
   (setq _current_goal_name (string __current_goal_name))
   (setq _current_goal_group_uuid (string __current_goal_group_uuid))
   (setq _state (string __state))
   (setq _feedback (string __feedback))
   (setq _r_state (round __r_state))
   (setq _r_feedback (round __r_feedback))
   (setq _percent (round __percent))
   (setq _reached __reached)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:task_name
   (&optional __task_name)
   (if __task_name (setq _task_name __task_name)) _task_name)
  (:task_uuid
   (&optional __task_uuid)
   (if __task_uuid (setq _task_uuid __task_uuid)) _task_uuid)
  (:current_goal_name
   (&optional __current_goal_name)
   (if __current_goal_name (setq _current_goal_name __current_goal_name)) _current_goal_name)
  (:current_goal_group_uuid
   (&optional __current_goal_group_uuid)
   (if __current_goal_group_uuid (setq _current_goal_group_uuid __current_goal_group_uuid)) _current_goal_group_uuid)
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
  (:percent
   (&optional __percent)
   (if __percent (setq _percent __percent)) _percent)
  (:reached
   (&optional (__reached :null))
   (if (not (eq __reached :null)) (setq _reached __reached)) _reached)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/TaskStateHeader _header
    (send _header :serialization-length)
    ;; string _task_name
    4 (length _task_name)
    ;; string _task_uuid
    4 (length _task_uuid)
    ;; string _current_goal_name
    4 (length _current_goal_name)
    ;; string _current_goal_group_uuid
    4 (length _current_goal_group_uuid)
    ;; string _state
    4 (length _state)
    ;; string _feedback
    4 (length _feedback)
    ;; uint8 _r_state
    1
    ;; uint8 _r_feedback
    1
    ;; uint8 _percent
    1
    ;; bool _reached
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/TaskStateHeader _header
       (send _header :serialize s)
     ;; string _task_name
       (write-long (length _task_name) s) (princ _task_name s)
     ;; string _task_uuid
       (write-long (length _task_uuid) s) (princ _task_uuid s)
     ;; string _current_goal_name
       (write-long (length _current_goal_name) s) (princ _current_goal_name s)
     ;; string _current_goal_group_uuid
       (write-long (length _current_goal_group_uuid) s) (princ _current_goal_group_uuid s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;; uint8 _r_state
       (write-byte _r_state s)
     ;; uint8 _r_feedback
       (write-byte _r_feedback s)
     ;; uint8 _percent
       (write-byte _percent s)
     ;; bool _reached
       (if _reached (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/TaskStateHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _task_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _task_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_goal_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_goal_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_goal_group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_goal_group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _r_state
     (setq _r_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _r_feedback
     (setq _r_feedback (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _percent
     (setq _percent (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _reached
     (setq _reached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::CruiseState :md5sum-) "6469f12c17e96e9f4f6ffd773c955576")
(setf (get robint_msgs::CruiseState :datatype-) "robint_msgs/CruiseState")
(setf (get robint_msgs::CruiseState :definition-)
      "TaskStateHeader header
string task_name
string task_uuid
string current_goal_name
string current_goal_group_uuid
string state
string feedback
uint8 r_state
uint8 r_feedback
uint8 percent
bool reached
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time

")



(provide :robint_msgs/CruiseState "6469f12c17e96e9f4f6ffd773c955576")


