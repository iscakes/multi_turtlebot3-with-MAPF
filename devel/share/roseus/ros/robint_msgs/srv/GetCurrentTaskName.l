;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetCurrentTaskName)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetCurrentTaskName (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCURRENTTASKNAME")
  (make-package "ROBINT_MSGS::GETCURRENTTASKNAME"))
(unless (find-package "ROBINT_MSGS::GETCURRENTTASKNAMEREQUEST")
  (make-package "ROBINT_MSGS::GETCURRENTTASKNAMEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCURRENTTASKNAMERESPONSE")
  (make-package "ROBINT_MSGS::GETCURRENTTASKNAMERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetCurrentTaskNameRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetCurrentTaskNameRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robint_msgs::GetCurrentTaskNameResponse
  :super ros::object
  :slots (_name _success ))

(defmethod robint_msgs::GetCurrentTaskNameResponse
  (:init
   (&key
    ((:name __name) "")
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _success __success)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetCurrentTaskName
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetCurrentTaskName :md5sum-) "f9535dd2e17d62b0cbf72cb334744629")
(setf (get robint_msgs::GetCurrentTaskName :datatype-) "robint_msgs/GetCurrentTaskName")
(setf (get robint_msgs::GetCurrentTaskName :request) robint_msgs::GetCurrentTaskNameRequest)
(setf (get robint_msgs::GetCurrentTaskName :response) robint_msgs::GetCurrentTaskNameResponse)

(defmethod robint_msgs::GetCurrentTaskNameRequest
  (:response () (instance robint_msgs::GetCurrentTaskNameResponse :init)))

(setf (get robint_msgs::GetCurrentTaskNameRequest :md5sum-) "f9535dd2e17d62b0cbf72cb334744629")
(setf (get robint_msgs::GetCurrentTaskNameRequest :datatype-) "robint_msgs/GetCurrentTaskNameRequest")
(setf (get robint_msgs::GetCurrentTaskNameRequest :definition-)
      "---
string name
bool success
")

(setf (get robint_msgs::GetCurrentTaskNameResponse :md5sum-) "f9535dd2e17d62b0cbf72cb334744629")
(setf (get robint_msgs::GetCurrentTaskNameResponse :datatype-) "robint_msgs/GetCurrentTaskNameResponse")
(setf (get robint_msgs::GetCurrentTaskNameResponse :definition-)
      "---
string name
bool success
")



(provide :robint_msgs/GetCurrentTaskName "f9535dd2e17d62b0cbf72cb334744629")


