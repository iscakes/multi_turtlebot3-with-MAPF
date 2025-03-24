// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapInfo = require('../msg/MapInfo.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddMapListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_info_list = null;
    }
    else {
      if (initObj.hasOwnProperty('map_info_list')) {
        this.map_info_list = initObj.map_info_list
      }
      else {
        this.map_info_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddMapListRequest
    // Serialize message field [map_info_list]
    // Serialize the length for message field [map_info_list]
    bufferOffset = _serializer.uint32(obj.map_info_list.length, buffer, bufferOffset);
    obj.map_info_list.forEach((val) => {
      bufferOffset = MapInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddMapListRequest
    let len;
    let data = new AddMapListRequest(null);
    // Deserialize message field [map_info_list]
    // Deserialize array length for message field [map_info_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.map_info_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.map_info_list[i] = MapInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.map_info_list.forEach((val) => {
      length += MapInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/AddMapListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '707a4b66fd26f9c384bfa64aed37bb6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MapInfo[] map_info_list
    
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
    const resolved = new AddMapListRequest(null);
    if (msg.map_info_list !== undefined) {
      resolved.map_info_list = new Array(msg.map_info_list.length);
      for (let i = 0; i < resolved.map_info_list.length; ++i) {
        resolved.map_info_list[i] = MapInfo.Resolve(msg.map_info_list[i]);
      }
    }
    else {
      resolved.map_info_list = []
    }

    return resolved;
    }
};

class AddMapListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
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
    // Serializes a message object of type AddMapListResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddMapListResponse
    let len;
    let data = new AddMapListResponse(null);
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
    length += _getByteLength(object.message);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/AddMapListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ad76664b0717ddbf6142456d7398288';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddMapListResponse(null);
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
  Request: AddMapListRequest,
  Response: AddMapListResponse,
  md5sum() { return '7377a14f5bd2306faf16013588b937bd'; },
  datatype() { return 'robint_msgs/AddMapList'; }
};
