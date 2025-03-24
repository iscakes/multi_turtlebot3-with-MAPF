// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PatrolState = require('../msg/PatrolState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangePatrolStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new PatrolState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangePatrolStateRequest
    // Serialize message field [state]
    bufferOffset = PatrolState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangePatrolStateRequest
    let len;
    let data = new ChangePatrolStateRequest(null);
    // Deserialize message field [state]
    data.state = PatrolState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PatrolState.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ChangePatrolStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3788c2dc3206ceb6562c89d887b01ddb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PatrolState state
    
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
    const resolved = new ChangePatrolStateRequest(null);
    if (msg.state !== undefined) {
      resolved.state = PatrolState.Resolve(msg.state)
    }
    else {
      resolved.state = new PatrolState()
    }

    return resolved;
    }
};

class ChangePatrolStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangePatrolStateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangePatrolStateResponse
    let len;
    let data = new ChangePatrolStateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ChangePatrolStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangePatrolStateResponse(null);
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
  Request: ChangePatrolStateRequest,
  Response: ChangePatrolStateResponse,
  md5sum() { return 'fe45eb3e06327f9be9820eacec95ce2d'; },
  datatype() { return 'robint_msgs/ChangePatrolState'; }
};
