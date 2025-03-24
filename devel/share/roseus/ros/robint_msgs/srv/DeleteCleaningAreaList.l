;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::DeleteCleaningAreaList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'DeleteCleaningAreaList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::DELETECLEANINGAREALIST")
  (make-package "ROBINT_MSGS::DELETECLEANINGAREALIST"))
(unless (find-package "ROBINT_MSGS::DELETECLEANINGAREALISTREQUEST")
  (make-package "ROBINT_MSGS::DELETECLEANINGAREALISTREQUEST"))
(unless (find-package "ROBINT_MSGS::DELETECLEANINGAREALISTRESPONSE")
  (make-package "ROBINT_MSGS::DELETECLEANINGAREALISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::DeleteCleaningAreaListRequest
  :super ros::object
  :slots (_map_uuid _uuid_list ))

(defmethod robint_msgs::DeleteCleaningAreaListRequest
  (:init
   (&key
    ((:map_uuid __map_uuid) "")
    ((:uuid_list __uuid_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _map_uuid (string __map_uuid))
   (setq _uuid_list __uuid_list)
   self)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:uuid_list
   (&optional __uuid_list)
   (if __uuid_list (setq _uuid_list __uuid_list)) _uuid_list)
  (:serialization-length
   ()
   (+
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; string[] _uuid_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _uuid_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; string[] _uuid_list
     (write-long (length _uuid_list) s)
     (dolist (elem _uuid_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _uuid_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uuid_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _uuid_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robint_msgs::DeleteCleaningAreaListResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::DeleteCleaningAreaListResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _error_code
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
     ;; uint8 _error_code
       (write-byte _error_code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::DeleteCleaningAreaList
  :super ros::object
  :slots ())

(setf (get robint_msgs::DeleteCleaningAreaList :md5sum-) "92a6bbded456873cc100a7391042144d")
(setf (get robint_msgs::DeleteCleaningAreaList :datatype-) "robint_msgs/DeleteCleaningAreaList")
(setf (get robint_msgs::DeleteCleaningAreaList :request) robint_msgs::DeleteCleaningAreaListRequest)
(setf (get robint_msgs::DeleteCleaningAreaList :response) robint_msgs::DeleteCleaningAreaListResponse)

(defmethod robint_msgs::DeleteCleaningAreaListRequest
  (:response () (instance robint_msgs::DeleteCleaningAreaListResponse :init)))

(setf (get robint_msgs::DeleteCleaningAreaListRequest :md5sum-) "92a6bbded456873cc100a7391042144d")
(setf (get robint_msgs::DeleteCleaningAreaListRequest :datatype-) "robint_msgs/DeleteCleaningAreaListRequest")
(setf (get robint_msgs::DeleteCleaningAreaListRequest :definition-)
      "string map_uuid
string[] uuid_list
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::DeleteCleaningAreaListResponse :md5sum-) "92a6bbded456873cc100a7391042144d")
(setf (get robint_msgs::DeleteCleaningAreaListResponse :datatype-) "robint_msgs/DeleteCleaningAreaListResponse")
(setf (get robint_msgs::DeleteCleaningAreaListResponse :definition-)
      "string map_uuid
string[] uuid_list
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/DeleteCleaningAreaList "92a6bbded456873cc100a7391042144d")


