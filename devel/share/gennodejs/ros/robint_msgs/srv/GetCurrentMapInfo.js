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

let MapInfo = require('../msg/MapInfo.js');

//-----------------------------------------------------------

class GetCurrentMapInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCurrentMapInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrentMapInfoRequest
    let len;
    let data = new GetCurrentMapInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCurrentMapInfoRequest';
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
    const resolved = new GetCurrentMapInfoRequest(null);
    return resolved;
    }
};

class GetCurrentMapInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_info = null;
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('map_info')) {
        this.map_info = initObj.map_info
      }
      else {
        this.map_info = new MapInfo();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCurrentMapInfoResponse
    // Serialize message field [map_info]
    bufferOffset = MapInfo.serialize(obj.map_info, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCurrentMapInfoResponse
    let len;
    let data = new GetCurrentMapInfoResponse(null);
    // Deserialize message field [map_info]
    data.map_info = MapInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MapInfo.getMessageSize(object.map_info);
    length += _getByteLength(object.message);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCurrentMapInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '130d1545ef98bef7c80e6aae666b48f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MapInfo map_info
    bool success
    uint8 error_code
    string message
    
    ================================================================================
    MSG: robint_msgs/MapInfo
    string uuid
    string name
    string floor_id
    string building_id
    string time
    float32[] origin
    uint32 width
    uint32 height
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCurrentMapInfoResponse(null);
    if (msg.map_info !== undefined) {
      resolved.map_info = MapInfo.Resolve(msg.map_info)
    }
    else {
      resolved.map_info = new MapInfo()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCurrentMapInfoRequest,
  Response: GetCurrentMapInfoResponse,
  md5sum() { return '130d1545ef98bef7c80e6aae666b48f8'; },
  datatype() { return 'robint_msgs/GetCurrentMapInfo'; }
};
