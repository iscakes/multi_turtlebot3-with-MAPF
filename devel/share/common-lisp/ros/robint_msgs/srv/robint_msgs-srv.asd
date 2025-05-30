
(cl:in-package :asdf)

(defsystem "robint_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :robint_msgs-msg
)
  :components ((:file "_package")
    (:file "AddCleaningAreaList" :depends-on ("_package_AddCleaningAreaList"))
    (:file "_package_AddCleaningAreaList" :depends-on ("_package"))
    (:file "AddCleaningPath" :depends-on ("_package_AddCleaningPath"))
    (:file "_package_AddCleaningPath" :depends-on ("_package"))
    (:file "AddCurrentLocation" :depends-on ("_package_AddCurrentLocation"))
    (:file "_package_AddCurrentLocation" :depends-on ("_package"))
    (:file "AddLocation" :depends-on ("_package_AddLocation"))
    (:file "_package_AddLocation" :depends-on ("_package"))
    (:file "AddLocationList" :depends-on ("_package_AddLocationList"))
    (:file "_package_AddLocationList" :depends-on ("_package"))
    (:file "AddMap" :depends-on ("_package_AddMap"))
    (:file "_package_AddMap" :depends-on ("_package"))
    (:file "AddMapList" :depends-on ("_package_AddMapList"))
    (:file "_package_AddMapList" :depends-on ("_package"))
    (:file "AddVirtualWall" :depends-on ("_package_AddVirtualWall"))
    (:file "_package_AddVirtualWall" :depends-on ("_package"))
    (:file "AddVirtualWallList" :depends-on ("_package_AddVirtualWallList"))
    (:file "_package_AddVirtualWallList" :depends-on ("_package"))
    (:file "AddZoneList" :depends-on ("_package_AddZoneList"))
    (:file "_package_AddZoneList" :depends-on ("_package"))
    (:file "AutoChargeCommand" :depends-on ("_package_AutoChargeCommand"))
    (:file "_package_AutoChargeCommand" :depends-on ("_package"))
    (:file "AutoCruiseCommand" :depends-on ("_package_AutoCruiseCommand"))
    (:file "_package_AutoCruiseCommand" :depends-on ("_package"))
    (:file "AutoExploreCommand" :depends-on ("_package_AutoExploreCommand"))
    (:file "_package_AutoExploreCommand" :depends-on ("_package"))
    (:file "AutoNavigationCommand" :depends-on ("_package_AutoNavigationCommand"))
    (:file "_package_AutoNavigationCommand" :depends-on ("_package"))
    (:file "AutoRelocation" :depends-on ("_package_AutoRelocation"))
    (:file "_package_AutoRelocation" :depends-on ("_package"))
    (:file "CallElevatorCommand" :depends-on ("_package_CallElevatorCommand"))
    (:file "_package_CallElevatorCommand" :depends-on ("_package"))
    (:file "ChangeAutoChargeState" :depends-on ("_package_ChangeAutoChargeState"))
    (:file "_package_ChangeAutoChargeState" :depends-on ("_package"))
    (:file "ChangeFollowingState" :depends-on ("_package_ChangeFollowingState"))
    (:file "_package_ChangeFollowingState" :depends-on ("_package"))
    (:file "ChangeNavigationState" :depends-on ("_package_ChangeNavigationState"))
    (:file "_package_ChangeNavigationState" :depends-on ("_package"))
    (:file "ChangePatrolState" :depends-on ("_package_ChangePatrolState"))
    (:file "_package_ChangePatrolState" :depends-on ("_package"))
    (:file "ChangeUndockState" :depends-on ("_package_ChangeUndockState"))
    (:file "_package_ChangeUndockState" :depends-on ("_package"))
    (:file "CleaningCommand" :depends-on ("_package_CleaningCommand"))
    (:file "_package_CleaningCommand" :depends-on ("_package"))
    (:file "Command" :depends-on ("_package_Command"))
    (:file "_package_Command" :depends-on ("_package"))
    (:file "ConvertToImagePose" :depends-on ("_package_ConvertToImagePose"))
    (:file "_package_ConvertToImagePose" :depends-on ("_package"))
    (:file "ConvertToWorldPose" :depends-on ("_package_ConvertToWorldPose"))
    (:file "_package_ConvertToWorldPose" :depends-on ("_package"))
    (:file "CopyCleaningAreaList" :depends-on ("_package_CopyCleaningAreaList"))
    (:file "_package_CopyCleaningAreaList" :depends-on ("_package"))
    (:file "CopyLocationList" :depends-on ("_package_CopyLocationList"))
    (:file "_package_CopyLocationList" :depends-on ("_package"))
    (:file "CopyMap" :depends-on ("_package_CopyMap"))
    (:file "_package_CopyMap" :depends-on ("_package"))
    (:file "CopyVirtualWallList" :depends-on ("_package_CopyVirtualWallList"))
    (:file "_package_CopyVirtualWallList" :depends-on ("_package"))
    (:file "CopyZoneList" :depends-on ("_package_CopyZoneList"))
    (:file "_package_CopyZoneList" :depends-on ("_package"))
    (:file "CruiseCommand" :depends-on ("_package_CruiseCommand"))
    (:file "_package_CruiseCommand" :depends-on ("_package"))
    (:file "CutFootprint" :depends-on ("_package_CutFootprint"))
    (:file "_package_CutFootprint" :depends-on ("_package"))
    (:file "DeleteCleaningAreaList" :depends-on ("_package_DeleteCleaningAreaList"))
    (:file "_package_DeleteCleaningAreaList" :depends-on ("_package"))
    (:file "DeleteLocation" :depends-on ("_package_DeleteLocation"))
    (:file "_package_DeleteLocation" :depends-on ("_package"))
    (:file "DeleteLocationList" :depends-on ("_package_DeleteLocationList"))
    (:file "_package_DeleteLocationList" :depends-on ("_package"))
    (:file "DeleteMap" :depends-on ("_package_DeleteMap"))
    (:file "_package_DeleteMap" :depends-on ("_package"))
    (:file "DeleteMapList" :depends-on ("_package_DeleteMapList"))
    (:file "_package_DeleteMapList" :depends-on ("_package"))
    (:file "DeleteVirtualWall" :depends-on ("_package_DeleteVirtualWall"))
    (:file "_package_DeleteVirtualWall" :depends-on ("_package"))
    (:file "DeleteVirtualWallList" :depends-on ("_package_DeleteVirtualWallList"))
    (:file "_package_DeleteVirtualWallList" :depends-on ("_package"))
    (:file "DeleteZoneList" :depends-on ("_package_DeleteZoneList"))
    (:file "_package_DeleteZoneList" :depends-on ("_package"))
    (:file "DetectDockBase" :depends-on ("_package_DetectDockBase"))
    (:file "_package_DetectDockBase" :depends-on ("_package"))
    (:file "DockCommand" :depends-on ("_package_DockCommand"))
    (:file "_package_DockCommand" :depends-on ("_package"))
    (:file "ElevatorCommand" :depends-on ("_package_ElevatorCommand"))
    (:file "_package_ElevatorCommand" :depends-on ("_package"))
    (:file "FollowingCommand" :depends-on ("_package_FollowingCommand"))
    (:file "_package_FollowingCommand" :depends-on ("_package"))
    (:file "GateControlCommand" :depends-on ("_package_GateControlCommand"))
    (:file "_package_GateControlCommand" :depends-on ("_package"))
    (:file "GenerateCleaningPath" :depends-on ("_package_GenerateCleaningPath"))
    (:file "_package_GenerateCleaningPath" :depends-on ("_package"))
    (:file "GetAutoChargeState" :depends-on ("_package_GetAutoChargeState"))
    (:file "_package_GetAutoChargeState" :depends-on ("_package"))
    (:file "GetChargeBaseInfo" :depends-on ("_package_GetChargeBaseInfo"))
    (:file "_package_GetChargeBaseInfo" :depends-on ("_package"))
    (:file "GetChassisVersion" :depends-on ("_package_GetChassisVersion"))
    (:file "_package_GetChassisVersion" :depends-on ("_package"))
    (:file "GetCleaningArea" :depends-on ("_package_GetCleaningArea"))
    (:file "_package_GetCleaningArea" :depends-on ("_package"))
    (:file "GetCleaningAreaInfoList" :depends-on ("_package_GetCleaningAreaInfoList"))
    (:file "_package_GetCleaningAreaInfoList" :depends-on ("_package"))
    (:file "GetCleaningAreaList" :depends-on ("_package_GetCleaningAreaList"))
    (:file "_package_GetCleaningAreaList" :depends-on ("_package"))
    (:file "GetCleaningTaskInfo" :depends-on ("_package_GetCleaningTaskInfo"))
    (:file "_package_GetCleaningTaskInfo" :depends-on ("_package"))
    (:file "GetCruiseTaskInfo" :depends-on ("_package_GetCruiseTaskInfo"))
    (:file "_package_GetCruiseTaskInfo" :depends-on ("_package"))
    (:file "GetCumulativeOdometry" :depends-on ("_package_GetCumulativeOdometry"))
    (:file "_package_GetCumulativeOdometry" :depends-on ("_package"))
    (:file "GetCurrentMapInfo" :depends-on ("_package_GetCurrentMapInfo"))
    (:file "_package_GetCurrentMapInfo" :depends-on ("_package"))
    (:file "GetCurrentMapName" :depends-on ("_package_GetCurrentMapName"))
    (:file "_package_GetCurrentMapName" :depends-on ("_package"))
    (:file "GetCurrentRobotPose" :depends-on ("_package_GetCurrentRobotPose"))
    (:file "_package_GetCurrentRobotPose" :depends-on ("_package"))
    (:file "GetCurrentTaskName" :depends-on ("_package_GetCurrentTaskName"))
    (:file "_package_GetCurrentTaskName" :depends-on ("_package"))
    (:file "GetCurrentTaskState" :depends-on ("_package_GetCurrentTaskState"))
    (:file "_package_GetCurrentTaskState" :depends-on ("_package"))
    (:file "GetDeliveryOrderList" :depends-on ("_package_GetDeliveryOrderList"))
    (:file "_package_GetDeliveryOrderList" :depends-on ("_package"))
    (:file "GetDetailedNavigationInfo" :depends-on ("_package_GetDetailedNavigationInfo"))
    (:file "_package_GetDetailedNavigationInfo" :depends-on ("_package"))
    (:file "GetEmbeddingVersion" :depends-on ("_package_GetEmbeddingVersion"))
    (:file "_package_GetEmbeddingVersion" :depends-on ("_package"))
    (:file "GetFollowingState" :depends-on ("_package_GetFollowingState"))
    (:file "_package_GetFollowingState" :depends-on ("_package"))
    (:file "GetImageBase64" :depends-on ("_package_GetImageBase64"))
    (:file "_package_GetImageBase64" :depends-on ("_package"))
    (:file "GetImageBase64List" :depends-on ("_package_GetImageBase64List"))
    (:file "_package_GetImageBase64List" :depends-on ("_package"))
    (:file "GetImageSecurityLine" :depends-on ("_package_GetImageSecurityLine"))
    (:file "_package_GetImageSecurityLine" :depends-on ("_package"))
    (:file "GetLocation" :depends-on ("_package_GetLocation"))
    (:file "_package_GetLocation" :depends-on ("_package"))
    (:file "GetLocationDatabase" :depends-on ("_package_GetLocationDatabase"))
    (:file "_package_GetLocationDatabase" :depends-on ("_package"))
    (:file "GetLocationList" :depends-on ("_package_GetLocationList"))
    (:file "_package_GetLocationList" :depends-on ("_package"))
    (:file "GetLocationNameList" :depends-on ("_package_GetLocationNameList"))
    (:file "_package_GetLocationNameList" :depends-on ("_package"))
    (:file "GetMap" :depends-on ("_package_GetMap"))
    (:file "_package_GetMap" :depends-on ("_package"))
    (:file "GetMapInfo" :depends-on ("_package_GetMapInfo"))
    (:file "_package_GetMapInfo" :depends-on ("_package"))
    (:file "GetMapInfoList" :depends-on ("_package_GetMapInfoList"))
    (:file "_package_GetMapInfoList" :depends-on ("_package"))
    (:file "GetMapList" :depends-on ("_package_GetMapList"))
    (:file "_package_GetMapList" :depends-on ("_package"))
    (:file "GetMapMetaData" :depends-on ("_package_GetMapMetaData"))
    (:file "_package_GetMapMetaData" :depends-on ("_package"))
    (:file "GetNavigationState" :depends-on ("_package_GetNavigationState"))
    (:file "_package_GetNavigationState" :depends-on ("_package"))
    (:file "GetNavigationTaskInfo" :depends-on ("_package_GetNavigationTaskInfo"))
    (:file "_package_GetNavigationTaskInfo" :depends-on ("_package"))
    (:file "GetNearestLocation" :depends-on ("_package_GetNearestLocation"))
    (:file "_package_GetNearestLocation" :depends-on ("_package"))
    (:file "GetParams" :depends-on ("_package_GetParams"))
    (:file "_package_GetParams" :depends-on ("_package"))
    (:file "GetPatrolState" :depends-on ("_package_GetPatrolState"))
    (:file "_package_GetPatrolState" :depends-on ("_package"))
    (:file "GetPlan" :depends-on ("_package_GetPlan"))
    (:file "_package_GetPlan" :depends-on ("_package"))
    (:file "GetRelativePose" :depends-on ("_package_GetRelativePose"))
    (:file "_package_GetRelativePose" :depends-on ("_package"))
    (:file "GetTrajectoryPoint" :depends-on ("_package_GetTrajectoryPoint"))
    (:file "_package_GetTrajectoryPoint" :depends-on ("_package"))
    (:file "GetUndockState" :depends-on ("_package_GetUndockState"))
    (:file "_package_GetUndockState" :depends-on ("_package"))
    (:file "GetVirtualWallList" :depends-on ("_package_GetVirtualWallList"))
    (:file "_package_GetVirtualWallList" :depends-on ("_package"))
    (:file "GetZone" :depends-on ("_package_GetZone"))
    (:file "_package_GetZone" :depends-on ("_package"))
    (:file "GetZoneList" :depends-on ("_package_GetZoneList"))
    (:file "_package_GetZoneList" :depends-on ("_package"))
    (:file "JudgeIsolatedZone" :depends-on ("_package_JudgeIsolatedZone"))
    (:file "_package_JudgeIsolatedZone" :depends-on ("_package"))
    (:file "MappingCommand" :depends-on ("_package_MappingCommand"))
    (:file "_package_MappingCommand" :depends-on ("_package"))
    (:file "MotionCommand" :depends-on ("_package_MotionCommand"))
    (:file "_package_MotionCommand" :depends-on ("_package"))
    (:file "NavigationCommand" :depends-on ("_package_NavigationCommand"))
    (:file "_package_NavigationCommand" :depends-on ("_package"))
    (:file "OpenGateCommand" :depends-on ("_package_OpenGateCommand"))
    (:file "_package_OpenGateCommand" :depends-on ("_package"))
    (:file "PatrolCommand" :depends-on ("_package_PatrolCommand"))
    (:file "_package_PatrolCommand" :depends-on ("_package"))
    (:file "RecordImage" :depends-on ("_package_RecordImage"))
    (:file "_package_RecordImage" :depends-on ("_package"))
    (:file "RecordTrajectoryCommand" :depends-on ("_package_RecordTrajectoryCommand"))
    (:file "_package_RecordTrajectoryCommand" :depends-on ("_package"))
    (:file "ReviseLocation" :depends-on ("_package_ReviseLocation"))
    (:file "_package_ReviseLocation" :depends-on ("_package"))
    (:file "ReviseMap" :depends-on ("_package_ReviseMap"))
    (:file "_package_ReviseMap" :depends-on ("_package"))
    (:file "ReviseVirtualWall" :depends-on ("_package_ReviseVirtualWall"))
    (:file "_package_ReviseVirtualWall" :depends-on ("_package"))
    (:file "SaveMap" :depends-on ("_package_SaveMap"))
    (:file "_package_SaveMap" :depends-on ("_package"))
    (:file "SearchContourGoal" :depends-on ("_package_SearchContourGoal"))
    (:file "_package_SearchContourGoal" :depends-on ("_package"))
    (:file "SetChassisLight" :depends-on ("_package_SetChassisLight"))
    (:file "_package_SetChassisLight" :depends-on ("_package"))
    (:file "SetLedParams" :depends-on ("_package_SetLedParams"))
    (:file "_package_SetLedParams" :depends-on ("_package"))
    (:file "SetMap" :depends-on ("_package_SetMap"))
    (:file "_package_SetMap" :depends-on ("_package"))
    (:file "SetMapData" :depends-on ("_package_SetMapData"))
    (:file "_package_SetMapData" :depends-on ("_package"))
    (:file "SetMotionParams" :depends-on ("_package_SetMotionParams"))
    (:file "_package_SetMotionParams" :depends-on ("_package"))
    (:file "SetMotorControlMode" :depends-on ("_package_SetMotorControlMode"))
    (:file "_package_SetMotorControlMode" :depends-on ("_package"))
    (:file "SetParams" :depends-on ("_package_SetParams"))
    (:file "_package_SetParams" :depends-on ("_package"))
    (:file "SetRobotPose" :depends-on ("_package_SetRobotPose"))
    (:file "_package_SetRobotPose" :depends-on ("_package"))
    (:file "SetVirtualWallList" :depends-on ("_package_SetVirtualWallList"))
    (:file "_package_SetVirtualWallList" :depends-on ("_package"))
    (:file "TrackPathCommand" :depends-on ("_package_TrackPathCommand"))
    (:file "_package_TrackPathCommand" :depends-on ("_package"))
    (:file "Trigger" :depends-on ("_package_Trigger"))
    (:file "_package_Trigger" :depends-on ("_package"))
    (:file "UndockCommand" :depends-on ("_package_UndockCommand"))
    (:file "_package_UndockCommand" :depends-on ("_package"))
    (:file "UpdateLocationList" :depends-on ("_package_UpdateLocationList"))
    (:file "_package_UpdateLocationList" :depends-on ("_package"))
    (:file "UpdateMap" :depends-on ("_package_UpdateMap"))
    (:file "_package_UpdateMap" :depends-on ("_package"))
    (:file "UpdateMapList" :depends-on ("_package_UpdateMapList"))
    (:file "_package_UpdateMapList" :depends-on ("_package"))
    (:file "UpdateNavGoal" :depends-on ("_package_UpdateNavGoal"))
    (:file "_package_UpdateNavGoal" :depends-on ("_package"))
  ))