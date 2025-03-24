;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GateControlStatus)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GateControlStatus (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GATECONTROLSTATUS")
  (make-package "ROBINT_MSGS::GATECONTROLSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GateControlStatus.msg.html


(defclass robint_msgs::GateControlStatus
  :super ros::object
  :slots (_task_id _status ))

(defmethod robint_msgs::GateControlStatus
  (:init
   (&key
    ((:task_id __task_id) "")
    ((:status __status) "")
    )
   (send-super :init)
   (setq _task_id (string __task_id))
   (setq _status (string __status))
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _task_id
    4 (length _task_id)
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task_id
       (write-long (length _task_id) s) (princ _task_id s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robint_msgs::GateControlStatus :md5sum-) "187cd9f691184be0241fb75eabc83f5d")
(setf (get robint_msgs::GateControlStatus :datatype-) "robint_msgs/GateControlStatus")
(setf (get robint_msgs::GateControlStatus :definition-)
      "string task_id
string status #\"opened\" ,\"closed\", \"failed\"
")



(provide :robint_msgs/GateControlStatus "187cd9f691184be0241fb75eabc83f5d")


