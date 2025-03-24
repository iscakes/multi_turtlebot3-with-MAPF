;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetCurrentMapName)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetCurrentMapName (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETCURRENTMAPNAME")
  (make-package "ROBINT_MSGS::GETCURRENTMAPNAME"))
(unless (find-package "ROBINT_MSGS::GETCURRENTMAPNAMEREQUEST")
  (make-package "ROBINT_MSGS::GETCURRENTMAPNAMEREQUEST"))
(unless (find-package "ROBINT_MSGS::GETCURRENTMAPNAMERESPONSE")
  (make-package "ROBINT_MSGS::GETCURRENTMAPNAMERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetCurrentMapNameRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetCurrentMapNameRequest
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

(defclass robint_msgs::GetCurrentMapNameResponse
  :super ros::object
  :slots (_name _success ))

(defmethod robint_msgs::GetCurrentMapNameResponse
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

(defclass robint_msgs::GetCurrentMapName
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetCurrentMapName :md5sum-) "f9535dd2e17d62b0cbf72cb334744629")
(setf (get robint_msgs::GetCurrentMapName :datatype-) "robint_msgs/GetCurrentMapName")
(setf (get robint_msgs::GetCurrentMapName :request) robint_msgs::GetCurrentMapNameRequest)
(setf (get robint_msgs::GetCurrentMapName :response) robint_msgs::GetCurrentMapNameResponse)

(defmethod robint_msgs::GetCurrentMapNameRequest
  (:response () (instance robint_msgs::GetCurrentMapNameResponse :init)))

(setf (get robint_msgs::GetCurrentMapNameRequest :md5sum-) "f9535dd2e17d62b0cbf72cb334744629")
(setf (get robint_msgs::GetCurrentMapNameRequest :datatype-) "robint_msgs/GetCurrentMapNameRequest")
(setf (get robint_msgs::GetCurrentMapNameRequest :definition-)
      "---
string name
bool success
")

(setf (get robint_msgs::GetCurrentMapNameResponse :md5sum-) "f9535dd2e17d62b0cbf72cb334744629")
(setf (get robint_msgs::GetCurrentMapNameResponse :datatype-) "robint_msgs/GetCurrentMapNameResponse")
(setf (get robint_msgs::GetCurrentMapNameResponse :definition-)
      "---
string name
bool success
")



(provide :robint_msgs/GetCurrentMapName "f9535dd2e17d62b0cbf72cb334744629")


