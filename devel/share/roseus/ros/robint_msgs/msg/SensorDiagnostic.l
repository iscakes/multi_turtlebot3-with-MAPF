;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SensorDiagnostic)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SensorDiagnostic (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SENSORDIAGNOSTIC")
  (make-package "ROBINT_MSGS::SENSORDIAGNOSTIC"))

(in-package "ROS")
;;//! \htmlinclude SensorDiagnostic.msg.html


(defclass robint_msgs::SensorDiagnostic
  :super ros::object
  :slots (_time _hardware_name _is_received _is_normal ))

(defmethod robint_msgs::SensorDiagnostic
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    ((:hardware_name __hardware_name) "")
    ((:is_received __is_received) nil)
    ((:is_normal __is_normal) nil)
    )
   (send-super :init)
   (setq _time __time)
   (setq _hardware_name (string __hardware_name))
   (setq _is_received __is_received)
   (setq _is_normal __is_normal)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:hardware_name
   (&optional __hardware_name)
   (if __hardware_name (setq _hardware_name __hardware_name)) _hardware_name)
  (:is_received
   (&optional (__is_received :null))
   (if (not (eq __is_received :null)) (setq _is_received __is_received)) _is_received)
  (:is_normal
   (&optional (__is_normal :null))
   (if (not (eq __is_normal :null)) (setq _is_normal __is_normal)) _is_normal)
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ;; string _hardware_name
    4 (length _hardware_name)
    ;; bool _is_received
    1
    ;; bool _is_normal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; string _hardware_name
       (write-long (length _hardware_name) s) (princ _hardware_name s)
     ;; bool _is_received
       (if _is_received (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_normal
       (if _is_normal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _hardware_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_received
     (setq _is_received (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_normal
     (setq _is_normal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::SensorDiagnostic :md5sum-) "ddfb3402f75cafa157926253e3f9dfef")
(setf (get robint_msgs::SensorDiagnostic :datatype-) "robint_msgs/SensorDiagnostic")
(setf (get robint_msgs::SensorDiagnostic :definition-)
      "time time
string hardware_name
bool is_received
bool is_normal
")



(provide :robint_msgs/SensorDiagnostic "ddfb3402f75cafa157926253e3f9dfef")


