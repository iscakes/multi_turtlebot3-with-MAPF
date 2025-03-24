;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::DeleteMapList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'DeleteMapList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::DELETEMAPLIST")
  (make-package "ROBINT_MSGS::DELETEMAPLIST"))
(unless (find-package "ROBINT_MSGS::DELETEMAPLISTREQUEST")
  (make-package "ROBINT_MSGS::DELETEMAPLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::DELETEMAPLISTRESPONSE")
  (make-package "ROBINT_MSGS::DELETEMAPLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::DeleteMapListRequest
  :super ros::object
  :slots (_map_name_list _map_uuid_list ))

(defmethod robint_msgs::DeleteMapListRequest
  (:init
   (&key
    ((:map_name_list __map_name_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:map_uuid_list __map_uuid_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _map_name_list __map_name_list)
   (setq _map_uuid_list __map_uuid_list)
   self)
  (:map_name_list
   (&optional __map_name_list)
   (if __map_name_list (setq _map_name_list __map_name_list)) _map_name_list)
  (:map_uuid_list
   (&optional __map_uuid_list)
   (if __map_uuid_list (setq _map_uuid_list __map_uuid_list)) _map_uuid_list)
  (:serialization-length
   ()
   (+
    ;; string[] _map_name_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _map_name_list)) 4
    ;; string[] _map_uuid_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _map_uuid_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _map_name_list
     (write-long (length _map_name_list) s)
     (dolist (elem _map_name_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _map_uuid_list
     (write-long (length _map_uuid_list) s)
     (dolist (elem _map_uuid_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _map_name_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_name_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _map_name_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _map_uuid_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_uuid_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _map_uuid_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robint_msgs::DeleteMapListResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::DeleteMapListResponse
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

(defclass robint_msgs::DeleteMapList
  :super ros::object
  :slots ())

(setf (get robint_msgs::DeleteMapList :md5sum-) "5b79296d0ca619a3fadac0e357b7f539")
(setf (get robint_msgs::DeleteMapList :datatype-) "robint_msgs/DeleteMapList")
(setf (get robint_msgs::DeleteMapList :request) robint_msgs::DeleteMapListRequest)
(setf (get robint_msgs::DeleteMapList :response) robint_msgs::DeleteMapListResponse)

(defmethod robint_msgs::DeleteMapListRequest
  (:response () (instance robint_msgs::DeleteMapListResponse :init)))

(setf (get robint_msgs::DeleteMapListRequest :md5sum-) "5b79296d0ca619a3fadac0e357b7f539")
(setf (get robint_msgs::DeleteMapListRequest :datatype-) "robint_msgs/DeleteMapListRequest")
(setf (get robint_msgs::DeleteMapListRequest :definition-)
      "string[] map_name_list
string[] map_uuid_list
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::DeleteMapListResponse :md5sum-) "5b79296d0ca619a3fadac0e357b7f539")
(setf (get robint_msgs::DeleteMapListResponse :datatype-) "robint_msgs/DeleteMapListResponse")
(setf (get robint_msgs::DeleteMapListResponse :definition-)
      "string[] map_name_list
string[] map_uuid_list
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/DeleteMapList "5b79296d0ca619a3fadac0e357b7f539")


