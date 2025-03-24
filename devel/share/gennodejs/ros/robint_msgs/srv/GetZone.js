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

class GetZoneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.zone_uuid = null;
      this.zone_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('zone_uuid')) {
        this.zone_uuid = initObj.zone_uuid
      }
      else {
        this.zone_uuid = '';
      }
      if (initObj.hasOwnProperty('zone_mode')) {
        this.zone_mode = initObj.zone_mode
      }
      else {
        this.zone_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetZoneRequest
    // Serialize message field [zone_uuid]
    bufferOffset = _serializer.string(obj.zone_uuid, buffer, bufferOffset);
    // Serialize message field [zone_mode]
    bufferOffset = _serializer.uint8(obj.zone_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetZoneRequest
    let len;
    let data = new GetZoneRequest(null);
    // Deserialize message field [zone_uuid]
    data.zone_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [zone_mode]
    data.zone_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.zone_uuid);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetZoneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5572bd0ef723a40cb33e88c19df09273';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string zone_uuid
    uint8 zone_mode
    uint8 IMAGE=0
    uint8 WORLD=1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetZoneRequest(null);
    if (msg.zone_uuid !== undefined) {
      resolved.zone_uuid = msg.zone_uuid;
    }
    else {
      resolved.zone_uuid = ''
    }

    if (msg.zone_mode !== undefined) {
      resolved.zone_mode = msg.zone_mode;
    }
    else {
      resolved.zone_mode = 0
    }

    return resolved;
    }
};

// Constants for message
GetZoneRequest.Constants = {
  IMAGE: 0,
  WORLD: 1,
}

class GetZoneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.zone = null;
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('zone')) {
        this.zone = initObj.zone
      }
      else {
        this.zone = new Zone();
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
    // Serializes a message object of type GetZoneResponse
    // Serialize message field [zone]
    bufferOffset = Zone.serialize(obj.zone, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetZoneResponse
    let len;
    let data = new GetZoneResponse(null);
    // Deserialize message field [zone]
    data.zone = Zone.deserialize(buffer, bufferOffset);
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
    length += Zone.getMessageSize(object.zone);
    length += _getByteLength(object.message);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetZoneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0208cdeeb4283134393db83f3952da2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Zone zone
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
    const resolved = new GetZoneResponse(null);
    if (msg.zone !== undefined) {
      resolved.zone = Zone.Resolve(msg.zone)
    }
    else {
      resolved.zone = new Zone()
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
  Request: GetZoneRequest,
  Response: GetZoneResponse,
  md5sum() { return '3e8c73a28008489ea806c0e13cd661f0'; },
  datatype() { return 'robint_msgs/GetZone'; }
};
