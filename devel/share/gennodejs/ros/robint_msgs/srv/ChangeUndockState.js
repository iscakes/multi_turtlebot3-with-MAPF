// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UndockState = require('../msg/UndockState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeUndockStateRequest {
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
        this.state = new UndockState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeUndockStateRequest
    // Serialize message field [state]
    bufferOffset = UndockState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeUndockStateRequest
    let len;
    let data = new ChangeUndockStateRequest(null);
    // Deserialize message field [state]
    data.state = UndockState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ChangeUndockStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c43ec380026500163e77abc99d4b36c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UndockState state
    
    ================================================================================
    MSG: robint_msgs/UndockState
    TaskStateHeader header
    uint8 status
    uint8 OBSTACLE_WARN=0
    uint8 MOVING=1
    uint8 r_state
    uint8 r_feedback
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
    const resolved = new ChangeUndockStateRequest(null);
    if (msg.state !== undefined) {
      resolved.state = UndockState.Resolve(msg.state)
    }
    else {
      resolved.state = new UndockState()
    }

    return resolved;
    }
};

class ChangeUndockStateResponse {
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
    // Serializes a message object of type ChangeUndockStateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeUndockStateResponse
    let len;
    let data = new ChangeUndockStateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ChangeUndockStateResponse';
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
    const resolved = new ChangeUndockStateResponse(null);
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
  Request: ChangeUndockStateRequest,
  Response: ChangeUndockStateResponse,
  md5sum() { return '1df2b32e00d9659a7afd807940e0bc0e'; },
  datatype() { return 'robint_msgs/ChangeUndockState'; }
};
