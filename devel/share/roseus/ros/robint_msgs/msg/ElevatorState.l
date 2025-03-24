;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::ElevatorState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'ElevatorState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ELEVATORSTATE")
  (make-package "ROBINT_MSGS::ELEVATORSTATE"))

(in-package "ROS")
;;//! \htmlinclude ElevatorState.msg.html


(defclass robint_msgs::ElevatorState
  :super ros::object
  :slots (_header _r_state _r_feedback _building_name _floor_index _door_status _lift_status _finished ))

(defmethod robint_msgs::ElevatorState
  (:init
   (&key
    ((:header __header) (instance robint_msgs::TaskStateHeader :init))
    ((:r_state __r_state) 0)
    ((:r_feedback __r_feedback) 0)
    ((:building_name __building_name) "")
    ((:floor_index __floor_index) 0)
    ((:door_status __door_status) "")
    ((:lift_status __lift_status) "")
    ((:finished __finished) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _r_state (round __r_state))
   (setq _r_feedback (round __r_feedback))
   (setq _building_name (string __building_name))
   (setq _floor_index (round __floor_index))
   (setq _door_status (string __door_status))
   (setq _lift_status (string __lift_status))
   (setq _finished __finished)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:r_state
   (&optional __r_state)
   (if __r_state (setq _r_state __r_state)) _r_state)
  (:r_feedback
   (&optional __r_feedback)
   (if __r_feedback (setq _r_feedback __r_feedback)) _r_feedback)
  (:building_name
   (&optional __building_name)
   (if __building_name (setq _building_name __building_name)) _building_name)
  (:floor_index
   (&optional __floor_index)
   (if __floor_index (setq _floor_index __floor_index)) _floor_index)
  (:door_status
   (&optional __door_status)
   (if __door_status (setq _door_status __door_status)) _door_status)
  (:lift_status
   (&optional __lift_status)
   (if __lift_status (setq _lift_status __lift_status)) _lift_status)
  (:finished
   (&optional (__finished :null))
   (if (not (eq __finished :null)) (setq _finished __finished)) _finished)
  (:serialization-length
   ()
   (+
    ;; robint_msgs/TaskStateHeader _header
    (send _header :serialization-length)
    ;; uint8 _r_state
    1
    ;; uint8 _r_feedback
    1
    ;; string _building_name
    4 (length _building_name)
    ;; int32 _floor_index
    4
    ;; string _door_status
    4 (length _door_status)
    ;; string _lift_status
    4 (length _lift_status)
    ;; bool _finished
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/TaskStateHeader _header
       (send _header :serialize s)
     ;; uint8 _r_state
       (write-byte _r_state s)
     ;; uint8 _r_feedback
       (write-byte _r_feedback s)
     ;; string _building_name
       (write-long (length _building_name) s) (princ _building_name s)
     ;; int32 _floor_index
       (write-long _floor_index s)
     ;; string _door_status
       (write-long (length _door_status) s) (princ _door_status s)
     ;; string _lift_status
       (write-long (length _lift_status) s) (princ _lift_status s)
     ;; bool _finished
       (if _finished (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/TaskStateHeader _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _r_state
     (setq _r_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _r_feedback
     (setq _r_feedback (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _building_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _building_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _floor_index
     (setq _floor_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _door_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _door_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lift_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lift_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _finished
     (setq _finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::ElevatorState :md5sum-) "d23507e8469034e7acb9f80b617e8be4")
(setf (get robint_msgs::ElevatorState :datatype-) "robint_msgs/ElevatorState")
(setf (get robint_msgs::ElevatorState :definition-)
      "# elevator_status
TaskStateHeader header
uint8 r_state
uint8 r_feedback
string building_name
int32 floor_index
# 电梯开门状态：opened,opening,closed,closing
string door_status
# upgoing, downgoing, keeping
string lift_status
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time

")



(provide :robint_msgs/ElevatorState "d23507e8469034e7acb9f80b617e8be4")


