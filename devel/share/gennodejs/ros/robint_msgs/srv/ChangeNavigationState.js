// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NavigationState = require('../msg/NavigationState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeNavigationStateRequest {
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
        this.state = new NavigationState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeNavigationStateRequest
    // Serialize message field [state]
    bufferOffset = NavigationState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeNavigationStateRequest
    let len;
    let data = new ChangeNavigationStateRequest(null);
    // Deserialize message field [state]
    data.state = NavigationState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += NavigationState.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ChangeNavigationStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e8aa12f1ff4d948f0b013528681eeff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    NavigationState state
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeNavigationStateRequest(null);
    if (msg.state !== undefined) {
      resolved.state = NavigationState.Resolve(msg.state)
    }
    else {
      resolved.state = new NavigationState()
    }

    return resolved;
    }
};

class ChangeNavigationStateResponse {
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
    // Serializes a message object of type ChangeNavigationStateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeNavigationStateResponse
    let len;
    let data = new ChangeNavigationStateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ChangeNavigationStateResponse';
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
    const resolved = new ChangeNavigationStateResponse(null);
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
  Request: ChangeNavigationStateRequest,
  Response: ChangeNavigationStateResponse,
  md5sum() { return '7c9692bc48992779a3644fe54d668673'; },
  datatype() { return 'robint_msgs/ChangeNavigationState'; }
};
