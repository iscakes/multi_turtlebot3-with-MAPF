;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::AddMap)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'AddMap (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::ADDMAP")
  (make-package "ROBINT_MSGS::ADDMAP"))
(unless (find-package "ROBINT_MSGS::ADDMAPREQUEST")
  (make-package "ROBINT_MSGS::ADDMAPREQUEST"))
(unless (find-package "ROBINT_MSGS::ADDMAPRESPONSE")
  (make-package "ROBINT_MSGS::ADDMAPRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::AddMapRequest
  :super ros::object
  :slots (_map_name _time ))

(defmethod robint_msgs::AddMapRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:time __time) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _time (string __time))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _time
    4 (length _time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::AddMapResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robint_msgs::AddMapResponse
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

(defclass robint_msgs::AddMap
  :super ros::object
  :slots ())

(setf (get robint_msgs::AddMap :md5sum-) "7051ee6a40fcae222218ed5e5dfdb01f")
(setf (get robint_msgs::AddMap :datatype-) "robint_msgs/AddMap")
(setf (get robint_msgs::AddMap :request) robint_msgs::AddMapRequest)
(setf (get robint_msgs::AddMap :response) robint_msgs::AddMapResponse)

(defmethod robint_msgs::AddMapRequest
  (:response () (instance robint_msgs::AddMapResponse :init)))

(setf (get robint_msgs::AddMapRequest :md5sum-) "7051ee6a40fcae222218ed5e5dfdb01f")
(setf (get robint_msgs::AddMapRequest :datatype-) "robint_msgs/AddMapRequest")
(setf (get robint_msgs::AddMapRequest :definition-)
      "string map_name
string time
---
bool success
string message
")

(setf (get robint_msgs::AddMapResponse :md5sum-) "7051ee6a40fcae222218ed5e5dfdb01f")
(setf (get robint_msgs::AddMapResponse :datatype-) "robint_msgs/AddMapResponse")
(setf (get robint_msgs::AddMapResponse :definition-)
      "string map_name
string time
---
bool success
string message
")



(provide :robint_msgs/AddMap "7051ee6a40fcae222218ed5e5dfdb01f")


