;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::GetEmbeddingVersion)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'GetEmbeddingVersion (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::GETEMBEDDINGVERSION")
  (make-package "ROBINT_MSGS::GETEMBEDDINGVERSION"))
(unless (find-package "ROBINT_MSGS::GETEMBEDDINGVERSIONREQUEST")
  (make-package "ROBINT_MSGS::GETEMBEDDINGVERSIONREQUEST"))
(unless (find-package "ROBINT_MSGS::GETEMBEDDINGVERSIONRESPONSE")
  (make-package "ROBINT_MSGS::GETEMBEDDINGVERSIONRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::GetEmbeddingVersionRequest
  :super ros::object
  :slots ())

(defmethod robint_msgs::GetEmbeddingVersionRequest
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

(defclass robint_msgs::GetEmbeddingVersionResponse
  :super ros::object
  :slots (_protocal_version _success _error_code ))

(defmethod robint_msgs::GetEmbeddingVersionResponse
  (:init
   (&key
    ((:protocal_version __protocal_version) "")
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    )
   (send-super :init)
   (setq _protocal_version (string __protocal_version))
   (setq _success __success)
   (setq _error_code (round __error_code))
   self)
  (:protocal_version
   (&optional __protocal_version)
   (if __protocal_version (setq _protocal_version __protocal_version)) _protocal_version)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:serialization-length
   ()
   (+
    ;; string _protocal_version
    4 (length _protocal_version)
    ;; bool _success
    1
    ;; uint8 _error_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _protocal_version
       (write-long (length _protocal_version) s) (princ _protocal_version s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _protocal_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _protocal_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass robint_msgs::GetEmbeddingVersion
  :super ros::object
  :slots ())

(setf (get robint_msgs::GetEmbeddingVersion :md5sum-) "e7b90ba6d5e0d773d0e5bf8c701d7b10")
(setf (get robint_msgs::GetEmbeddingVersion :datatype-) "robint_msgs/GetEmbeddingVersion")
(setf (get robint_msgs::GetEmbeddingVersion :request) robint_msgs::GetEmbeddingVersionRequest)
(setf (get robint_msgs::GetEmbeddingVersion :response) robint_msgs::GetEmbeddingVersionResponse)

(defmethod robint_msgs::GetEmbeddingVersionRequest
  (:response () (instance robint_msgs::GetEmbeddingVersionResponse :init)))

(setf (get robint_msgs::GetEmbeddingVersionRequest :md5sum-) "e7b90ba6d5e0d773d0e5bf8c701d7b10")
(setf (get robint_msgs::GetEmbeddingVersionRequest :datatype-) "robint_msgs/GetEmbeddingVersionRequest")
(setf (get robint_msgs::GetEmbeddingVersionRequest :definition-)
      "---
string protocal_version
bool success
uint8 error_code
")

(setf (get robint_msgs::GetEmbeddingVersionResponse :md5sum-) "e7b90ba6d5e0d773d0e5bf8c701d7b10")
(setf (get robint_msgs::GetEmbeddingVersionResponse :datatype-) "robint_msgs/GetEmbeddingVersionResponse")
(setf (get robint_msgs::GetEmbeddingVersionResponse :definition-)
      "---
string protocal_version
bool success
uint8 error_code
")



(provide :robint_msgs/GetEmbeddingVersion "e7b90ba6d5e0d773d0e5bf8c701d7b10")


