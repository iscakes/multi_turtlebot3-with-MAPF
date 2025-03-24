# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robint_msgs: 81 messages, 117 services")

set(MSG_I_FLAGS "-Irobint_msgs:/home/wlm/cbs-new/src/robint_msgs/msg;-Irobint_msgs:/home/wlm/cbs-new/devel/share/robint_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robint_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg" "robint_msgs/RobotPose:robint_msgs/RobotVersionInfo:std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:robint_msgs/StateDiagnostic:geometry_msgs/Point:robint_msgs/RobotStatisticData:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg" "geometry_msgs/Pose:std_msgs/Header:robint_msgs/Location:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:robint_msgs/GateInfo:geometry_msgs/Point:robint_msgs/IsolatedWait:robint_msgs/Zone:geometry_msgs/Quaternion:robint_msgs/IsolatedZone"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg" "robint_msgs/VirtualWall:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg" "geometry_msgs/Pose:std_msgs/Header:nav_msgs/OccupancyGrid:geometry_msgs/Point:nav_msgs/MapMetaData:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg" "geometry_msgs/Point:robint_msgs/Zone"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg" "geometry_msgs/Point:robint_msgs/PathWithPoint"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg" "robint_msgs/AutoChargeState:robint_msgs/TaskStateHeader:robint_msgs/UndockState:robint_msgs/PatrolState:robint_msgs/FollowingState:robint_msgs/NavigationState"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg" "geometry_msgs/Pose:robint_msgs/TaskStateHeader:std_msgs/Header:nav_msgs/OccupancyGrid:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:nav_msgs/MapMetaData:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg" "std_msgs/Header:sensor_msgs/Range"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg" "robint_msgs/SensorDiagnostic"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg" "std_msgs/Header:geometry_msgs/Point32:robint_msgs/RectWithConfidence"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg" "std_msgs/Header:robint_msgs/HumanMsg:geometry_msgs/Point32:robint_msgs/RectWithConfidence"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg" "geometry_msgs/Pose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg" "geometry_msgs/Pose2D:robint_msgs/RobotIsolatedZone"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg" "geometry_msgs/Pose:geometry_msgs/Point:robint_msgs/IsolatedWait:robint_msgs/Zone:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg" "geometry_msgs/Pose:robint_msgs/IsolatedWait:geometry_msgs/Point:robint_msgs/Zone:geometry_msgs/Quaternion:robint_msgs/IsolatedZone"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg" "robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg" "geometry_msgs/Pose2D:std_msgs/Header"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg" "geometry_msgs/Pose2D:std_msgs/Header:robint_msgs/SyncInfo"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg" "robint_msgs/MoveBaseResult:geometry_msgs/Pose:std_msgs/Header:robint_msgs/MoveBaseActionResult:robint_msgs/MoveBaseActionGoal:robint_msgs/MoveBaseActionFeedback:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:robint_msgs/MoveBaseFeedback:geometry_msgs/Point:robint_msgs/MoveBaseGoal:actionlib_msgs/GoalID:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:robint_msgs/MoveBaseGoal:actionlib_msgs/GoalID:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:robint_msgs/MoveBaseResult"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg" "geometry_msgs/Pose:std_msgs/Header:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:robint_msgs/MoveBaseFeedback:geometry_msgs/Point:actionlib_msgs/GoalID:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg" "geometry_msgs/Pose:std_msgs/Header:robint_msgs/PathWithPoint:actionlib_msgs/GoalStatus:robint_msgs/TrackPathActionResult:geometry_msgs/PoseStamped:robint_msgs/TrackPathResult:robint_msgs/TrackPathActionGoal:geometry_msgs/Point:robint_msgs/PathWithPose:robint_msgs/TrackPathActionFeedback:robint_msgs/TrackPathFeedback:robint_msgs/TrackPathGoal:actionlib_msgs/GoalID:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg" "geometry_msgs/Pose:std_msgs/Header:robint_msgs/PathWithPoint:geometry_msgs/PoseStamped:geometry_msgs/Point:robint_msgs/PathWithPose:robint_msgs/TrackPathGoal:actionlib_msgs/GoalID:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:robint_msgs/TrackPathResult"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg" "geometry_msgs/Pose:std_msgs/Header:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:geometry_msgs/Point:robint_msgs/TrackPathFeedback:actionlib_msgs/GoalID:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg" "geometry_msgs/Pose:std_msgs/Header:robint_msgs/PathWithPoint:geometry_msgs/PoseStamped:geometry_msgs/Point:robint_msgs/PathWithPose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv" "robint_msgs/MapInfo"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseWithCovariance:nav_msgs/OccupancyGrid:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Point:nav_msgs/MapMetaData:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv" "robint_msgs/MapData:geometry_msgs/Pose:std_msgs/Header:nav_msgs/OccupancyGrid:geometry_msgs/Point:nav_msgs/MapMetaData:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv" "robint_msgs/MapData:geometry_msgs/Pose:std_msgs/Header:nav_msgs/OccupancyGrid:geometry_msgs/Point:nav_msgs/MapMetaData:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv" "geometry_msgs/Pose:nav_msgs/MapMetaData:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv" "robint_msgs/MapInfo"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv" "robint_msgs/MapInfo"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv" "robint_msgs/MapInfo"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv" "robint_msgs/MapData:geometry_msgs/Pose:std_msgs/Header:nav_msgs/OccupancyGrid:geometry_msgs/Point:nav_msgs/MapMetaData:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:robint_msgs/LocationList:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv" "robint_msgs/LocationNameList"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv" "robint_msgs/VirtualWall:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv" "robint_msgs/VirtualWall:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv" "robint_msgs/VirtualWall:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv" "robint_msgs/VirtualWall:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv" "robint_msgs/VirtualWall:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv" "geometry_msgs/Point:robint_msgs/Zone"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv" "geometry_msgs/Point:robint_msgs/Zone"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv" "geometry_msgs/Point:robint_msgs/Zone"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv" "geometry_msgs/Point:robint_msgs/CleaningArea:robint_msgs/PathWithPoint"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv" "geometry_msgs/Point:robint_msgs/CleaningArea:robint_msgs/PathWithPoint"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv" "geometry_msgs/Point:robint_msgs/CleaningArea:robint_msgs/PathWithPoint"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv" "robint_msgs/CleaningAreaInfo"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv" "geometry_msgs/Point:robint_msgs/PathWithPoint"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv" "geometry_msgs/Point:robint_msgs/PathWithPoint"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv" "geometry_msgs/Point:robint_msgs/CleaningArea:robint_msgs/PathWithPoint"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv" "geometry_msgs/Point:robint_msgs/PathWithPoint"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv" "geometry_msgs/Point:robint_msgs/CleaningArea:robint_msgs/PathWithPoint"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv" "robint_msgs/AutoChargeState:robint_msgs/TaskStateHeader:robint_msgs/UndockState:robint_msgs/PatrolState:robint_msgs/FollowingState:robint_msgs/NavigationState"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv" "robint_msgs/TaskStateHeader:robint_msgs/NavigationState"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv" "robint_msgs/TaskStateHeader:robint_msgs/FollowingState"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv" "robint_msgs/TaskStateHeader:robint_msgs/PatrolState"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv" "robint_msgs/AutoChargeState:robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv" "robint_msgs/UndockState:robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv" "robint_msgs/TaskStateHeader:robint_msgs/NavigationState"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv" "robint_msgs/TaskStateHeader:robint_msgs/FollowingState"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv" "robint_msgs/TaskStateHeader:robint_msgs/PatrolState"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv" "robint_msgs/AutoChargeState:robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv" "robint_msgs/UndockState:robint_msgs/TaskStateHeader"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv" "geometry_msgs/Pose:std_msgs/Header:robint_msgs/ChargeBaseInfo:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv" "geometry_msgs/Pose:std_msgs/Header:robint_msgs/Location:robint_msgs/NavigationTaskInfo:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:robint_msgs/GateInfo:geometry_msgs/Point:robint_msgs/IsolatedWait:robint_msgs/Zone:geometry_msgs/Quaternion:robint_msgs/IsolatedZone"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv" "geometry_msgs/Pose2D:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv" "geometry_msgs/Pose2D:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion:nav_msgs/Path"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv" "robint_msgs/ImageInfo"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv" "geometry_msgs/Pose:std_msgs/Header:robint_msgs/Location:robint_msgs/NavigationTaskInfo:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:robint_msgs/GateInfo:geometry_msgs/Point:robint_msgs/IsolatedWait:robint_msgs/Zone:geometry_msgs/Quaternion:robint_msgs/IsolatedZone"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv" ""
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:robint_msgs/CruiseTaskInfo:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv" "geometry_msgs/Pose:robint_msgs/Location:std_msgs/Header:geometry_msgs/Pose2D:geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv" "robint_msgs/Param"
)

get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv" NAME_WE)
add_custom_target(_robint_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robint_msgs" "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv" "robint_msgs/Param"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Range.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_msg_cpp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)

### Generating Services
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)
_generate_srv_cpp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
)

### Generating Module File
_generate_module_cpp(robint_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robint_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robint_msgs_generate_messages robint_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_cpp _robint_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robint_msgs_gencpp)
add_dependencies(robint_msgs_gencpp robint_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robint_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Range.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_msg_eus(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)

### Generating Services
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)
_generate_srv_eus(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
)

### Generating Module File
_generate_module_eus(robint_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robint_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robint_msgs_generate_messages robint_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_eus _robint_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robint_msgs_geneus)
add_dependencies(robint_msgs_geneus robint_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robint_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Range.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_msg_lisp(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)

### Generating Services
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)
_generate_srv_lisp(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
)

### Generating Module File
_generate_module_lisp(robint_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robint_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robint_msgs_generate_messages robint_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_lisp _robint_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robint_msgs_genlisp)
add_dependencies(robint_msgs_genlisp robint_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robint_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Range.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_msg_nodejs(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)

### Generating Services
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)
_generate_srv_nodejs(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
)

### Generating Module File
_generate_module_nodejs(robint_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robint_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robint_msgs_generate_messages robint_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_nodejs _robint_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robint_msgs_gennodejs)
add_dependencies(robint_msgs_gennodejs robint_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robint_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Range.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_msg_py(robint_msgs
  "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)

### Generating Services
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg;/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg;/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)
_generate_srv_py(robint_msgs
  "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv"
  "${MSG_I_FLAGS}"
  "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
)

### Generating Module File
_generate_module_py(robint_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robint_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robint_msgs_generate_messages robint_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv" NAME_WE)
add_dependencies(robint_msgs_generate_messages_py _robint_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robint_msgs_genpy)
add_dependencies(robint_msgs_genpy robint_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robint_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robint_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robint_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(robint_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(robint_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(robint_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(robint_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robint_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robint_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(robint_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(robint_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(robint_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(robint_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robint_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robint_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(robint_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(robint_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(robint_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(robint_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robint_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robint_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(robint_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(robint_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(robint_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(robint_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robint_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robint_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(robint_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(robint_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(robint_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(robint_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
