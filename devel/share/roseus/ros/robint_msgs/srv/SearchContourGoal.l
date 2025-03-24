;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::SearchContourGoal)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'SearchContourGoal (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::SEARCHCONTOURGOAL")
  (make-package "ROBINT_MSGS::SEARCHCONTOURGOAL"))
(unless (find-package "ROBINT_MSGS::SEARCHCONTOURGOALREQUEST")
  (make-package "ROBINT_MSGS::SEARCHCONTOURGOALREQUEST"))
(unless (find-package "ROBINT_MSGS::SEARCHCONTOURGOALRESPONSE")
  (make-package "ROBINT_MSGS::SEARCHCONTOURGOALRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robint_msgs::SearchContourGoalRequest
  :super ros::object
  :slots (_contour ))

(defmethod robint_msgs::SearchContourGoalRequest
  (:init
   (&key
    ((:contour __contour) (instance robint_msgs::PathWithPoint :init))
    )
   (send-super :init)
   (setq _contour __contour)
   self)
  (:contour
   (&rest __contour)
   (if (keywordp (car __contour))
       (send* _contour __contour)
     (progn
       (if __contour (setq _contour (car __contour)))
       _contour)))
  (:serialization-length
   ()
   (+
    ;; robint_msgs/PathWithPoint _contour
    (send _contour :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robint_msgs/PathWithPoint _contour
       (send _contour :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robint_msgs/PathWithPoint _contour
     (send _contour :deserialize buf ptr-) (incf ptr- (send _contour :serialization-length))
   ;;
   self)
  )

(defclass robint_msgs::SearchContourGoalResponse
  :super ros::object
  :slots (_goal_point _success _error_code _message ))

(defmethod robint_msgs::SearchContourGoalResponse
  (:init
   (&key
    ((:goal_point __goal_point) (instance geometry_msgs::Point :init))
    ((:success __success) nil)
    ((:error_code __error_code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _goal_point __goal_point)
   (setq _success __success)
   (setq _error_code (round __error_code))
   (setq _message (string __message))
   self)
  (:goal_point
   (&rest __goal_point)
   (if (keywordp (car __goal_point))
       (send* _goal_point __goal_point)
     (progn
       (if __goal_point (setq _goal_point (car __goal_point)))
       _goal_point)))
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
    ;; geometry_msgs/Point _goal_point
    (send _goal_point :serialization-length)
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
     ;; geometry_msgs/Point _goal_point
       (send _goal_point :serialize s)
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
   ;; geometry_msgs/Point _goal_point
     (send _goal_point :deserialize buf ptr-) (incf ptr- (send _goal_point :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robint_msgs::SearchContourGoal
  :super ros::object
  :slots ())

(setf (get robint_msgs::SearchContourGoal :md5sum-) "03eee4fe4b2d2cff2b33a97e7e028c10")
(setf (get robint_msgs::SearchContourGoal :datatype-) "robint_msgs/SearchContourGoal")
(setf (get robint_msgs::SearchContourGoal :request) robint_msgs::SearchContourGoalRequest)
(setf (get robint_msgs::SearchContourGoal :response) robint_msgs::SearchContourGoalResponse)

(defmethod robint_msgs::SearchContourGoalRequest
  (:response () (instance robint_msgs::SearchContourGoalResponse :init)))

(setf (get robint_msgs::SearchContourGoalRequest :md5sum-) "03eee4fe4b2d2cff2b33a97e7e028c10")
(setf (get robint_msgs::SearchContourGoalRequest :datatype-) "robint_msgs/SearchContourGoalRequest")
(setf (get robint_msgs::SearchContourGoalRequest :definition-)
      "PathWithPoint contour

================================================================================
MSG: robint_msgs/PathWithPoint
uint32 id
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point goal_point
bool success
uint8 error_code
string message

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get robint_msgs::SearchContourGoalResponse :md5sum-) "03eee4fe4b2d2cff2b33a97e7e028c10")
(setf (get robint_msgs::SearchContourGoalResponse :datatype-) "robint_msgs/SearchContourGoalResponse")
(setf (get robint_msgs::SearchContourGoalResponse :definition-)
      "PathWithPoint contour

================================================================================
MSG: robint_msgs/PathWithPoint
uint32 id
string type
geometry_msgs/Point[] points
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point goal_point
bool success
uint8 error_code
string message

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :robint_msgs/SearchContourGoal "03eee4fe4b2d2cff2b33a97e7e028c10")


