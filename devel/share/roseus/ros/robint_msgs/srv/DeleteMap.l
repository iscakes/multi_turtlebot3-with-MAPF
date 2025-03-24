;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::DeleteMap)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'DeleteMap (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::DELETEMAP")
  (make-package "ROBINT_MSGS::DELETEMAP"))
(unless (find-package "ROBINT_MSGS::DELETEMAPREQUEST")
  (make-package "ROBINT_MSGS::DELETEMAPREQUEST"))
(unless (find-package "ROBINT_MSGS::DELETEMAPRESPONSE")
  (make-package "ROBINT_MSGS::DELETEMAPRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::DeleteMapRequest
  :super ros::object
  :slots (_map_name ))

(defmethod robint_msgs::DeleteMapRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::DeleteMapResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robint_msgs::DeleteMapResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::DeleteMap
  :super ros::object
  :slots ())

(setf (get robint_msgs::DeleteMap :md5sum-) "064aeca76673f2a462ec6871c0fe6870")
(setf (get robint_msgs::DeleteMap :datatype-) "robint_msgs/DeleteMap")
(setf (get robint_msgs::DeleteMap :request) robint_msgs::DeleteMapRequest)
(setf (get robint_msgs::DeleteMap :response) robint_msgs::DeleteMapResponse)

(defmethod robint_msgs::DeleteMapRequest
  (:response () (instance robint_msgs::DeleteMapResponse :init)))

(setf (get robint_msgs::DeleteMapRequest :md5sum-) "064aeca76673f2a462ec6871c0fe6870")
(setf (get robint_msgs::DeleteMapRequest :datatype-) "robint_msgs/DeleteMapRequest")
(setf (get robint_msgs::DeleteMapRequest :definition-)
      "string map_name
---
bool success
string message
")

(setf (get robint_msgs::DeleteMapResponse :md5sum-) "064aeca76673f2a462ec6871c0fe6870")
(setf (get robint_msgs::DeleteMapResponse :datatype-) "robint_msgs/DeleteMapResponse")
(setf (get robint_msgs::DeleteMapResponse :definition-)
      "string map_name
---
bool success
string message
")



(provide :robint_msgs/DeleteMap "064aeca76673f2a462ec6871c0fe6870")


