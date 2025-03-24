;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SetChassisLight)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SetChassisLight (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SETCHASSISLIGHT")
  (make-package "ROBINT_MSGS::SETCHASSISLIGHT"))
(unless (find-package "ROBINT_MSGS::SETCHASSISLIGHTREQUEST")
  (make-package "ROBINT_MSGS::SETCHASSISLIGHTREQUEST"))
(unless (find-package "ROBINT_MSGS::SETCHASSISLIGHTRESPONSE")
  (make-package "ROBINT_MSGS::SETCHASSISLIGHTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::SetChassisLightRequest
  :super ros::object
  :slots (_id _mode ))

(defmethod robint_msgs::SetChassisLightRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _mode (round __mode))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::SetChassisLightResponse
  :super ros::object
  :slots (_success ))

(defmethod robint_msgs::SetChassisLightResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::SetChassisLight
  :super ros::object
  :slots ())

(setf (get robint_msgs::SetChassisLight :md5sum-) "c59ddd3dc5cf36023f798fddbf4f62a0")
(setf (get robint_msgs::SetChassisLight :datatype-) "robint_msgs/SetChassisLight")
(setf (get robint_msgs::SetChassisLight :request) robint_msgs::SetChassisLightRequest)
(setf (get robint_msgs::SetChassisLight :response) robint_msgs::SetChassisLightResponse)

(defmethod robint_msgs::SetChassisLightRequest
  (:response () (instance robint_msgs::SetChassisLightResponse :init)))

(setf (get robint_msgs::SetChassisLightRequest :md5sum-) "c59ddd3dc5cf36023f798fddbf4f62a0")
(setf (get robint_msgs::SetChassisLightRequest :datatype-) "robint_msgs/SetChassisLightRequest")
(setf (get robint_msgs::SetChassisLightRequest :definition-)
      "uint8 id
uint8 mode
---
bool success
")

(setf (get robint_msgs::SetChassisLightResponse :md5sum-) "c59ddd3dc5cf36023f798fddbf4f62a0")
(setf (get robint_msgs::SetChassisLightResponse :datatype-) "robint_msgs/SetChassisLightResponse")
(setf (get robint_msgs::SetChassisLightResponse :definition-)
      "uint8 id
uint8 mode
---
bool success
")



(provide :robint_msgs/SetChassisLight "c59ddd3dc5cf36023f798fddbf4f62a0")


