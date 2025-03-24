;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::UpdateMap)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'UpdateMap (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::UPDATEMAP")
  (make-package "ROBINT_MSGS::UPDATEMAP"))
(unless (find-package "ROBINT_MSGS::UPDATEMAPREQUEST")
  (make-package "ROBINT_MSGS::UPDATEMAPREQUEST"))
(unless (find-package "ROBINT_MSGS::UPDATEMAPRESPONSE")
  (make-package "ROBINT_MSGS::UPDATEMAPRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::UpdateMapRequest
  :super ros::object
  :slots (_map_uuid _time ))

(defmethod robint_msgs::UpdateMapRequest
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:time __time) "")
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _time (string __time))
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::UpdateMapResponse
  :super ros::object
  :slots (_success ))

(defmethod robint_msgs::UpdateMapResponse
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

(defclass robint_msgs::UpdateMap
  :super ros::object
  :slots ())

(setf (get robint_msgs::UpdateMap :md5sum-) "49d9b66697645b860ecd5f2cb94a4fc4")
(setf (get robint_msgs::UpdateMap :datatype-) "robint_msgs/UpdateMap")
(setf (get robint_msgs::UpdateMap :request) robint_msgs::UpdateMapRequest)
(setf (get robint_msgs::UpdateMap :response) robint_msgs::UpdateMapResponse)

(defmethod robint_msgs::UpdateMapRequest
  (:response () (instance robint_msgs::UpdateMapResponse :init)))

(setf (get robint_msgs::UpdateMapRequest :md5sum-) "49d9b66697645b860ecd5f2cb94a4fc4")
(setf (get robint_msgs::UpdateMapRequest :datatype-) "robint_msgs/UpdateMapRequest")
(setf (get robint_msgs::UpdateMapRequest :definition-)
      "string map_uuid
string time
---
bool success
")

(setf (get robint_msgs::UpdateMapResponse :md5sum-) "49d9b66697645b860ecd5f2cb94a4fc4")
(setf (get robint_msgs::UpdateMapResponse :datatype-) "robint_msgs/UpdateMapResponse")
(setf (get robint_msgs::UpdateMapResponse :definition-)
      "string map_uuid
string time
---
bool success
")



(provide :robint_msgs/UpdateMap "49d9b66697645b860ecd5f2cb94a4fc4")


