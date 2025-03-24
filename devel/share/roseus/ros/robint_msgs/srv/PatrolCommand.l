;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::PatrolCommand)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'PatrolCommand (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::PATROLCOMMAND")
  (make-package "ROBINT_MSGS::PATROLCOMMAND"))
(unless (find-package "ROBINT_MSGS::PATROLCOMMANDREQUEST")
  (make-package "ROBINT_MSGS::PATROLCOMMANDREQUEST"))
(unless (find-package "ROBINT_MSGS::PATROLCOMMANDRESPONSE")
  (make-package "ROBINT_MSGS::PATROLCOMMANDRESPONSE"))

(in-package "ROS")





(defclass robint_msgs::PatrolCommandRequest
  :super ros::object
  :slots (_map_name _route_name _command ))

(defmethod robint_msgs::PatrolCommandRequest
  (:init
   (&key
    ((:map_name __map_name) "")
    ((:route_name __route_name) "")
    ((:command __command) "")
    )
   (send-super :init)
   (setq _map_name (string __map_name))
   (setq _route_name (string __route_name))
   (setq _command (string __command))
   self)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:route_name
   (&optional __route_name)
   (if __route_name (setq _route_name __route_name)) _route_name)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _map_name
    4 (length _map_name)
    ;; string _route_name
    4 (length _route_name)
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _route_name
       (write-long (length _route_name) s) (princ _route_name s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _route_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _route_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::PatrolCommandResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robint_msgs::PatrolCommandResponse
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

(defclass robint_msgs::PatrolCommand
  :super ros::object
  :slots ())

(setf (get robint_msgs::PatrolCommand :md5sum-) "e5c44304f8214fe239245479cc09d727")
(setf (get robint_msgs::PatrolCommand :datatype-) "robint_msgs/PatrolCommand")
(setf (get robint_msgs::PatrolCommand :request) robint_msgs::PatrolCommandRequest)
(setf (get robint_msgs::PatrolCommand :response) robint_msgs::PatrolCommandResponse)

(defmethod robint_msgs::PatrolCommandRequest
  (:response () (instance robint_msgs::PatrolCommandResponse :init)))

(setf (get robint_msgs::PatrolCommandRequest :md5sum-) "e5c44304f8214fe239245479cc09d727")
(setf (get robint_msgs::PatrolCommandRequest :datatype-) "robint_msgs/PatrolCommandRequest")
(setf (get robint_msgs::PatrolCommandRequest :definition-)
      "string map_name
string route_name
string command       # 'Start', 'Pause', 'Continue', 'Stop'
---
bool success
string message
")

(setf (get robint_msgs::PatrolCommandResponse :md5sum-) "e5c44304f8214fe239245479cc09d727")
(setf (get robint_msgs::PatrolCommandResponse :datatype-) "robint_msgs/PatrolCommandResponse")
(setf (get robint_msgs::PatrolCommandResponse :definition-)
      "string map_name
string route_name
string command       # 'Start', 'Pause', 'Continue', 'Stop'
---
bool success
string message
")



(provide :robint_msgs/PatrolCommand "e5c44304f8214fe239245479cc09d727")


