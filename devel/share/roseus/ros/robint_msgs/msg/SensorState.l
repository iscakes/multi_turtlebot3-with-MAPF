;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SensorState)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SensorState (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SENSORSTATE")
  (make-package "ROBINT_MSGS::SENSORSTATE"))

(in-package "ROS")
;;//! \htmlinclude SensorState.msg.html


(defclass robint_msgs::SensorState
  :super ros::object
  :slots (_diagnostic_array ))

(defmethod robint_msgs::SensorState
  (:init
   (&key
    ((:diagnostic_array __diagnostic_array) ())
    )
   (send-super :init)
   (setq _diagnostic_array __diagnostic_array)
   self)
  (:diagnostic_array
   (&rest __diagnostic_array)
   (if (keywordp (car __diagnostic_array))
       (send* _diagnostic_array __diagnostic_array)
     (progn
       (if __diagnostic_array (setq _diagnostic_array (car __diagnostic_array)))
       _diagnostic_array)))
  (:serialization-length
   ()
   (+
    ;; robint_msgs/SensorDiagnostic[] _diagnostic_array
    (apply #'+ (send-all _diagnostic_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/SensorDiagnostic[] _diagnostic_array
     (write-long (length _diagnostic_array) s)
     (dolist (elem _diagnostic_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/SensorDiagnostic[] _diagnostic_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _diagnostic_array (let (r) (dotimes (i n) (push (instance robint_msgs::SensorDiagnostic :init) r)) r))
     (dolist (elem- _diagnostic_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robint_msgs::SensorState :md5sum-) "b413862050990d5004a35381425f2c59")
(setf (get robint_msgs::SensorState :datatype-) "robint_msgs/SensorState")
(setf (get robint_msgs::SensorState :definition-)
      "SensorDiagnostic[] diagnostic_array
# SensorDiagnostic imu
# SensorDiagnostic scan
# SensorDiagnostic depth_scan
# SensorDiagnostic[] ultrasonic_array
================================================================================
MSG: robint_msgs/SensorDiagnostic
time time
string hardware_name
bool is_received
bool is_normal
")



(provide :robint_msgs/SensorState "b413862050990d5004a35381425f2c59")


