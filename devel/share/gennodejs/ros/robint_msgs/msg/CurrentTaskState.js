// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavigationState = require('./NavigationState.js');
let FollowingState = require('./FollowingState.js');
let PatrolState = require('./PatrolState.js');
let AutoChargeState = require('./AutoChargeState.js');
let UndockState = require('./UndockState.js');

//-----------------------------------------------------------

class CurrentTaskState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.activated_task_name = null;
      this.navigation_state = null;
      this.following_state = null;
      this.patrol_state = null;
      this.auto_charge_state = null;
      this.undock_state = null;
    }
    else {
      if (initObj.hasOwnProperty('activated_task_name')) {
        this.activated_task_name = initObj.activated_task_name
      }
      else {
        this.activated_task_name = '';
      }
      if (initObj.hasOwnProperty('navigation_state')) {
        this.navigation_state = initObj.navigation_state
      }
      else {
        this.navigation_state = new NavigationState();
      }
      if (initObj.hasOwnProperty('following_state')) {
        this.following_state = initObj.following_state
      }
      else {
        this.following_state = new FollowingState();
      }
      if (initObj.hasOwnProperty('patrol_state')) {
        this.patrol_state = initObj.patrol_state
      }
      else {
        this.patrol_state = new PatrolState();
      }
      if (initObj.hasOwnProperty('auto_charge_state')) {
        this.auto_charge_state = initObj.auto_charge_state
      }
      else {
        this.auto_charge_state = new AutoChargeState();
      }
      if (initObj.hasOwnProperty('undock_state')) {
        this.undock_state = initObj.undock_state
      }
      else {
        this.undock_state = new UndockState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurrentTaskState
    // Serialize message field [activated_task_name]
    bufferOffset = _serializer.string(obj.activated_task_name, buffer, bufferOffset);
    // Serialize message field [navigation_state]
    bufferOffset = NavigationState.serialize(obj.navigation_state, buffer, bufferOffset);
    // Serialize message field [following_state]
    bufferOffset = FollowingState.serialize(obj.following_state, buffer, bufferOffset);
    // Serialize message field [patrol_state]
    bufferOffset = PatrolState.serialize(obj.patrol_state, buffer, bufferOffset);
    // Serialize message field [auto_charge_state]
    bufferOffset = AutoChargeState.serialize(obj.auto_charge_state, buffer, bufferOffset);
    // Serialize message field [undock_state]
    bufferOffset = UndockState.serialize(obj.undock_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurrentTaskState
    let len;
    let data = new CurrentTaskState(null);
    // Deserialize message field [activated_task_name]
    data.activated_task_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [navigation_state]
    data.navigation_state = NavigationState.deserialize(buffer, bufferOffset);
    // Deserialize message field [following_state]
    data.following_state = FollowingState.deserialize(buffer, bufferOffset);
    // Deserialize message field [patrol_state]
    data.patrol_state = PatrolState.deserialize(buffer, bufferOffset);
    // Deserialize message field [auto_charge_state]
    data.auto_charge_state = AutoChargeState.deserialize(buffer, bufferOffset);
    // Deserialize message field [undock_state]
    data.undock_state = UndockState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.activated_task_name);
    length += NavigationState.getMessageSize(object.navigation_state);
    length += PatrolState.getMessageSize(object.patrol_state);
    length += AutoChargeState.getMessageSize(object.auto_charge_state);
    return length + 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/CurrentTaskState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9de3599c586d0abeed093da92159956c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string activated_task_name
    NavigationState navigation_state
    FollowingState following_state
    PatrolState patrol_state
    AutoChargeState auto_charge_state
    UndockState undock_state
    ================================================================================
    MSG: robint_msgs/NavigationState
    TaskStateHeader header 
    string goal_name
    string location_name
    string goal_group_uuid
    string state
    string feedback
    uint8 r_state
    uint8 r_feedback
    bool reached
    ================================================================================
    MSG: robint_msgs/TaskStateHeader
    bool activate  # 该任务是否处于激活状态
    time start_time
    time stop_time
    
    ================================================================================
    MSG: robint_msgs/FollowingState
    TaskStateHeader header
    uint8 status
    uint8 r_state
    uint8 r_feedback
    bool finished
    ================================================================================
    MSG: robint_msgs/PatrolState
    TaskStateHeader header
    string state             # "Running", "Stop", "Pause"
    string current_route_name
    string current_goal_name
    bool current_goal_isReached
    bool finished
    ================================================================================
    MSG: robint_msgs/AutoChargeState
    TaskStateHeader header
    string state
    uint8 r_state
    uint8 r_feedback
    bool finished
    ================================================================================
    MSG: robint_msgs/UndockState
    TaskStateHeader header
    uint8 status
    uint8 OBSTACLE_WARN=0
    uint8 MOVING=1
    uint8 r_state
    uint8 r_feedback
    bool finished
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurrentTaskState(null);
    if (msg.activated_task_name !== undefined) {
      resolved.activated_task_name = msg.activated_task_name;
    }
    else {
      resolved.activated_task_name = ''
    }

    if (msg.navigation_state !== undefined) {
      resolved.navigation_state = NavigationState.Resolve(msg.navigation_state)
    }
    else {
      resolved.navigation_state = new NavigationState()
    }

    if (msg.following_state !== undefined) {
      resolved.following_state = FollowingState.Resolve(msg.following_state)
    }
    else {
      resolved.following_state = new FollowingState()
    }

    if (msg.patrol_state !== undefined) {
      resolved.patrol_state = PatrolState.Resolve(msg.patrol_state)
    }
    else {
      resolved.patrol_state = new PatrolState()
    }

    if (msg.auto_charge_state !== undefined) {
      resolved.auto_charge_state = AutoChargeState.Resolve(msg.auto_charge_state)
    }
    else {
      resolved.auto_charge_state = new AutoChargeState()
    }

    if (msg.undock_state !== undefined) {
      resolved.undock_state = UndockState.Resolve(msg.undock_state)
    }
    else {
      resolved.undock_state = new UndockState()
    }

    return resolved;
    }
};

module.exports = CurrentTaskState;
