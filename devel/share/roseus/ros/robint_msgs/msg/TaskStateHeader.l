;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::TaskStateHeader)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'TaskStateHeader (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::TASKSTATEHEADER")
  (make-package "ROBINT_MSGS::TASKSTATEHEADER"))

(in-package "ROS")
;;//! \htmlinclude TaskStateHeader.msg.html


(defclass robint_msgs::TaskStateHeader
  :super ros::object
  :slots (_activate _start_time _stop_time ))

(defmethod robint_msgs::TaskStateHeader
  (:init
   (&key
    ((:activate __activate) nil)
    ((:start_time __start_time) (instance ros::time :init))
    ((:stop_time __stop_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _activate __activate)
   (setq _start_time __start_time)
   (setq _stop_time __stop_time)
   self)
  (:activate
   (&optional (__activate :null))
   (if (not (eq __activate :null)) (setq _activate __activate)) _activate)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:stop_time
   (&optional __stop_time)
   (if __stop_time (setq _stop_time __stop_time)) _stop_time)
  (:serialization-length
   ()
   (+
    ;; bool _activate
    1
    ;; time _start_time
    8
    ;; time _stop_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _activate
       (if _activate (write-byte -1 s) (write-byte 0 s))
     ;; time _start_time
       (write-long (send _start_time :sec) s) (write-long (send _start_time :nsec) s)
     ;; time _stop_time
       (write-long (send _stop_time :sec) s) (write-long (send _stop_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _activate
     (setq _activate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _start_time
     (send _start_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stop_time
     (send _stop_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stop_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robint_msgs::TaskStateHeader :md5sum-) "53ecbf7332c0dcaa581370b90fa039a2")
(setf (get robint_msgs::TaskStateHeader :datatype-) "robint_msgs/TaskStateHeader")
(setf (get robint_msgs::TaskStateHeader :definition-)
      "bool activate  # 该任务是否处于激活状态
time start_time
time stop_time

")



(provide :robint_msgs/TaskStateHeader "53ecbf7332c0dcaa581370b90fa039a2")


