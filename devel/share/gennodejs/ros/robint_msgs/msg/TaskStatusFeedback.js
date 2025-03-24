// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TaskStatusFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskStatusFeedback
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskStatusFeedback
    let len;
    let data = new TaskStatusFeedback(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/TaskStatusFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4c55101ab12bccd187ce627a0586984';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NONE = 0
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskStatusFeedback(null);
    return resolved;
    }
};

// Constants for message
TaskStatusFeedback.Constants = {
  NONE: 0,
  RUNNING: 1,
  PAUSE: 2,
  STOP: 3,
  GET_ROBOT_POSE_ERROR: 4,
  NAV_FAILURE: 21,
  GLOBAL_PLAN_FAILURE: 22,
  LOCAL_PLAN_FAILURE: 23,
  WAIT_AT_GOAL_CANDIDATE: 24,
  NAV_CANCEL: 25,
  PLAN_EXCEPTION: 26,
  OPEN_GATE_TIMEOUT: 41,
  FAIL_TO_DETECT_DOCK: 51,
  DOCK_OBSTACLE_WARN: 52,
  DOCK_TIMEOUT: 53,
  RETRY_TIMEOUT: 54,
  GO_TO_ANCHOR: 55,
  APPROACH_DOCK: 56,
  UNDOCK_OBSTACLE_WARN: 71,
  UNDOCK_TIMEOUT: 72,
  MOVE_INTO_ELEVATOR_PLAN_FAILURE: 81,
  MOVE_INTO_GOAL_IS_OCCUPIED: 82,
  MOVE_INTO_OBSTACLE_WARN: 83,
  MOVE_INTO_ELEVATOR_TIMEOUT: 84,
  MOVE_INTO_ELEVATOR_FAILURE: 85,
  MOVE_OFF_ELEVATOR_FAILURE: 91,
  MOVE_OFF_GOAL_IS_OCCUPIED: 92,
  MOVE_OFF_OBSTACLE_WARN: 93,
  MOTION_OBSTACLE_WARNING: 101,
  TRACK_BACK: 102,
  ROS_ERROR: 255,
}

module.exports = TaskStatusFeedback;
