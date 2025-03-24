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

let CleaningArea = require('../msg/CleaningArea.js');

//-----------------------------------------------------------

class GetCleaningAreaRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.area_uuid = null;
      this.coordinate_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('area_uuid')) {
        this.area_uuid = initObj.area_uuid
      }
      else {
        this.area_uuid = '';
      }
      if (initObj.hasOwnProperty('coordinate_mode')) {
        this.coordinate_mode = initObj.coordinate_mode
      }
      else {
        this.coordinate_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCleaningAreaRequest
    // Serialize message field [area_uuid]
    bufferOffset = _serializer.string(obj.area_uuid, buffer, bufferOffset);
    // Serialize message field [coordinate_mode]
    bufferOffset = _serializer.uint8(obj.coordinate_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCleaningAreaRequest
    let len;
    let data = new GetCleaningAreaRequest(null);
    // Deserialize message field [area_uuid]
    data.area_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [coordinate_mode]
    data.coordinate_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.area_uuid);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCleaningAreaRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '186f708c24b77a27052347ba5bb44319';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string area_uuid
    uint8 coordinate_mode
    uint8 IMAGE=0
    uint8 WORLD=1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCleaningAreaRequest(null);
    if (msg.area_uuid !== undefined) {
      resolved.area_uuid = msg.area_uuid;
    }
    else {
      resolved.area_uuid = ''
    }

    if (msg.coordinate_mode !== undefined) {
      resolved.coordinate_mode = msg.coordinate_mode;
    }
    else {
      resolved.coordinate_mode = 0
    }

    return resolved;
    }
};

// Constants for message
GetCleaningAreaRequest.Constants = {
  IMAGE: 0,
  WORLD: 1,
}

class GetCleaningAreaResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.area = null;
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = new CleaningArea();
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
    // Serializes a message object of type GetCleaningAreaResponse
    // Serialize message field [area]
    bufferOffset = CleaningArea.serialize(obj.area, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCleaningAreaResponse
    let len;
    let data = new GetCleaningAreaResponse(null);
    // Deserialize message field [area]
    data.area = CleaningArea.deserialize(buffer, bufferOffset);
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
    length += CleaningArea.getMessageSize(object.area);
    length += _getByteLength(object.message);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCleaningAreaResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c17313dfec5b5717d907df192543b14f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CleaningArea area
    bool success
    uint8 error_code
    string message
    
    ================================================================================
    MSG: robint_msgs/CleaningArea
    string uuid
    string name
    string map_uuid
    string group_uuid
    string coverage_method
    PathWithPoint contour
    PathWithPoint[] paths
    PathWithPoint[] holes
    ================================================================================
    MSG: robint_msgs/PathWithPoint
    uint32 id
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
    const resolved = new GetCleaningAreaResponse(null);
    if (msg.area !== undefined) {
      resolved.area = CleaningArea.Resolve(msg.area)
    }
    else {
      resolved.area = new CleaningArea()
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
  Request: GetCleaningAreaRequest,
  Response: GetCleaningAreaResponse,
  md5sum() { return '1778f6924e0699ed892dfa1d950f8e70'; },
  datatype() { return 'robint_msgs/GetCleaningArea'; }
};
