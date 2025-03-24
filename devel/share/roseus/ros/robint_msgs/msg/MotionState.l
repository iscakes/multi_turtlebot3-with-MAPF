;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::MotionState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'MotionState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::MOTIONSTATE")
  (make-package "ROBINT_MSGS::MOTIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotionState.msg.html


(defclass robint_msgs::MotionState
  :super ros::object
  :slots (_header _type _distance _theta _r_state _r_feedback _finished ))

(defmethod robint_msgs::MotionState
  (:init
   (&key
    ((:header __header) (instance robint_msgs::TaskStateHeader :init))
    ((:type __type) "")
    ((:distance __distance) 0.0)
    ((:theta __theta) 0.0)
    ((:r_state __r_state) 0)
    ((:r_feedback __r_feedback) 0)
    ((:finished __finished) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (string __type))
   (setq _distance (float __distance))
   (setq _theta (float __theta))
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
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
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
    ;; string _type
    4 (length _type)
    ;; float32 _distance
    4
    ;; float32 _theta
    4
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
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _r_state
     (setq _r_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _r_feedback
     (setq _r_feedback (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _finished
     (setq _finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::MotionState :md5sum-) "03bec34e1a2d7252e47f816595320a27")
(setf (get robint_msgs::MotionState :datatype-) "robint_msgs/MotionState")
(setf (get robint_msgs::MotionState :definition-)
      "TaskStateHeader header
string type      # \"move\" or \"rotate\"
float32 distance
float32 theta
uint8 r_state
uint8 r_feedback
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time

")



(provide :robint_msgs/MotionState "03bec34e1a2d7252e47f816595320a27")


