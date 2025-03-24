; Auto-generated. Do not edit!


(cl:in-package robint_msgs-msg)


;//! \htmlinclude TaskStatusFeedback.msg.html

(cl:defclass <TaskStatusFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TaskStatusFeedback (<TaskStatusFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskStatusFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskStatusFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robint_msgs-msg:<TaskStatusFeedback> is deprecated: use robint_msgs-msg:TaskStatusFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskStatusFeedback>)))
    "Constants for message type '<TaskStatusFeedback>"
  '((:NONE . 0)
    (:RUNNING . 1)
    (:PAUSE . 2)
    (:STOP . 3)
    (:GET_ROBOT_POSE_ERROR . 4)
    (:NAV_FAILURE . 21)
    (:GLOBAL_PLAN_FAILURE . 22)
    (:LOCAL_PLAN_FAILURE . 23)
    (:WAIT_AT_GOAL_CANDIDATE . 24)
    (:NAV_CANCEL . 25)
    (:PLAN_EXCEPTION . 26)
    (:OPEN_GATE_TIMEOUT . 41)
    (:FAIL_TO_DETECT_DOCK . 51)
    (:DOCK_OBSTACLE_WARN . 52)
    (:DOCK_TIMEOUT . 53)
    (:RETRY_TIMEOUT . 54)
    (:GO_TO_ANCHOR . 55)
    (:APPROACH_DOCK . 56)
    (:UNDOCK_OBSTACLE_WARN . 71)
    (:UNDOCK_TIMEOUT . 72)
    (:MOVE_INTO_ELEVATOR_PLAN_FAILURE . 81)
    (:MOVE_INTO_GOAL_IS_OCCUPIED . 82)
    (:MOVE_INTO_OBSTACLE_WARN . 83)
    (:MOVE_INTO_ELEVATOR_TIMEOUT . 84)
    (:MOVE_INTO_ELEVATOR_FAILURE . 85)
    (:MOVE_OFF_ELEVATOR_FAILURE . 91)
    (:MOVE_OFF_GOAL_IS_OCCUPIED . 92)
    (:MOVE_OFF_OBSTACLE_WARN . 93)
    (:MOTION_OBSTACLE_WARNING . 101)
    (:TRACK_BACK . 102)
    (:ROS_ERROR . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskStatusFeedback)))
    "Constants for message type 'TaskStatusFeedback"
  '((:NONE . 0)
    (:RUNNING . 1)
    (:PAUSE . 2)
    (:STOP . 3)
    (:GET_ROBOT_POSE_ERROR . 4)
    (:NAV_FAILURE . 21)
    (:GLOBAL_PLAN_FAILURE . 22)
    (:LOCAL_PLAN_FAILURE . 23)
    (:WAIT_AT_GOAL_CANDIDATE . 24)
    (:NAV_CANCEL . 25)
    (:PLAN_EXCEPTION . 26)
    (:OPEN_GATE_TIMEOUT . 41)
    (:FAIL_TO_DETECT_DOCK . 51)
    (:DOCK_OBSTACLE_WARN . 52)
    (:DOCK_TIMEOUT . 53)
    (:RETRY_TIMEOUT . 54)
    (:GO_TO_ANCHOR . 55)
    (:APPROACH_DOCK . 56)
    (:UNDOCK_OBSTACLE_WARN . 71)
    (:UNDOCK_TIMEOUT . 72)
    (:MOVE_INTO_ELEVATOR_PLAN_FAILURE . 81)
    (:MOVE_INTO_GOAL_IS_OCCUPIED . 82)
    (:MOVE_INTO_OBSTACLE_WARN . 83)
    (:MOVE_INTO_ELEVATOR_TIMEOUT . 84)
    (:MOVE_INTO_ELEVATOR_FAILURE . 85)
    (:MOVE_OFF_ELEVATOR_FAILURE . 91)
    (:MOVE_OFF_GOAL_IS_OCCUPIED . 92)
    (:MOVE_OFF_OBSTACLE_WARN . 93)
    (:MOTION_OBSTACLE_WARNING . 101)
    (:TRACK_BACK . 102)
    (:ROS_ERROR . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskStatusFeedback>) ostream)
  "Serializes a message object of type '<TaskStatusFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskStatusFeedback>) istream)
  "Deserializes a message object of type '<TaskStatusFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskStatusFeedback>)))
  "Returns string type for a message object of type '<TaskStatusFeedback>"
  "robint_msgs/TaskStatusFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskStatusFeedback)))
  "Returns string type for a message object of type 'TaskStatusFeedback"
  "robint_msgs/TaskStatusFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskStatusFeedback>)))
  "Returns md5sum for a message object of type '<TaskStatusFeedback>"
  "f4c55101ab12bccd187ce627a0586984")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskStatusFeedback)))
  "Returns md5sum for a message object of type 'TaskStatusFeedback"
  "f4c55101ab12bccd187ce627a0586984")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskStatusFeedback>)))
  "Returns full string definition for message of type '<TaskStatusFeedback>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 RUNNING = 1~%uint8 PAUSE = 2~%uint8 STOP = 3~%~%~%# Mapping~%uint8 GET_ROBOT_POSE_ERROR = 4~%~%# Navigation~%uint8 NAV_FAILURE = 21~%uint8 GLOBAL_PLAN_FAILURE = 22~%uint8 LOCAL_PLAN_FAILURE = 23~%uint8 WAIT_AT_GOAL_CANDIDATE = 24~%uint8 NAV_CANCEL = 25~%uint8 PLAN_EXCEPTION = 26~%~%# OpenGate~%uint8 OPEN_GATE_TIMEOUT = 41~%~%# AutoCharge~%uint8 FAIL_TO_DETECT_DOCK=51~%uint8 DOCK_OBSTACLE_WARN=52~%uint8 DOCK_TIMEOUT=53~%uint8 RETRY_TIMEOUT=54~%uint8 GO_TO_ANCHOR=55~%uint8 APPROACH_DOCK=56~%~%# Undock~%uint8 UNDOCK_OBSTACLE_WARN=71~%uint8 UNDOCK_TIMEOUT=72~%~%# MoveIntoElevator~%uint8 MOVE_INTO_ELEVATOR_PLAN_FAILURE=81~%uint8 MOVE_INTO_GOAL_IS_OCCUPIED=82~%uint8 MOVE_INTO_OBSTACLE_WARN=83~%uint8 MOVE_INTO_ELEVATOR_TIMEOUT=84~%uint8 MOVE_INTO_ELEVATOR_FAILURE=85~%~%# MoveOffElevator~%uint8 MOVE_OFF_ELEVATOR_FAILURE=91~%uint8 MOVE_OFF_GOAL_IS_OCCUPIED=92~%uint8 MOVE_OFF_OBSTACLE_WARN=93~%~%# Motion~%uint8 MOTION_OBSTACLE_WARNING=101~%~%# TrackPath~%uint8 TRACK_BACK=102~%~%uint8 ROS_ERROR = 255~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskStatusFeedback)))
  "Returns full string definition for message of type 'TaskStatusFeedback"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 RUNNING = 1~%uint8 PAUSE = 2~%uint8 STOP = 3~%~%~%# Mapping~%uint8 GET_ROBOT_POSE_ERROR = 4~%~%# Navigation~%uint8 NAV_FAILURE = 21~%uint8 GLOBAL_PLAN_FAILURE = 22~%uint8 LOCAL_PLAN_FAILURE = 23~%uint8 WAIT_AT_GOAL_CANDIDATE = 24~%uint8 NAV_CANCEL = 25~%uint8 PLAN_EXCEPTION = 26~%~%# OpenGate~%uint8 OPEN_GATE_TIMEOUT = 41~%~%# AutoCharge~%uint8 FAIL_TO_DETECT_DOCK=51~%uint8 DOCK_OBSTACLE_WARN=52~%uint8 DOCK_TIMEOUT=53~%uint8 RETRY_TIMEOUT=54~%uint8 GO_TO_ANCHOR=55~%uint8 APPROACH_DOCK=56~%~%# Undock~%uint8 UNDOCK_OBSTACLE_WARN=71~%uint8 UNDOCK_TIMEOUT=72~%~%# MoveIntoElevator~%uint8 MOVE_INTO_ELEVATOR_PLAN_FAILURE=81~%uint8 MOVE_INTO_GOAL_IS_OCCUPIED=82~%uint8 MOVE_INTO_OBSTACLE_WARN=83~%uint8 MOVE_INTO_ELEVATOR_TIMEOUT=84~%uint8 MOVE_INTO_ELEVATOR_FAILURE=85~%~%# MoveOffElevator~%uint8 MOVE_OFF_ELEVATOR_FAILURE=91~%uint8 MOVE_OFF_GOAL_IS_OCCUPIED=92~%uint8 MOVE_OFF_OBSTACLE_WARN=93~%~%# Motion~%uint8 MOTION_OBSTACLE_WARNING=101~%~%# TrackPath~%uint8 TRACK_BACK=102~%~%uint8 ROS_ERROR = 255~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskStatusFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskStatusFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskStatusFeedback
))
