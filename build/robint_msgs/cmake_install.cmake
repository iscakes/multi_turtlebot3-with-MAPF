# Install script for directory: /home/wlm/cbs-new/src/robint_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wlm/cbs-new/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robint_msgs/msg" TYPE FILE FILES
    "/home/wlm/cbs-new/src/robint_msgs/msg/RobotState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/RobotPose.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/RobotStatisticData.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/RobotVersionInfo.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/StateDiagnostic.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/ChargeBaseInfo.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationTaskInfo.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/Location.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/LocationList.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/LocationNameList.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWall.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/VirtualWallList.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/MapState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/MapData.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/MapInfo.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/Zone.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/ZoneList.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningArea.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/CleaningAreaInfo.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPoint.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/PathWithPose.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/ServoCommand.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStateHeader.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/CurrentTaskState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/MappingState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/NavigationState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/FollowingState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/PatrolState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/AutoChargeState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/UndockState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/MotionState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/MoveIntoElevatorState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/MoveOffElevatorState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/ElevatorState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/TrackingPathState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/AutoExploreState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/BatteryState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/LedControl.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/RangeArray.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/ErrorCode.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/TaskStatusFeedback.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/SensorDiagnostic.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/SensorState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/HumanMsg.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/HumanArray.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/RectWithConfidence.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/GateInfo.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/GateState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/OriginSyncInfo.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZone.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/RobotIsolatedZoneList.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedWait.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZone.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/IsolatedZoneList.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseState.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/CruiseTaskInfo.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/ZonePoint.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/Mqtt.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/ExplorationGoal.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/SyncInfo.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/SyncStatus.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/GateControlStatus.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/RobotImagePose.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/JoystickPanelStatus.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/PositionStatus.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/ImageInfo.msg"
    "/home/wlm/cbs-new/src/robint_msgs/msg/Param.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robint_msgs/srv" TYPE FILE FILES
    "/home/wlm/cbs-new/src/robint_msgs/srv/NavigationCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/PatrolCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/MappingCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AutoChargeCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/DockCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/UndockCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/MotionCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ElevatorCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AutoNavigationCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/CallElevatorCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/FollowingCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/TrackPathCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AutoExploreCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/CleaningCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SaveMap.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AddMap.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AddMapList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SetMap.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SetMapData.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMap.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetMap.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseMap.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapMetaData.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapName.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentMapInfo.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfoList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapInfo.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetMapList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteMapList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMap.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateMapList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/CopyMap.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AddCurrentLocation.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocation.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AddLocationList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AutoRelocation.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocation.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteLocationList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseLocation.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocation.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetNearestLocation.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationDatabase.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetLocationNameList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateLocationList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/CopyLocationList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWall.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AddVirtualWallList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWall.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteVirtualWallList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetVirtualWallList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ReviseVirtualWall.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SetVirtualWallList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/CopyVirtualWallList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AddZoneList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteZoneList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetZoneList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetZone.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/CopyZoneList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningAreaList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/DeleteCleaningAreaList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningArea.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/CopyCleaningAreaList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningAreaInfoList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/RecordTrajectoryCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AddCleaningPath.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetTrajectoryPoint.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GenerateCleaningPath.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SearchContourGoal.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCleaningTaskInfo.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentTaskName.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetFollowingState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetPatrolState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetAutoChargeState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetUndockState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeNavigationState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeFollowingState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ChangePatrolState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeAutoChargeState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ChangeUndockState.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotionParams.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCurrentRobotPose.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SetRobotPose.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetRelativePose.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetChargeBaseInfo.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetNavigationTaskInfo.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCumulativeOdometry.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SetLedParams.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SetChassisLight.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/UpdateNavGoal.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SetMotorControlMode.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToImagePose.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/ConvertToWorldPose.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageSecurityLine.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetPlan.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetDetailedNavigationInfo.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetDeliveryOrderList.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetEmbeddingVersion.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetChassisVersion.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetImageBase64List.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/OpenGateCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/RecordImage.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/DetectDockBase.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/Trigger.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/Command.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/JudgeIsolatedZone.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/AutoCruiseCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetCruiseTaskInfo.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/CruiseCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GateControlCommand.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/CutFootprint.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/SetParams.srv"
    "/home/wlm/cbs-new/src/robint_msgs/srv/GetParams.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robint_msgs/action" TYPE FILE FILES
    "/home/wlm/cbs-new/src/robint_msgs/action/MoveBase.action"
    "/home/wlm/cbs-new/src/robint_msgs/action/TrackPath.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robint_msgs/msg" TYPE FILE FILES
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseAction.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionGoal.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionResult.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseActionFeedback.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseGoal.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseResult.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/MoveBaseFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robint_msgs/msg" TYPE FILE FILES
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathAction.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionGoal.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionResult.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathActionFeedback.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathGoal.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathResult.msg"
    "/home/wlm/cbs-new/devel/share/robint_msgs/msg/TrackPathFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robint_msgs/cmake" TYPE FILE FILES "/home/wlm/cbs-new/build/robint_msgs/catkin_generated/installspace/robint_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wlm/cbs-new/devel/include/robint_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wlm/cbs-new/devel/share/roseus/ros/robint_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wlm/cbs-new/devel/share/common-lisp/ros/robint_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wlm/cbs-new/devel/share/gennodejs/ros/robint_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/wlm/cbs-new/devel/lib/python3/dist-packages/robint_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/wlm/cbs-new/devel/lib/python3/dist-packages/robint_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wlm/cbs-new/build/robint_msgs/catkin_generated/installspace/robint_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robint_msgs/cmake" TYPE FILE FILES "/home/wlm/cbs-new/build/robint_msgs/catkin_generated/installspace/robint_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robint_msgs/cmake" TYPE FILE FILES
    "/home/wlm/cbs-new/build/robint_msgs/catkin_generated/installspace/robint_msgsConfig.cmake"
    "/home/wlm/cbs-new/build/robint_msgs/catkin_generated/installspace/robint_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robint_msgs" TYPE FILE FILES "/home/wlm/cbs-new/src/robint_msgs/package.xml")
endif()

