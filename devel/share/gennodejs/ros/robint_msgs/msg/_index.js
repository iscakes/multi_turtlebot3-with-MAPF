
"use strict";

let RobotIsolatedZoneList = require('./RobotIsolatedZoneList.js');
let NavigationState = require('./NavigationState.js');
let MoveIntoElevatorState = require('./MoveIntoElevatorState.js');
let Mqtt = require('./Mqtt.js');
let ChargeBaseInfo = require('./ChargeBaseInfo.js');
let CleaningAreaInfo = require('./CleaningAreaInfo.js');
let MapState = require('./MapState.js');
let MappingState = require('./MappingState.js');
let RobotStatisticData = require('./RobotStatisticData.js');
let CruiseState = require('./CruiseState.js');
let CruiseTaskInfo = require('./CruiseTaskInfo.js');
let BatteryState = require('./BatteryState.js');
let RobotVersionInfo = require('./RobotVersionInfo.js');
let SensorState = require('./SensorState.js');
let MotionState = require('./MotionState.js');
let GateState = require('./GateState.js');
let PathWithPose = require('./PathWithPose.js');
let RobotImagePose = require('./RobotImagePose.js');
let ExplorationGoal = require('./ExplorationGoal.js');
let MapData = require('./MapData.js');
let PathWithPoint = require('./PathWithPoint.js');
let RobotPose = require('./RobotPose.js');
let SyncStatus = require('./SyncStatus.js');
let LocationNameList = require('./LocationNameList.js');
let Param = require('./Param.js');
let ZoneList = require('./ZoneList.js');
let LocationList = require('./LocationList.js');
let FollowingState = require('./FollowingState.js');
let Location = require('./Location.js');
let StateDiagnostic = require('./StateDiagnostic.js');
let SyncInfo = require('./SyncInfo.js');
let GateControlStatus = require('./GateControlStatus.js');
let VirtualWall = require('./VirtualWall.js');
let RangeArray = require('./RangeArray.js');
let OriginSyncInfo = require('./OriginSyncInfo.js');
let IsolatedWait = require('./IsolatedWait.js');
let Zone = require('./Zone.js');
let ImageInfo = require('./ImageInfo.js');
let CurrentTaskState = require('./CurrentTaskState.js');
let TrackingPathState = require('./TrackingPathState.js');
let SensorDiagnostic = require('./SensorDiagnostic.js');
let TaskStatusFeedback = require('./TaskStatusFeedback.js');
let PositionStatus = require('./PositionStatus.js');
let ErrorCode = require('./ErrorCode.js');
let MoveOffElevatorState = require('./MoveOffElevatorState.js');
let JoystickPanelStatus = require('./JoystickPanelStatus.js');
let LedControl = require('./LedControl.js');
let MapInfo = require('./MapInfo.js');
let TaskStateHeader = require('./TaskStateHeader.js');
let HumanArray = require('./HumanArray.js');
let RobotState = require('./RobotState.js');
let RectWithConfidence = require('./RectWithConfidence.js');
let VirtualWallList = require('./VirtualWallList.js');
let UndockState = require('./UndockState.js');
let GateInfo = require('./GateInfo.js');
let RobotIsolatedZone = require('./RobotIsolatedZone.js');
let AutoChargeState = require('./AutoChargeState.js');
let ServoCommand = require('./ServoCommand.js');
let ZonePoint = require('./ZonePoint.js');
let ElevatorState = require('./ElevatorState.js');
let IsolatedZone = require('./IsolatedZone.js');
let CleaningArea = require('./CleaningArea.js');
let HumanMsg = require('./HumanMsg.js');
let PatrolState = require('./PatrolState.js');
let AutoExploreState = require('./AutoExploreState.js');
let IsolatedZoneList = require('./IsolatedZoneList.js');
let NavigationTaskInfo = require('./NavigationTaskInfo.js');
let MoveBaseAction = require('./MoveBaseAction.js');
let MoveBaseActionFeedback = require('./MoveBaseActionFeedback.js');
let MoveBaseActionGoal = require('./MoveBaseActionGoal.js');
let TrackPathAction = require('./TrackPathAction.js');
let TrackPathActionResult = require('./TrackPathActionResult.js');
let MoveBaseResult = require('./MoveBaseResult.js');
let MoveBaseFeedback = require('./MoveBaseFeedback.js');
let TrackPathActionGoal = require('./TrackPathActionGoal.js');
let MoveBaseActionResult = require('./MoveBaseActionResult.js');
let MoveBaseGoal = require('./MoveBaseGoal.js');
let TrackPathGoal = require('./TrackPathGoal.js');
let TrackPathResult = require('./TrackPathResult.js');
let TrackPathFeedback = require('./TrackPathFeedback.js');
let TrackPathActionFeedback = require('./TrackPathActionFeedback.js');

module.exports = {
  RobotIsolatedZoneList: RobotIsolatedZoneList,
  NavigationState: NavigationState,
  MoveIntoElevatorState: MoveIntoElevatorState,
  Mqtt: Mqtt,
  ChargeBaseInfo: ChargeBaseInfo,
  CleaningAreaInfo: CleaningAreaInfo,
  MapState: MapState,
  MappingState: MappingState,
  RobotStatisticData: RobotStatisticData,
  CruiseState: CruiseState,
  CruiseTaskInfo: CruiseTaskInfo,
  BatteryState: BatteryState,
  RobotVersionInfo: RobotVersionInfo,
  SensorState: SensorState,
  MotionState: MotionState,
  GateState: GateState,
  PathWithPose: PathWithPose,
  RobotImagePose: RobotImagePose,
  ExplorationGoal: ExplorationGoal,
  MapData: MapData,
  PathWithPoint: PathWithPoint,
  RobotPose: RobotPose,
  SyncStatus: SyncStatus,
  LocationNameList: LocationNameList,
  Param: Param,
  ZoneList: ZoneList,
  LocationList: LocationList,
  FollowingState: FollowingState,
  Location: Location,
  StateDiagnostic: StateDiagnostic,
  SyncInfo: SyncInfo,
  GateControlStatus: GateControlStatus,
  VirtualWall: VirtualWall,
  RangeArray: RangeArray,
  OriginSyncInfo: OriginSyncInfo,
  IsolatedWait: IsolatedWait,
  Zone: Zone,
  ImageInfo: ImageInfo,
  CurrentTaskState: CurrentTaskState,
  TrackingPathState: TrackingPathState,
  SensorDiagnostic: SensorDiagnostic,
  TaskStatusFeedback: TaskStatusFeedback,
  PositionStatus: PositionStatus,
  ErrorCode: ErrorCode,
  MoveOffElevatorState: MoveOffElevatorState,
  JoystickPanelStatus: JoystickPanelStatus,
  LedControl: LedControl,
  MapInfo: MapInfo,
  TaskStateHeader: TaskStateHeader,
  HumanArray: HumanArray,
  RobotState: RobotState,
  RectWithConfidence: RectWithConfidence,
  VirtualWallList: VirtualWallList,
  UndockState: UndockState,
  GateInfo: GateInfo,
  RobotIsolatedZone: RobotIsolatedZone,
  AutoChargeState: AutoChargeState,
  ServoCommand: ServoCommand,
  ZonePoint: ZonePoint,
  ElevatorState: ElevatorState,
  IsolatedZone: IsolatedZone,
  CleaningArea: CleaningArea,
  HumanMsg: HumanMsg,
  PatrolState: PatrolState,
  AutoExploreState: AutoExploreState,
  IsolatedZoneList: IsolatedZoneList,
  NavigationTaskInfo: NavigationTaskInfo,
  MoveBaseAction: MoveBaseAction,
  MoveBaseActionFeedback: MoveBaseActionFeedback,
  MoveBaseActionGoal: MoveBaseActionGoal,
  TrackPathAction: TrackPathAction,
  TrackPathActionResult: TrackPathActionResult,
  MoveBaseResult: MoveBaseResult,
  MoveBaseFeedback: MoveBaseFeedback,
  TrackPathActionGoal: TrackPathActionGoal,
  MoveBaseActionResult: MoveBaseActionResult,
  MoveBaseGoal: MoveBaseGoal,
  TrackPathGoal: TrackPathGoal,
  TrackPathResult: TrackPathResult,
  TrackPathFeedback: TrackPathFeedback,
  TrackPathActionFeedback: TrackPathActionFeedback,
};
