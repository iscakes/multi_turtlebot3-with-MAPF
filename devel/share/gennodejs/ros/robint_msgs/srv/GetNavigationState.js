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

//-----------------------------------------------------------

class GetNavigationStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNavigationStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavigationStateRequest
    let len;
    let data = new GetNavigationStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetNavigationStateRequest';
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
    const resolved = new GetNavigationStateRequest(null);
    return resolved;
    }
};

class GetNavigationStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.navigation_state = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('navigation_state')) {
        this.navigation_state = initObj.navigation_state
      }
      else {
        this.navigation_state = new NavigationState();
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
    // Serializes a message object of type GetNavigationStateResponse
    // Serialize message field [navigation_state]
    bufferOffset = NavigationState.serialize(obj.navigation_state, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNavigationStateResponse
    let len;
    let data = new GetNavigationStateResponse(null);
    // Deserialize message field [navigation_state]
    data.navigation_state = NavigationState.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += NavigationState.getMessageSize(object.navigation_state);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetNavigationStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3610dd921b0fb5ea6025bf47fc93512';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    NavigationState navigation_state
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNavigationStateResponse(null);
    if (msg.navigation_state !== undefined) {
      resolved.navigation_state = NavigationState.Resolve(msg.navigation_state)
    }
    else {
      resolved.navigation_state = new NavigationState()
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
  Request: GetNavigationStateRequest,
  Response: GetNavigationStateResponse,
  md5sum() { return 'f3610dd921b0fb5ea6025bf47fc93512'; },
  datatype() { return 'robint_msgs/GetNavigationState'; }
};
