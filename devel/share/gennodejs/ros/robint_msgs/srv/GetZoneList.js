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

let Zone = require('../msg/Zone.js');

//-----------------------------------------------------------

class GetZoneListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_name = null;
      this.zone_mode = null;
      this.map_uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = '';
      }
      if (initObj.hasOwnProperty('zone_mode')) {
        this.zone_mode = initObj.zone_mode
      }
      else {
        this.zone_mode = 0;
      }
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetZoneListRequest
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    // Serialize message field [zone_mode]
    bufferOffset = _serializer.uint8(obj.zone_mode, buffer, bufferOffset);
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetZoneListRequest
    let len;
    let data = new GetZoneListRequest(null);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [zone_mode]
    data.zone_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_name);
    length += _getByteLength(object.map_uuid);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetZoneListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eeb9e24a844de76f2bf29bdcd54f0c6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_name
    uint8 zone_mode
    uint8 IMAGE=0
    uint8 WORLD=1
    string map_uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetZoneListRequest(null);
    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = ''
    }

    if (msg.zone_mode !== undefined) {
      resolved.zone_mode = msg.zone_mode;
    }
    else {
      resolved.zone_mode = 0
    }

    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    return resolved;
    }
};

// Constants for message
GetZoneListRequest.Constants = {
  IMAGE: 0,
  WORLD: 1,
}

class GetZoneListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.zone_list = null;
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('zone_list')) {
        this.zone_list = initObj.zone_list
      }
      else {
        this.zone_list = [];
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
    // Serializes a message object of type GetZoneListResponse
    // Serialize message field [zone_list]
    // Serialize the length for message field [zone_list]
    bufferOffset = _serializer.uint32(obj.zone_list.length, buffer, bufferOffset);
    obj.zone_list.forEach((val) => {
      bufferOffset = Zone.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetZoneListResponse
    let len;
    let data = new GetZoneListResponse(null);
    // Deserialize message field [zone_list]
    // Deserialize array length for message field [zone_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.zone_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.zone_list[i] = Zone.deserialize(buffer, bufferOffset)
    }
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
    object.zone_list.forEach((val) => {
      length += Zone.getMessageSize(val);
    });
    length += _getByteLength(object.message);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetZoneListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b48a5a64bb987ed60a10451c19d2e5f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Zone[] zone_list
    bool success
    uint8 error_code
    string message
    
    ================================================================================
    MSG: robint_msgs/Zone
    string uuid
    string name
    string map_uuid
    string group_uuid
    string type
    geometry_msgs/Point[] points
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetZoneListResponse(null);
    if (msg.zone_list !== undefined) {
      resolved.zone_list = new Array(msg.zone_list.length);
      for (let i = 0; i < resolved.zone_list.length; ++i) {
        resolved.zone_list[i] = Zone.Resolve(msg.zone_list[i]);
      }
    }
    else {
      resolved.zone_list = []
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
  Request: GetZoneListRequest,
  Response: GetZoneListResponse,
  md5sum() { return 'ab629fb1e78a810c21a70e1be1adccea'; },
  datatype() { return 'robint_msgs/GetZoneList'; }
};
