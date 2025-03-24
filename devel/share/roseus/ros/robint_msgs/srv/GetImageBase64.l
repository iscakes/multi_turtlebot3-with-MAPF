;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetImageBase64)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetImageBase64 (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETIMAGEBASE64")
  (make-package "ROBINT_MSGS::GETIMAGEBASE64"))
(unless (find-package "ROBINT_MSGS::GETIMAGEBASE64REQUEST")
  (make-package "ROBINT_MSGS::GETIMAGEBASE64REQUEST"))
(unless (find-package "ROBINT_MSGS::GETIMAGEBASE64RESPONSE")
  (make-package "ROBINT_MSGS::GETIMAGEBASE64RESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetImageBase64Request
  :super ros::object
  :slots (_topic ))

(defmethod robint_msgs::GetImageBase64Request
  (:init
   (&key
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _topic (string __topic))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::GetImageBase64Response
  :super ros::object
  :slots (_base64 _format _error_code _success ))

(defmethod robint_msgs::GetImageBase64Response
  (:init
   (&key
    ((:base64 __base64) "")
    ((:format __format) "")
    ((:error_code __error_code) 0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _base64 (string __base64))
   (setq _format (string __format))
   (setq _error_code (round __error_code))
   (setq _success __success)
   self)
  (:base64
   (&optional __base64)
   (if __base64 (setq _base64 __base64)) _base64)
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; string _base64
    4 (length _base64)
    ;; string _format
    4 (length _format)
    ;; uint8 _error_code
    1
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _base64
       (write-long (length _base64) s) (princ _base64 s)
     ;; string _format
       (write-long (length _format) s) (princ _format s)
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _base64
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base64 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetImageBase64
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetImageBase64 :md5sum-) "a99467aa3a03e9f6fc741eaebff2f37a")
(setf (get robint_msgs::GetImageBase64 :datatype-) "robint_msgs/GetImageBase64")
(setf (get robint_msgs::GetImageBase64 :request) robint_msgs::GetImageBase64Request)
(setf (get robint_msgs::GetImageBase64 :response) robint_msgs::GetImageBase64Response)

(defmethod robint_msgs::GetImageBase64Request
  (:response () (instance robint_msgs::GetImageBase64Response :init)))

(setf (get robint_msgs::GetImageBase64Request :md5sum-) "a99467aa3a03e9f6fc741eaebff2f37a")
(setf (get robint_msgs::GetImageBase64Request :datatype-) "robint_msgs/GetImageBase64Request")
(setf (get robint_msgs::GetImageBase64Request :definition-)
      "string topic
---
string base64
string format  # \"png\" or \"jpeg\"
uint8 error_code
bool success
")

(setf (get robint_msgs::GetImageBase64Response :md5sum-) "a99467aa3a03e9f6fc741eaebff2f37a")
(setf (get robint_msgs::GetImageBase64Response :datatype-) "robint_msgs/GetImageBase64Response")
(setf (get robint_msgs::GetImageBase64Response :definition-)
      "string topic
---
string base64
string format  # \"png\" or \"jpeg\"
uint8 error_code
bool success
")



(provide :robint_msgs/GetImageBase64 "a99467aa3a03e9f6fc741eaebff2f37a")


