// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AutoChargeState = require('../msg/AutoChargeState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeAutoChargeStateRequest {
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
        this.state = new AutoChargeState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeAutoChargeStateRequest
    // Serialize message field [state]
    bufferOffset = AutoChargeState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeAutoChargeStateRequest
    let len;
    let data = new ChangeAutoChargeStateRequest(null);
    // Deserialize message field [state]
    data.state = AutoChargeState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AutoChargeState.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ChangeAutoChargeStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15df7c366a3550f3c2a3f19efa772877';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AutoChargeState state
    
    ================================================================================
    MSG: robint_msgs/AutoChargeState
    TaskStateHeader header
    string state
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
    const resolved = new ChangeAutoChargeStateRequest(null);
    if (msg.state !== undefined) {
      resolved.state = AutoChargeState.Resolve(msg.state)
    }
    else {
      resolved.state = new AutoChargeState()
    }

    return resolved;
    }
};

class ChangeAutoChargeStateResponse {
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
    // Serializes a message object of type ChangeAutoChargeStateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeAutoChargeStateResponse
    let len;
    let data = new ChangeAutoChargeStateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ChangeAutoChargeStateResponse';
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
    const resolved = new ChangeAutoChargeStateResponse(null);
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
  Request: ChangeAutoChargeStateRequest,
  Response: ChangeAutoChargeStateResponse,
  md5sum() { return '02cfeeb813567a97fc827cd789e6531b'; },
  datatype() { return 'robint_msgs/ChangeAutoChargeState'; }
};
