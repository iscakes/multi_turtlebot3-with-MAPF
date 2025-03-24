;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::PatrolState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'PatrolState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::PATROLSTATE")
  (make-package "ROBINT_MSGS::PATROLSTATE"))

(in-package "ROS")
;;//! \htmlinclude PatrolState.msg.html


(defclass robint_msgs::PatrolState
  :super ros::object
  :slots (_header _state _current_route_name _current_goal_name _current_goal_isReached _finished ))

(defmethod robint_msgs::PatrolState
  (:init
   (&key
    ((:header __header) (instance robint_msgs::TaskStateHeader :init))
    ((:state __state) "")
    ((:current_route_name __current_route_name) "")
    ((:current_goal_name __current_goal_name) "")
    ((:current_goal_isReached __current_goal_isReached) nil)
    ((:finished __finished) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (string __state))
   (setq _current_route_name (string __current_route_name))
   (setq _current_goal_name (string __current_goal_name))
   (setq _current_goal_isReached __current_goal_isReached)
   (setq _finished __finished)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:current_route_name
   (&optional __current_route_name)
   (if __current_route_name (setq _current_route_name __current_route_name)) _current_route_name)
  (:current_goal_name
   (&optional __current_goal_name)
   (if __current_goal_name (setq _current_goal_name __current_goal_name)) _current_goal_name)
  (:current_goal_isReached
   (&optional (__current_goal_isReached :null))
   (if (not (eq __current_goal_isReached :null)) (setq _current_goal_isReached __current_goal_isReached)) _current_goal_isReached)
  (:finished
   (&optional (__finished :null))
   (if (not (eq __finished :null)) (setq _finished __finished)) _finished)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/TaskStateHeader _header
    (send _header :serialization-length)
    ;; string _state
    4 (length _state)
    ;; string _current_route_name
    4 (length _current_route_name)
    ;; string _current_goal_name
    4 (length _current_goal_name)
    ;; bool _current_goal_isReached
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
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _current_route_name
       (write-long (length _current_route_name) s) (princ _current_route_name s)
     ;; string _current_goal_name
       (write-long (length _current_goal_name) s) (princ _current_goal_name s)
     ;; bool _current_goal_isReached
       (if _current_goal_isReached (write-byte -1 s) (write-byte 0 s))
     ;; bool _finished
       (if _finished (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/TaskStateHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_route_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_route_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _current_goal_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_goal_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _current_goal_isReached
     (setq _current_goal_isReached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _finished
     (setq _finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::PatrolState :md5sum-) "785c44df0181d563e8f2584a56d60a67")
(setf (get robint_msgs::PatrolState :datatype-) "robint_msgs/PatrolState")
(setf (get robint_msgs::PatrolState :definition-)
      "TaskStateHeader header
string state             # \"Running\", \"Stop\", \"Pause\"
string current_route_name
string current_goal_name
bool current_goal_isReached
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time

")



(provide :robint_msgs/PatrolState "785c44df0181d563e8f2584a56d60a67")


