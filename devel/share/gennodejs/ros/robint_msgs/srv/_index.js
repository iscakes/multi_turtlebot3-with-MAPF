
"use strict";

let GetAutoChargeState = require('./GetAutoChargeState.js')
let GetCleaningAreaInfoList = require('./GetCleaningAreaInfoList.js')
let GetImageSecurityLine = require('./GetImageSecurityLine.js')
let CleaningCommand = require('./CleaningCommand.js')
let GetCruiseTaskInfo = require('./GetCruiseTaskInfo.js')
let SetMotionParams = require('./SetMotionParams.js')
let ConvertToWorldPose = require('./ConvertToWorldPose.js')
let GateControlCommand = require('./GateControlCommand.js')
let ReviseVirtualWall = require('./ReviseVirtualWall.js')
let AddVirtualWall = require('./AddVirtualWall.js')
let GetTrajectoryPoint = require('./GetTrajectoryPoint.js')
let UpdateLocationList = require('./UpdateLocationList.js')
let GetEmbeddingVersion = require('./GetEmbeddingVersion.js')
let DeleteMapList = require('./DeleteMapList.js')
let GetZone = require('./GetZone.js')
let CruiseCommand = require('./CruiseCommand.js')
let GetCurrentMapInfo = require('./GetCurrentMapInfo.js')
let Trigger = require('./Trigger.js')
let PatrolCommand = require('./PatrolCommand.js')
let UndockCommand = require('./UndockCommand.js')
let GetFollowingState = require('./GetFollowingState.js')
let GetCurrentTaskName = require('./GetCurrentTaskName.js')
let GetNavigationTaskInfo = require('./GetNavigationTaskInfo.js')
let GetImageBase64 = require('./GetImageBase64.js')
let AutoCruiseCommand = require('./AutoCruiseCommand.js')
let AddMap = require('./AddMap.js')
let AutoRelocation = require('./AutoRelocation.js')
let GetUndockState = require('./GetUndockState.js')
let CutFootprint = require('./CutFootprint.js')
let GetLocationList = require('./GetLocationList.js')
let DeleteVirtualWallList = require('./DeleteVirtualWallList.js')
let DockCommand = require('./DockCommand.js')
let GetZoneList = require('./GetZoneList.js')
let AddZoneList = require('./AddZoneList.js')
let ChangePatrolState = require('./ChangePatrolState.js')
let AddMapList = require('./AddMapList.js')
let SetMapData = require('./SetMapData.js')
let AddCurrentLocation = require('./AddCurrentLocation.js')
let DeleteCleaningAreaList = require('./DeleteCleaningAreaList.js')
let NavigationCommand = require('./NavigationCommand.js')
let SetMotorControlMode = require('./SetMotorControlMode.js')
let ReviseLocation = require('./ReviseLocation.js')
let GetChargeBaseInfo = require('./GetChargeBaseInfo.js')
let GetMapMetaData = require('./GetMapMetaData.js')
let GetCurrentTaskState = require('./GetCurrentTaskState.js')
let AutoChargeCommand = require('./AutoChargeCommand.js')
let CopyMap = require('./CopyMap.js')
let SetParams = require('./SetParams.js')
let GetLocationDatabase = require('./GetLocationDatabase.js')
let MappingCommand = require('./MappingCommand.js')
let GetRelativePose = require('./GetRelativePose.js')
let SetChassisLight = require('./SetChassisLight.js')
let DetectDockBase = require('./DetectDockBase.js')
let SetRobotPose = require('./SetRobotPose.js')
let GetVirtualWallList = require('./GetVirtualWallList.js')
let DeleteZoneList = require('./DeleteZoneList.js')
let SetLedParams = require('./SetLedParams.js')
let GetCleaningArea = require('./GetCleaningArea.js')
let GetCurrentRobotPose = require('./GetCurrentRobotPose.js')
let SetMap = require('./SetMap.js')
let AddLocationList = require('./AddLocationList.js')
let GetCleaningTaskInfo = require('./GetCleaningTaskInfo.js')
let RecordImage = require('./RecordImage.js')
let GetCumulativeOdometry = require('./GetCumulativeOdometry.js')
let ChangeUndockState = require('./ChangeUndockState.js')
let UpdateMap = require('./UpdateMap.js')
let SaveMap = require('./SaveMap.js')
let DeleteMap = require('./DeleteMap.js')
let ChangeAutoChargeState = require('./ChangeAutoChargeState.js')
let CopyCleaningAreaList = require('./CopyCleaningAreaList.js')
let CopyLocationList = require('./CopyLocationList.js')
let SearchContourGoal = require('./SearchContourGoal.js')
let GetMapList = require('./GetMapList.js')
let GetNavigationState = require('./GetNavigationState.js')
let GetDetailedNavigationInfo = require('./GetDetailedNavigationInfo.js')
let GetNearestLocation = require('./GetNearestLocation.js')
let ChangeFollowingState = require('./ChangeFollowingState.js')
let Command = require('./Command.js')
let AddLocation = require('./AddLocation.js')
let DeleteLocation = require('./DeleteLocation.js')
let GetDeliveryOrderList = require('./GetDeliveryOrderList.js')
let GetImageBase64List = require('./GetImageBase64List.js')
let GetCurrentMapName = require('./GetCurrentMapName.js')
let CopyZoneList = require('./CopyZoneList.js')
let FollowingCommand = require('./FollowingCommand.js')
let GetPatrolState = require('./GetPatrolState.js')
let OpenGateCommand = require('./OpenGateCommand.js')
let AddCleaningPath = require('./AddCleaningPath.js')
let AutoExploreCommand = require('./AutoExploreCommand.js')
let GetMapInfoList = require('./GetMapInfoList.js')
let ElevatorCommand = require('./ElevatorCommand.js')
let AddCleaningAreaList = require('./AddCleaningAreaList.js')
let DeleteVirtualWall = require('./DeleteVirtualWall.js')
let DeleteLocationList = require('./DeleteLocationList.js')
let GetLocation = require('./GetLocation.js')
let ReviseMap = require('./ReviseMap.js')
let ChangeNavigationState = require('./ChangeNavigationState.js')
let GetPlan = require('./GetPlan.js')
let GenerateCleaningPath = require('./GenerateCleaningPath.js')
let CopyVirtualWallList = require('./CopyVirtualWallList.js')
let GetCleaningAreaList = require('./GetCleaningAreaList.js')
let JudgeIsolatedZone = require('./JudgeIsolatedZone.js')
let GetMap = require('./GetMap.js')
let AutoNavigationCommand = require('./AutoNavigationCommand.js')
let RecordTrajectoryCommand = require('./RecordTrajectoryCommand.js')
let SetVirtualWallList = require('./SetVirtualWallList.js')
let UpdateMapList = require('./UpdateMapList.js')
let GetChassisVersion = require('./GetChassisVersion.js')
let AddVirtualWallList = require('./AddVirtualWallList.js')
let TrackPathCommand = require('./TrackPathCommand.js')
let GetParams = require('./GetParams.js')
let MotionCommand = require('./MotionCommand.js')
let CallElevatorCommand = require('./CallElevatorCommand.js')
let UpdateNavGoal = require('./UpdateNavGoal.js')
let GetLocationNameList = require('./GetLocationNameList.js')
let ConvertToImagePose = require('./ConvertToImagePose.js')
let GetMapInfo = require('./GetMapInfo.js')

module.exports = {
  GetAutoChargeState: GetAutoChargeState,
  GetCleaningAreaInfoList: GetCleaningAreaInfoList,
  GetImageSecurityLine: GetImageSecurityLine,
  CleaningCommand: CleaningCommand,
  GetCruiseTaskInfo: GetCruiseTaskInfo,
  SetMotionParams: SetMotionParams,
  ConvertToWorldPose: ConvertToWorldPose,
  GateControlCommand: GateControlCommand,
  ReviseVirtualWall: ReviseVirtualWall,
  AddVirtualWall: AddVirtualWall,
  GetTrajectoryPoint: GetTrajectoryPoint,
  UpdateLocationList: UpdateLocationList,
  GetEmbeddingVersion: GetEmbeddingVersion,
  DeleteMapList: DeleteMapList,
  GetZone: GetZone,
  CruiseCommand: CruiseCommand,
  GetCurrentMapInfo: GetCurrentMapInfo,
  Trigger: Trigger,
  PatrolCommand: PatrolCommand,
  UndockCommand: UndockCommand,
  GetFollowingState: GetFollowingState,
  GetCurrentTaskName: GetCurrentTaskName,
  GetNavigationTaskInfo: GetNavigationTaskInfo,
  GetImageBase64: GetImageBase64,
  AutoCruiseCommand: AutoCruiseCommand,
  AddMap: AddMap,
  AutoRelocation: AutoRelocation,
  GetUndockState: GetUndockState,
  CutFootprint: CutFootprint,
  GetLocationList: GetLocationList,
  DeleteVirtualWallList: DeleteVirtualWallList,
  DockCommand: DockCommand,
  GetZoneList: GetZoneList,
  AddZoneList: AddZoneList,
  ChangePatrolState: ChangePatrolState,
  AddMapList: AddMapList,
  SetMapData: SetMapData,
  AddCurrentLocation: AddCurrentLocation,
  DeleteCleaningAreaList: DeleteCleaningAreaList,
  NavigationCommand: NavigationCommand,
  SetMotorControlMode: SetMotorControlMode,
  ReviseLocation: ReviseLocation,
  GetChargeBaseInfo: GetChargeBaseInfo,
  GetMapMetaData: GetMapMetaData,
  GetCurrentTaskState: GetCurrentTaskState,
  AutoChargeCommand: AutoChargeCommand,
  CopyMap: CopyMap,
  SetParams: SetParams,
  GetLocationDatabase: GetLocationDatabase,
  MappingCommand: MappingCommand,
  GetRelativePose: GetRelativePose,
  SetChassisLight: SetChassisLight,
  DetectDockBase: DetectDockBase,
  SetRobotPose: SetRobotPose,
  GetVirtualWallList: GetVirtualWallList,
  DeleteZoneList: DeleteZoneList,
  SetLedParams: SetLedParams,
  GetCleaningArea: GetCleaningArea,
  GetCurrentRobotPose: GetCurrentRobotPose,
  SetMap: SetMap,
  AddLocationList: AddLocationList,
  GetCleaningTaskInfo: GetCleaningTaskInfo,
  RecordImage: RecordImage,
  GetCumulativeOdometry: GetCumulativeOdometry,
  ChangeUndockState: ChangeUndockState,
  UpdateMap: UpdateMap,
  SaveMap: SaveMap,
  DeleteMap: DeleteMap,
  ChangeAutoChargeState: ChangeAutoChargeState,
  CopyCleaningAreaList: CopyCleaningAreaList,
  CopyLocationList: CopyLocationList,
  SearchContourGoal: SearchContourGoal,
  GetMapList: GetMapList,
  GetNavigationState: GetNavigationState,
  GetDetailedNavigationInfo: GetDetailedNavigationInfo,
  GetNearestLocation: GetNearestLocation,
  ChangeFollowingState: ChangeFollowingState,
  Command: Command,
  AddLocation: AddLocation,
  DeleteLocation: DeleteLocation,
  GetDeliveryOrderList: GetDeliveryOrderList,
  GetImageBase64List: GetImageBase64List,
  GetCurrentMapName: GetCurrentMapName,
  CopyZoneList: CopyZoneList,
  FollowingCommand: FollowingCommand,
  GetPatrolState: GetPatrolState,
  OpenGateCommand: OpenGateCommand,
  AddCleaningPath: AddCleaningPath,
  AutoExploreCommand: AutoExploreCommand,
  GetMapInfoList: GetMapInfoList,
  ElevatorCommand: ElevatorCommand,
  AddCleaningAreaList: AddCleaningAreaList,
  DeleteVirtualWall: DeleteVirtualWall,
  DeleteLocationList: DeleteLocationList,
  GetLocation: GetLocation,
  ReviseMap: ReviseMap,
  ChangeNavigationState: ChangeNavigationState,
  GetPlan: GetPlan,
  GenerateCleaningPath: GenerateCleaningPath,
  CopyVirtualWallList: CopyVirtualWallList,
  GetCleaningAreaList: GetCleaningAreaList,
  JudgeIsolatedZone: JudgeIsolatedZone,
  GetMap: GetMap,
  AutoNavigationCommand: AutoNavigationCommand,
  RecordTrajectoryCommand: RecordTrajectoryCommand,
  SetVirtualWallList: SetVirtualWallList,
  UpdateMapList: UpdateMapList,
  GetChassisVersion: GetChassisVersion,
  AddVirtualWallList: AddVirtualWallList,
  TrackPathCommand: TrackPathCommand,
  GetParams: GetParams,
  MotionCommand: MotionCommand,
  CallElevatorCommand: CallElevatorCommand,
  UpdateNavGoal: UpdateNavGoal,
  GetLocationNameList: GetLocationNameList,
  ConvertToImagePose: ConvertToImagePose,
  GetMapInfo: GetMapInfo,
};
