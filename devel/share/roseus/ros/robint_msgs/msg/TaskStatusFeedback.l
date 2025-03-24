;; Auto-generated. Do not edit!


(when (boundp 'robint_msgs::TaskStatusFeedback)
  (if (not (find-package "ROBINT_MSGS"))
    (make-package "ROBINT_MSGS"))
  (shadow 'TaskStatusFeedback (find-package "ROBINT_MSGS")))
(unless (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK")
  (make-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TaskStatusFeedback.msg.html


(intern "*NONE*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*NONE* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*NONE* 0)
(intern "*RUNNING*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*RUNNING* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*RUNNING* 1)
(intern "*PAUSE*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*PAUSE* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*PAUSE* 2)
(intern "*STOP*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*STOP* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*STOP* 3)
(intern "*GET_ROBOT_POSE_ERROR*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*GET_ROBOT_POSE_ERROR* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*GET_ROBOT_POSE_ERROR* 4)
(intern "*NAV_FAILURE*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*NAV_FAILURE* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*NAV_FAILURE* 21)
(intern "*GLOBAL_PLAN_FAILURE*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*GLOBAL_PLAN_FAILURE* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*GLOBAL_PLAN_FAILURE* 22)
(intern "*LOCAL_PLAN_FAILURE*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*LOCAL_PLAN_FAILURE* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*LOCAL_PLAN_FAILURE* 23)
(intern "*WAIT_AT_GOAL_CANDIDATE*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*WAIT_AT_GOAL_CANDIDATE* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*WAIT_AT_GOAL_CANDIDATE* 24)
(intern "*NAV_CANCEL*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*NAV_CANCEL* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*NAV_CANCEL* 25)
(intern "*PLAN_EXCEPTION*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*PLAN_EXCEPTION* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*PLAN_EXCEPTION* 26)
(intern "*OPEN_GATE_TIMEOUT*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*OPEN_GATE_TIMEOUT* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*OPEN_GATE_TIMEOUT* 41)
(intern "*FAIL_TO_DETECT_DOCK*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*FAIL_TO_DETECT_DOCK* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*FAIL_TO_DETECT_DOCK* 51)
(intern "*DOCK_OBSTACLE_WARN*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*DOCK_OBSTACLE_WARN* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*DOCK_OBSTACLE_WARN* 52)
(intern "*DOCK_TIMEOUT*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*DOCK_TIMEOUT* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*DOCK_TIMEOUT* 53)
(intern "*RETRY_TIMEOUT*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*RETRY_TIMEOUT* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*RETRY_TIMEOUT* 54)
(intern "*GO_TO_ANCHOR*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*GO_TO_ANCHOR* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*GO_TO_ANCHOR* 55)
(intern "*APPROACH_DOCK*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*APPROACH_DOCK* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*APPROACH_DOCK* 56)
(intern "*UNDOCK_OBSTACLE_WARN*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*UNDOCK_OBSTACLE_WARN* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*UNDOCK_OBSTACLE_WARN* 71)
(intern "*UNDOCK_TIMEOUT*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*UNDOCK_TIMEOUT* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*UNDOCK_TIMEOUT* 72)
(intern "*MOVE_INTO_ELEVATOR_PLAN_FAILURE*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*MOVE_INTO_ELEVATOR_PLAN_FAILURE* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*MOVE_INTO_ELEVATOR_PLAN_FAILURE* 81)
(intern "*MOVE_INTO_GOAL_IS_OCCUPIED*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*MOVE_INTO_GOAL_IS_OCCUPIED* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*MOVE_INTO_GOAL_IS_OCCUPIED* 82)
(intern "*MOVE_INTO_OBSTACLE_WARN*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*MOVE_INTO_OBSTACLE_WARN* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*MOVE_INTO_OBSTACLE_WARN* 83)
(intern "*MOVE_INTO_ELEVATOR_TIMEOUT*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*MOVE_INTO_ELEVATOR_TIMEOUT* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*MOVE_INTO_ELEVATOR_TIMEOUT* 84)
(intern "*MOVE_INTO_ELEVATOR_FAILURE*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*MOVE_INTO_ELEVATOR_FAILURE* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*MOVE_INTO_ELEVATOR_FAILURE* 85)
(intern "*MOVE_OFF_ELEVATOR_FAILURE*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*MOVE_OFF_ELEVATOR_FAILURE* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*MOVE_OFF_ELEVATOR_FAILURE* 91)
(intern "*MOVE_OFF_GOAL_IS_OCCUPIED*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*MOVE_OFF_GOAL_IS_OCCUPIED* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*MOVE_OFF_GOAL_IS_OCCUPIED* 92)
(intern "*MOVE_OFF_OBSTACLE_WARN*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*MOVE_OFF_OBSTACLE_WARN* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*MOVE_OFF_OBSTACLE_WARN* 93)
(intern "*MOTION_OBSTACLE_WARNING*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*MOTION_OBSTACLE_WARNING* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*MOTION_OBSTACLE_WARNING* 101)
(intern "*TRACK_BACK*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*TRACK_BACK* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*TRACK_BACK* 102)
(intern "*ROS_ERROR*" (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(shadow '*ROS_ERROR* (find-package "ROBINT_MSGS::TASKSTATUSFEEDBACK"))
(defconstant robint_msgs::TaskStatusFeedback::*ROS_ERROR* 255)

(defun robint_msgs::TaskStatusFeedback-to-symbol (const)
  (cond
        ((= const 0) 'robint_msgs::TaskStatusFeedback::*NONE*)
        ((= const 1) 'robint_msgs::TaskStatusFeedback::*RUNNING*)
        ((= const 2) 'robint_msgs::TaskStatusFeedback::*PAUSE*)
        ((= const 3) 'robint_msgs::TaskStatusFeedback::*STOP*)
        ((= const 4) 'robint_msgs::TaskStatusFeedback::*GET_ROBOT_POSE_ERROR*)
        ((= const 21) 'robint_msgs::TaskStatusFeedback::*NAV_FAILURE*)
        ((= const 22) 'robint_msgs::TaskStatusFeedback::*GLOBAL_PLAN_FAILURE*)
        ((= const 23) 'robint_msgs::TaskStatusFeedback::*LOCAL_PLAN_FAILURE*)
        ((= const 24) 'robint_msgs::TaskStatusFeedback::*WAIT_AT_GOAL_CANDIDATE*)
        ((= const 25) 'robint_msgs::TaskStatusFeedback::*NAV_CANCEL*)
        ((= const 26) 'robint_msgs::TaskStatusFeedback::*PLAN_EXCEPTION*)
        ((= const 41) 'robint_msgs::TaskStatusFeedback::*OPEN_GATE_TIMEOUT*)
        ((= const 51) 'robint_msgs::TaskStatusFeedback::*FAIL_TO_DETECT_DOCK*)
        ((= const 52) 'robint_msgs::TaskStatusFeedback::*DOCK_OBSTACLE_WARN*)
        ((= const 53) 'robint_msgs::TaskStatusFeedback::*DOCK_TIMEOUT*)
        ((= const 54) 'robint_msgs::TaskStatusFeedback::*RETRY_TIMEOUT*)
        ((= const 55) 'robint_msgs::TaskStatusFeedback::*GO_TO_ANCHOR*)
        ((= const 56) 'robint_msgs::TaskStatusFeedback::*APPROACH_DOCK*)
        ((= const 71) 'robint_msgs::TaskStatusFeedback::*UNDOCK_OBSTACLE_WARN*)
        ((= const 72) 'robint_msgs::TaskStatusFeedback::*UNDOCK_TIMEOUT*)
        ((= const 81) 'robint_msgs::TaskStatusFeedback::*MOVE_INTO_ELEVATOR_PLAN_FAILURE*)
        ((= const 82) 'robint_msgs::TaskStatusFeedback::*MOVE_INTO_GOAL_IS_OCCUPIED*)
        ((= const 83) 'robint_msgs::TaskStatusFeedback::*MOVE_INTO_OBSTACLE_WARN*)
        ((= const 84) 'robint_msgs::TaskStatusFeedback::*MOVE_INTO_ELEVATOR_TIMEOUT*)
        ((= const 85) 'robint_msgs::TaskStatusFeedback::*MOVE_INTO_ELEVATOR_FAILURE*)
        ((= const 91) 'robint_msgs::TaskStatusFeedback::*MOVE_OFF_ELEVATOR_FAILURE*)
        ((= const 92) 'robint_msgs::TaskStatusFeedback::*MOVE_OFF_GOAL_IS_OCCUPIED*)
        ((= const 93) 'robint_msgs::TaskStatusFeedback::*MOVE_OFF_OBSTACLE_WARN*)
        ((= const 101) 'robint_msgs::TaskStatusFeedback::*MOTION_OBSTACLE_WARNING*)
        ((= const 102) 'robint_msgs::TaskStatusFeedback::*TRACK_BACK*)
        ((= const 255) 'robint_msgs::TaskStatusFeedback::*ROS_ERROR*)
        (t nil)))

(defclass robint_msgs::TaskStatusFeedback
  :super ros::object
  :slots ())

(defmethod robint_msgs::TaskStatusFeedback
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

(setf (get robint_msgs::TaskStatusFeedback :md5sum-) "f4c55101ab12bccd187ce627a0586984")
(setf (get robint_msgs::TaskStatusFeedback :datatype-) "robint_msgs/TaskStatusFeedback")
(setf (get robint_msgs::TaskStatusFeedback :definition-)
      "uint8 NONE = 0
uint8 RUNNING = 1
uint8 PAUSE = 2
uint8 STOP = 3


# Mapping
uint8 GET_ROBOT_POSE_ERROR = 4

# Navigation
uint8 NAV_FAILURE = 21
uint8 GLOBAL_PLAN_FAILURE = 22
uint8 LOCAL_PLAN_FAILURE = 23
uint8 WAIT_AT_GOAL_CANDIDATE = 24
uint8 NAV_CANCEL = 25
uint8 PLAN_EXCEPTION = 26

# OpenGate
uint8 OPEN_GATE_TIMEOUT = 41

# AutoCharge
uint8 FAIL_TO_DETECT_DOCK=51
uint8 DOCK_OBSTACLE_WARN=52
uint8 DOCK_TIMEOUT=53
uint8 RETRY_TIMEOUT=54
uint8 GO_TO_ANCHOR=55
uint8 APPROACH_DOCK=56

# Undock
uint8 UNDOCK_OBSTACLE_WARN=71
uint8 UNDOCK_TIMEOUT=72

# MoveIntoElevator
uint8 MOVE_INTO_ELEVATOR_PLAN_FAILURE=81
uint8 MOVE_INTO_GOAL_IS_OCCUPIED=82
uint8 MOVE_INTO_OBSTACLE_WARN=83
uint8 MOVE_INTO_ELEVATOR_TIMEOUT=84
uint8 MOVE_INTO_ELEVATOR_FAILURE=85

# MoveOffElevator
uint8 MOVE_OFF_ELEVATOR_FAILURE=91
uint8 MOVE_OFF_GOAL_IS_OCCUPIED=92
uint8 MOVE_OFF_OBSTACLE_WARN=93

# Motion
uint8 MOTION_OBSTACLE_WARNING=101

# TrackPath
uint8 TRACK_BACK=102

uint8 ROS_ERROR = 255
")



(provide :robint_msgs/TaskStatusFeedback "f4c55101ab12bccd187ce627a0586984")


