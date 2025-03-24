// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let NavigationState = require('../msg/NavigationState.js');
let FollowingState = require('../msg/FollowingState.js');
let PatrolState = require('../msg/PatrolState.js');
let AutoChargeState = require('../msg/AutoChargeState.js');
let UndockState = require('../msg/UndockState.js');

//-----------------------------------------------------------

class GetCurrentTaskStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCurrentTaskStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrentTaskStateRequest
    let len;
    let data = new GetCurrentTaskStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCurrentTaskStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCurrentTaskStateRequest(null);
    return resolved;
    }
};

class GetCurrentTaskStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.activated_task_name = null;
      this.navigation_state = null;
      this.following_state = null;
      this.patrol_state = null;
      this.auto_charge_state = null;
      this.undock_state = null;
      this.result = null;
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
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCurrentTaskStateResponse
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
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrentTaskStateResponse
    let len;
    let data = new GetCurrentTaskStateResponse(null);
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
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.activated_task_name);
    length += NavigationState.getMessageSize(object.navigation_state);
    length += PatrolState.getMessageSize(object.patrol_state);
    length += AutoChargeState.getMessageSize(object.auto_charge_state);
    return length + 47;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCurrentTaskStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0454dfaa757e94ce272e735ea4f5d978';
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
    bool result
    
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
    const resolved = new GetCurrentTaskStateResponse(null);
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

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCurrentTaskStateRequest,
  Response: GetCurrentTaskStateResponse,
  md5sum() { return '0454dfaa757e94ce272e735ea4f5d978'; },
  datatype() { return 'robint_msgs/GetCurrentTaskState'; }
};
