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

let AutoChargeState = require('../msg/AutoChargeState.js');

//-----------------------------------------------------------

class GetAutoChargeStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAutoChargeStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAutoChargeStateRequest
    let len;
    let data = new GetAutoChargeStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetAutoChargeStateRequest';
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
    const resolved = new GetAutoChargeStateRequest(null);
    return resolved;
    }
};

class GetAutoChargeStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.auto_charge_state = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('auto_charge_state')) {
        this.auto_charge_state = initObj.auto_charge_state
      }
      else {
        this.auto_charge_state = new AutoChargeState();
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
    // Serializes a message object of type GetAutoChargeStateResponse
    // Serialize message field [auto_charge_state]
    bufferOffset = AutoChargeState.serialize(obj.auto_charge_state, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAutoChargeStateResponse
    let len;
    let data = new GetAutoChargeStateResponse(null);
    // Deserialize message field [auto_charge_state]
    data.auto_charge_state = AutoChargeState.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AutoChargeState.getMessageSize(object.auto_charge_state);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetAutoChargeStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6d99ed8da38328f3d700d808197028c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AutoChargeState auto_charge_state
    bool result
    
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
    const resolved = new GetAutoChargeStateResponse(null);
    if (msg.auto_charge_state !== undefined) {
      resolved.auto_charge_state = AutoChargeState.Resolve(msg.auto_charge_state)
    }
    else {
      resolved.auto_charge_state = new AutoChargeState()
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
  Request: GetAutoChargeStateRequest,
  Response: GetAutoChargeStateResponse,
  md5sum() { return 'f6d99ed8da38328f3d700d808197028c'; },
  datatype() { return 'robint_msgs/GetAutoChargeState'; }
};
