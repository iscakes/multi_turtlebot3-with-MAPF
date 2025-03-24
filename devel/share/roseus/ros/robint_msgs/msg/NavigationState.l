;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::NavigationState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'NavigationState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::NAVIGATIONSTATE")
  (make-package "ROBINT_MSGS::NAVIGATIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude NavigationState.msg.html


(defclass robint_msgs::NavigationState
  :super ros::object
  :slots (_header _goal_name _location_name _goal_group_uuid _state _feedback _r_state _r_feedback _reached ))

(defmethod robint_msgs::NavigationState
  (:init
   (&key
    ((:header __header) (instance robint_msgs::TaskStateHeader :init))
    ((:goal_name __goal_name) "")
    ((:location_name __location_name) "")
    ((:goal_group_uuid __goal_group_uuid) "")
    ((:state __state) "")
    ((:feedback __feedback) "")
    ((:r_state __r_state) 0)
    ((:r_feedback __r_feedback) 0)
    ((:reached __reached) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_name (string __goal_name))
   (setq _location_name (string __location_name))
   (setq _goal_group_uuid (string __goal_group_uuid))
   (setq _state (string __state))
   (setq _feedback (string __feedback))
   (setq _r_state (round __r_state))
   (setq _r_feedback (round __r_feedback))
   (setq _reached __reached)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_name
   (&optional __goal_name)
   (if __goal_name (setq _goal_name __goal_name)) _goal_name)
  (:location_name
   (&optional __location_name)
   (if __location_name (setq _location_name __location_name)) _location_name)
  (:goal_group_uuid
   (&optional __goal_group_uuid)
   (if __goal_group_uuid (setq _goal_group_uuid __goal_group_uuid)) _goal_group_uuid)
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
  (:reached
   (&optional (__reached :null))
   (if (not (eq __reached :null)) (setq _reached __reached)) _reached)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/TaskStateHeader _header
    (send _header :serialization-length)
    ;; string _goal_name
    4 (length _goal_name)
    ;; string _location_name
    4 (length _location_name)
    ;; string _goal_group_uuid
    4 (length _goal_group_uuid)
    ;; string _state
    4 (length _state)
    ;; string _feedback
    4 (length _feedback)
    ;; uint8 _r_state
    1
    ;; uint8 _r_feedback
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
     ;; string _goal_name
       (write-long (length _goal_name) s) (princ _goal_name s)
     ;; string _location_name
       (write-long (length _location_name) s) (princ _location_name s)
     ;; string _goal_group_uuid
       (write-long (length _goal_group_uuid) s) (princ _goal_group_uuid s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;; uint8 _r_state
       (write-byte _r_state s)
     ;; uint8 _r_feedback
       (write-byte _r_feedback s)
     ;; bool _reached
       (if _reached (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/TaskStateHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _goal_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _location_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _goal_group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal_group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _r_state
     (setq _r_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _r_feedback
     (setq _r_feedback (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _reached
     (setq _reached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::NavigationState :md5sum-) "4a12325509252f95a5569a9f32265fdc")
(setf (get robint_msgs::NavigationState :datatype-) "robint_msgs/NavigationState")
(setf (get robint_msgs::NavigationState :definition-)
      "TaskStateHeader header 
string goal_name
string location_name
string goal_group_uuid
string state
string feedback
uint8 r_state
uint8 r_feedback
bool reached
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time

")



(provide :robint_msgs/NavigationState "4a12325509252f95a5569a9f32265fdc")


