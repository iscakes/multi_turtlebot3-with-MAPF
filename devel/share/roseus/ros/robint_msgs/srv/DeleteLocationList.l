;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::DeleteLocationList)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'DeleteLocationList (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::DELETELOCATIONLIST")
  (make-package "ROBINT_MSGS::DELETELOCATIONLIST"))
(unless (find-package "ROBINT_MSGS::DELETELOCATIONLISTREQUEST")
  (make-package "ROBINT_MSGS::DELETELOCATIONLISTREQUEST"))
(unless (find-package "ROBINT_MSGS::DELETELOCATIONLISTRESPONSE")
  (make-package "ROBINT_MSGS::DELETELOCATIONLISTRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::DeleteLocationListRequest
  :super ros::object
  :slots (_map_name _map_uuid _group_uuid _location_uuid_list ))

(defmethod robint_msgs::DeleteLocationListRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:map_uuid __map_uuid) "")
    ((:group_uuid __group_uuid) "")
    ((:location_uuid_list __location_uuid_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _map_uuid (string __map_uuid))
   (setq _group_uuid (string __group_uuid))
   (setq _location_uuid_list __location_uuid_list)
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:map_uuid
   (&optional __map_uuid)
   (if __map_uuid (setq _map_uuid __map_uuid)) _map_uuid)
  (:group_uuid
   (&optional __group_uuid)
   (if __group_uuid (setq _group_uuid __group_uuid)) _group_uuid)
  (:location_uuid_list
   (&optional __location_uuid_list)
   (if __location_uuid_list (setq _location_uuid_list __location_uuid_list)) _location_uuid_list)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _map_uuid
    4 (length _map_uuid)
    ;; string _group_uuid
    4 (length _group_uuid)
    ;; string[] _location_uuid_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _location_uuid_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _map_uuid
       (write-long (length _map_uuid) s) (princ _map_uuid s)
     ;; string _group_uuid
       (write-long (length _group_uuid) s) (princ _group_uuid s)
     ;; string[] _location_uuid_list
     (write-long (length _location_uuid_list) s)
     (dolist (elem _location_uuid_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _map_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _location_uuid_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _location_uuid_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _location_uuid_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass robint_msgs::DeleteLocationListResponse
  :super ros::object
  :slots (_success _error_code _message ))

(defmethod robint_msgs::DeleteLocationListResponse
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

(defclass robint_msgs::DeleteLocationList
  :super ros::object
  :slots ())

(setf (get robint_msgs::DeleteLocationList :md5sum-) "a5384e6972f15cf311e3fd436279ad0f")
(setf (get robint_msgs::DeleteLocationList :datatype-) "robint_msgs/DeleteLocationList")
(setf (get robint_msgs::DeleteLocationList :request) robint_msgs::DeleteLocationListRequest)
(setf (get robint_msgs::DeleteLocationList :response) robint_msgs::DeleteLocationListResponse)

(defmethod robint_msgs::DeleteLocationListRequest
  (:response () (instance robint_msgs::DeleteLocationListResponse :init)))

(setf (get robint_msgs::DeleteLocationListRequest :md5sum-) "a5384e6972f15cf311e3fd436279ad0f")
(setf (get robint_msgs::DeleteLocationListRequest :datatype-) "robint_msgs/DeleteLocationListRequest")
(setf (get robint_msgs::DeleteLocationListRequest :definition-)
      "string map_name
string map_uuid
string group_uuid
string[] location_uuid_list
---
bool success
uint8 error_code
string message
")

(setf (get robint_msgs::DeleteLocationListResponse :md5sum-) "a5384e6972f15cf311e3fd436279ad0f")
(setf (get robint_msgs::DeleteLocationListResponse :datatype-) "robint_msgs/DeleteLocationListResponse")
(setf (get robint_msgs::DeleteLocationListResponse :definition-)
      "string map_name
string map_uuid
string group_uuid
string[] location_uuid_list
---
bool success
uint8 error_code
string message
")



(provide :robint_msgs/DeleteLocationList "a5384e6972f15cf311e3fd436279ad0f")


