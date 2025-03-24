;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::StateDiagnostic)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'StateDiagnostic (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::STATEDIAGNOSTIC")
  (make-package "ROBINT_MSGS::STATEDIAGNOSTIC"))

(in-package "ROS")
;;//! \htmlinclude StateDiagnostic.msg.html


(defclass robint_msgs::StateDiagnostic
  :super ros::object
  :slots (_hardware_name _is_ok ))

(defmethod robint_msgs::StateDiagnostic
  (:init
   (&key
    ((:hardware_name __hardware_name) "")
    ((:is_ok __is_ok) nil)
    )
   (send-super :init)
   (setq _hardware_name (string __hardware_name))
   (setq _is_ok __is_ok)
   self)
  (:hardware_name
   (&optional __hardware_name)
   (if __hardware_name (setq _hardware_name __hardware_name)) _hardware_name)
  (:is_ok
   (&optional (__is_ok :null))
   (if (not (eq __is_ok :null)) (setq _is_ok __is_ok)) _is_ok)
  (:serialization-length
   ()
   (+
    ;; string _hardware_name
    4 (length _hardware_name)
    ;; bool _is_ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _hardware_name
       (write-long (length _hardware_name) s) (princ _hardware_name s)
     ;; bool _is_ok
       (if _is_ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _hardware_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_ok
     (setq _is_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::StateDiagnostic :md5sum-) "639ff558d4ee8d1752d1e9ef7c8e04f2")
(setf (get robint_msgs::StateDiagnostic :datatype-) "robint_msgs/StateDiagnostic")
(setf (get robint_msgs::StateDiagnostic :definition-)
      "string hardware_name
bool is_ok
")



(provide :robint_msgs/StateDiagnostic "639ff558d4ee8d1752d1e9ef7c8e04f2")


