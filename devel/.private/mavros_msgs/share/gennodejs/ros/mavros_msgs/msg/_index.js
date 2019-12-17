
"use strict";

let VFR_HUD = require('./VFR_HUD.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let Mavlink = require('./Mavlink.js');
let Vibration = require('./Vibration.js');
let LogData = require('./LogData.js');
let WaypointReached = require('./WaypointReached.js');
let HilGPS = require('./HilGPS.js');
let HomePosition = require('./HomePosition.js');
let State = require('./State.js');
let LandingTarget = require('./LandingTarget.js');
let ManualControl = require('./ManualControl.js');
let VehicleInfo = require('./VehicleInfo.js');
let ExtendedState = require('./ExtendedState.js');
let RTCM = require('./RTCM.js');
let Param = require('./Param.js');
let FileEntry = require('./FileEntry.js');
let RadioStatus = require('./RadioStatus.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let Waypoint = require('./Waypoint.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let BatteryStatus = require('./BatteryStatus.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let WaypointList = require('./WaypointList.js');
let CommandCode = require('./CommandCode.js');
let HilSensor = require('./HilSensor.js');
let Trajectory = require('./Trajectory.js');
let MountControl = require('./MountControl.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let RCIn = require('./RCIn.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let HilControls = require('./HilControls.js');
let RCOut = require('./RCOut.js');
let LogEntry = require('./LogEntry.js');
let DebugValue = require('./DebugValue.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let StatusText = require('./StatusText.js');
let ParamValue = require('./ParamValue.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let ActuatorControl = require('./ActuatorControl.js');
let PositionTarget = require('./PositionTarget.js');
let Thrust = require('./Thrust.js');
let Altitude = require('./Altitude.js');

module.exports = {
  VFR_HUD: VFR_HUD,
  OverrideRCIn: OverrideRCIn,
  Mavlink: Mavlink,
  Vibration: Vibration,
  LogData: LogData,
  WaypointReached: WaypointReached,
  HilGPS: HilGPS,
  HomePosition: HomePosition,
  State: State,
  LandingTarget: LandingTarget,
  ManualControl: ManualControl,
  VehicleInfo: VehicleInfo,
  ExtendedState: ExtendedState,
  RTCM: RTCM,
  Param: Param,
  FileEntry: FileEntry,
  RadioStatus: RadioStatus,
  TimesyncStatus: TimesyncStatus,
  OnboardComputerStatus: OnboardComputerStatus,
  Waypoint: Waypoint,
  ADSBVehicle: ADSBVehicle,
  OpticalFlowRad: OpticalFlowRad,
  BatteryStatus: BatteryStatus,
  CompanionProcessStatus: CompanionProcessStatus,
  CamIMUStamp: CamIMUStamp,
  WaypointList: WaypointList,
  CommandCode: CommandCode,
  HilSensor: HilSensor,
  Trajectory: Trajectory,
  MountControl: MountControl,
  AttitudeTarget: AttitudeTarget,
  RCIn: RCIn,
  HilStateQuaternion: HilStateQuaternion,
  HilControls: HilControls,
  RCOut: RCOut,
  LogEntry: LogEntry,
  DebugValue: DebugValue,
  WheelOdomStamped: WheelOdomStamped,
  StatusText: StatusText,
  ParamValue: ParamValue,
  HilActuatorControls: HilActuatorControls,
  GlobalPositionTarget: GlobalPositionTarget,
  ActuatorControl: ActuatorControl,
  PositionTarget: PositionTarget,
  Thrust: Thrust,
  Altitude: Altitude,
};
