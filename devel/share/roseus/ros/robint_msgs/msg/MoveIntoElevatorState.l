;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::MoveIntoElevatorState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'MoveIntoElevatorState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::MOVEINTOELEVATORSTATE")
  (make-package "ROBINT_MSGS::MOVEINTOELEVATORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MoveIntoElevatorState.msg.html


(defclass robint_msgs::MoveIntoElevatorState
  :super ros::object
  :slots (_header _r_state _r_feedback _finished ))

(defmethod robint_msgs::MoveIntoElevatorState
  (:init
   (&key
    ((:header __header) (instance robint_msgs::TaskStateHeader :init))
    ((:r_state __r_state) 0)
    ((:r_feedback __r_feedback) 0)
    ((:finished __finished) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _r_state (round __r_state))
   (setq _r_feedback (round __r_feedback))
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
   ;; bool _finished
     (setq _finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::MoveIntoElevatorState :md5sum-) "ac65603dd5cc05b9fc0d411a352bf89a")
(setf (get robint_msgs::MoveIntoElevatorState :datatype-) "robint_msgs/MoveIntoElevatorState")
(setf (get robint_msgs::MoveIntoElevatorState :definition-)
      "TaskStateHeader header
uint8 r_state
uint8 r_feedback
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time

")



(provide :robint_msgs/MoveIntoElevatorState "ac65603dd5cc05b9fc0d411a352bf89a")


