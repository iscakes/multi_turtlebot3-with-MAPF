;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::RecordImage)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'RecordImage (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::RECORDIMAGE")
  (make-package "ROBINT_MSGS::RECORDIMAGE"))
(unless (find-package "ROBINT_MSGS::RECORDIMAGEREQUEST")
  (make-package "ROBINT_MSGS::RECORDIMAGEREQUEST"))
(unless (find-package "ROBINT_MSGS::RECORDIMAGERESPONSE")
  (make-package "ROBINT_MSGS::RECORDIMAGERESPONSE"))

(in-package "ROS")





(defclass robint_msgs::RecordImageRequest
  :super ros::object
  :slots (_enable _compression_level ))

(defmethod robint_msgs::RecordImageRequest
  (:init
   (&key
    ((:enable __enable) nil)
    ((:compression_level __compression_level) 0)
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _compression_level (round __compression_level))
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:compression_level
   (&optional __compression_level)
   (if __compression_level (setq _compression_level __compression_level)) _compression_level)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; int32 _compression_level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; int32 _compression_level
       (write-long _compression_level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _compression_level
     (setq _compression_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robint_msgs::RecordImageResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robint_msgs::RecordImageResponse
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

(defclass robint_msgs::RecordImage
  :super ros::object
  :slots ())

(setf (get robint_msgs::RecordImage :md5sum-) "773a71c89a6b14108e80ced63f2ba488")
(setf (get robint_msgs::RecordImage :datatype-) "robint_msgs/RecordImage")
(setf (get robint_msgs::RecordImage :request) robint_msgs::RecordImageRequest)
(setf (get robint_msgs::RecordImage :response) robint_msgs::RecordImageResponse)

(defmethod robint_msgs::RecordImageRequest
  (:response () (instance robint_msgs::RecordImageResponse :init)))

(setf (get robint_msgs::RecordImageRequest :md5sum-) "773a71c89a6b14108e80ced63f2ba488")
(setf (get robint_msgs::RecordImageRequest :datatype-) "robint_msgs/RecordImageRequest")
(setf (get robint_msgs::RecordImageRequest :definition-)
      "bool enable
int32 compression_level
---
bool success
string message

")

(setf (get robint_msgs::RecordImageResponse :md5sum-) "773a71c89a6b14108e80ced63f2ba488")
(setf (get robint_msgs::RecordImageResponse :datatype-) "robint_msgs/RecordImageResponse")
(setf (get robint_msgs::RecordImageResponse :definition-)
      "bool enable
int32 compression_level
---
bool success
string message

")



(provide :robint_msgs/RecordImage "773a71c89a6b14108e80ced63f2ba488")


