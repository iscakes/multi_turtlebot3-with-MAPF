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

let FollowingState = require('../msg/FollowingState.js');

//-----------------------------------------------------------

class GetFollowingStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFollowingStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFollowingStateRequest
    let len;
    let data = new GetFollowingStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetFollowingStateRequest';
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
    const resolved = new GetFollowingStateRequest(null);
    return resolved;
    }
};

class GetFollowingStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.following_state = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('following_state')) {
        this.following_state = initObj.following_state
      }
      else {
        this.following_state = new FollowingState();
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
    // Serializes a message object of type GetFollowingStateResponse
    // Serialize message field [following_state]
    bufferOffset = FollowingState.serialize(obj.following_state, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFollowingStateResponse
    let len;
    let data = new GetFollowingStateResponse(null);
    // Deserialize message field [following_state]
    data.following_state = FollowingState.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetFollowingStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c134d8b81541d1ff34d0ac407ea4463';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FollowingState following_state
    bool result
    
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
    const resolved = new GetFollowingStateResponse(null);
    if (msg.following_state !== undefined) {
      resolved.following_state = FollowingState.Resolve(msg.following_state)
    }
    else {
      resolved.following_state = new FollowingState()
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
  Request: GetFollowingStateRequest,
  Response: GetFollowingStateResponse,
  md5sum() { return '3c134d8b81541d1ff34d0ac407ea4463'; },
  datatype() { return 'robint_msgs/GetFollowingState'; }
};
