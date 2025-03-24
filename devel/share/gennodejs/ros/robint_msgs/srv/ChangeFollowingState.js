// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FollowingState = require('../msg/FollowingState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ChangeFollowingStateRequest {
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
        this.state = new FollowingState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeFollowingStateRequest
    // Serialize message field [state]
    bufferOffset = FollowingState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeFollowingStateRequest
    let len;
    let data = new ChangeFollowingStateRequest(null);
    // Deserialize message field [state]
    data.state = FollowingState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ChangeFollowingStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9d3b9f28953ac6cfe525c20a32b87c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FollowingState state
    
    ================================================================================
    MSG: robint_msgs/FollowingState
    TaskStateHeader header
    uint8 status
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
    const resolved = new ChangeFollowingStateRequest(null);
    if (msg.state !== undefined) {
      resolved.state = FollowingState.Resolve(msg.state)
    }
    else {
      resolved.state = new FollowingState()
    }

    return resolved;
    }
};

class ChangeFollowingStateResponse {
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
    // Serializes a message object of type ChangeFollowingStateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeFollowingStateResponse
    let len;
    let data = new ChangeFollowingStateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/ChangeFollowingStateResponse';
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
    const resolved = new ChangeFollowingStateResponse(null);
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
  Request: ChangeFollowingStateRequest,
  Response: ChangeFollowingStateResponse,
  md5sum() { return '2c8b3769a09c611adc7bf5ad44d8b225'; },
  datatype() { return 'robint_msgs/ChangeFollowingState'; }
};
