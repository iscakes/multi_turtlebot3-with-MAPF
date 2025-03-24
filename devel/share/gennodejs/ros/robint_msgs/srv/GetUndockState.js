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

let UndockState = require('../msg/UndockState.js');

//-----------------------------------------------------------

class GetUndockStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetUndockStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetUndockStateRequest
    let len;
    let data = new GetUndockStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetUndockStateRequest';
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
    const resolved = new GetUndockStateRequest(null);
    return resolved;
    }
};

class GetUndockStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.undock_state = null;
      this.result = null;
    }
    else {
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
    // Serializes a message object of type GetUndockStateResponse
    // Serialize message field [undock_state]
    bufferOffset = UndockState.serialize(obj.undock_state, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetUndockStateResponse
    let len;
    let data = new GetUndockStateResponse(null);
    // Deserialize message field [undock_state]
    data.undock_state = UndockState.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetUndockStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd513c9c0fe2fb5b7d74e100f14d71c4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    UndockState undock_state
    bool result
    
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
    const resolved = new GetUndockStateResponse(null);
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
  Request: GetUndockStateRequest,
  Response: GetUndockStateResponse,
  md5sum() { return 'd513c9c0fe2fb5b7d74e100f14d71c4d'; },
  datatype() { return 'robint_msgs/GetUndockState'; }
};
