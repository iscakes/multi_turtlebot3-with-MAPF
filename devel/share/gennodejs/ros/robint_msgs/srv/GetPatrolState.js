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

let PatrolState = require('../msg/PatrolState.js');

//-----------------------------------------------------------

class GetPatrolStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPatrolStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPatrolStateRequest
    let len;
    let data = new GetPatrolStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetPatrolStateRequest';
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
    const resolved = new GetPatrolStateRequest(null);
    return resolved;
    }
};

class GetPatrolStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.patrol_state = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('patrol_state')) {
        this.patrol_state = initObj.patrol_state
      }
      else {
        this.patrol_state = new PatrolState();
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
    // Serializes a message object of type GetPatrolStateResponse
    // Serialize message field [patrol_state]
    bufferOffset = PatrolState.serialize(obj.patrol_state, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPatrolStateResponse
    let len;
    let data = new GetPatrolStateResponse(null);
    // Deserialize message field [patrol_state]
    data.patrol_state = PatrolState.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PatrolState.getMessageSize(object.patrol_state);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetPatrolStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e3cb361868f6beb35b772468bb8cf09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PatrolState patrol_state
    bool result
    
    ================================================================================
    MSG: robint_msgs/PatrolState
    TaskStateHeader header
    string state             # "Running", "Stop", "Pause"
    string current_route_name
    string current_goal_name
    bool current_goal_isReached
    bool finished
    ================================================================================
    MSG: robint_msgs/TaskStateHeader
    bool activate  # 该任务是否处于激活状态
    time start_time
    time stop_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPatrolStateResponse(null);
    if (msg.patrol_state !== undefined) {
      resolved.patrol_state = PatrolState.Resolve(msg.patrol_state)
    }
    else {
      resolved.patrol_state = new PatrolState()
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
  Request: GetPatrolStateRequest,
  Response: GetPatrolStateResponse,
  md5sum() { return '7e3cb361868f6beb35b772468bb8cf09'; },
  datatype() { return 'robint_msgs/GetPatrolState'; }
};
