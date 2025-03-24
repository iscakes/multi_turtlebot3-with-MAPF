;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GateState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GateState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GATESTATE")
  (make-package "ROBINT_MSGS::GATESTATE"))

(in-package "ROS")
;;//! \htmlinclude GateState.msg.html


(defclass robint_msgs::GateState
  :super ros::object
  :slots (_header _r_state _r_feedback _gate_id _finished ))

(defmethod robint_msgs::GateState
  (:init
   (&key
    ((:header __header) (instance robint_msgs::TaskStateHeader :init))
    ((:r_state __r_state) 0)
    ((:r_feedback __r_feedback) 0)
    ((:gate_id __gate_id) "")
    ((:finished __finished) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _r_state (round __r_state))
   (setq _r_feedback (round __r_feedback))
   (setq _gate_id (string __gate_id))
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
  (:gate_id
   (&optional __gate_id)
   (if __gate_id (setq _gate_id __gate_id)) _gate_id)
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
    ;; string _gate_id
    4 (length _gate_id)
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
     ;; string _gate_id
       (write-long (length _gate_id) s) (princ _gate_id s)
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
   ;; string _gate_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gate_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _finished
     (setq _finished (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::GateState :md5sum-) "08e4940fb1e5fcf371098421ae5adcfa")
(setf (get robint_msgs::GateState :datatype-) "robint_msgs/GateState")
(setf (get robint_msgs::GateState :definition-)
      "# gate_status
TaskStateHeader header
uint8 r_state
uint8 r_feedback
string gate_id
bool finished
================================================================================
MSG: robint_msgs/TaskStateHeader
bool activate  # 该任务是否处于激活状态
time start_time
time stop_time

")



(provide :robint_msgs/GateState "08e4940fb1e5fcf371098421ae5adcfa")


