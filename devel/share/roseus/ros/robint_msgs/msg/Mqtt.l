;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::Mqtt)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'Mqtt (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::MQTT")
  (make-package "ROBINT_MSGS::MQTT"))

(in-package "ROS")
;;//! \htmlinclude Mqtt.msg.html


(defclass robint_msgs::Mqtt
  :super ros::object
  :slots (_topic _payload _qos ))

(defmethod robint_msgs::Mqtt
  (:init
   (&key
    ((:topic __topic) "")
    ((:payload __payload) "")
    ((:qos __qos) 0)
    )
   (send-super :init)
   (setq _topic (string __topic))
   (setq _payload (string __payload))
   (setq _qos (round __qos))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:qos
   (&optional __qos)
   (if __qos (setq _qos __qos)) _qos)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ;; string _payload
    4 (length _payload)
    ;; uint8 _qos
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;; string _payload
       (write-long (length _payload) s) (princ _payload s)
     ;; uint8 _qos
       (write-byte _qos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _payload
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _payload (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _qos
     (setq _qos (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robint_msgs::Mqtt :md5sum-) "f2fdbbfebea18db613efd560d5285dbd")
(setf (get robint_msgs::Mqtt :datatype-) "robint_msgs/Mqtt")
(setf (get robint_msgs::Mqtt :definition-)
      "string topic
string payload
uint8 qos
")



(provide :robint_msgs/Mqtt "f2fdbbfebea18db613efd560d5285dbd")


