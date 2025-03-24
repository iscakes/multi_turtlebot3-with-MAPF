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


//-----------------------------------------------------------

class CopyMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source_map_uuid = null;
      this.target_map_name = null;
      this.target_floor_id = null;
      this.target_building_id = null;
    }
    else {
      if (initObj.hasOwnProperty('source_map_uuid')) {
        this.source_map_uuid = initObj.source_map_uuid
      }
      else {
        this.source_map_uuid = '';
      }
      if (initObj.hasOwnProperty('target_map_name')) {
        this.target_map_name = initObj.target_map_name
      }
      else {
        this.target_map_name = '';
      }
      if (initObj.hasOwnProperty('target_floor_id')) {
        this.target_floor_id = initObj.target_floor_id
      }
      else {
        this.target_floor_id = '';
      }
      if (initObj.hasOwnProperty('target_building_id')) {
        this.target_building_id = initObj.target_building_id
      }
      else {
        this.target_building_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CopyMapRequest
    // Serialize message field [source_map_uuid]
    bufferOffset = _serializer.string(obj.source_map_uuid, buffer, bufferOffset);
    // Serialize message field [target_map_name]
    bufferOffset = _serializer.string(obj.target_map_name, buffer, bufferOffset);
    // Serialize message field [target_floor_id]
    bufferOffset = _serializer.string(obj.target_floor_id, buffer, bufferOffset);
    // Serialize message field [target_building_id]
    bufferOffset = _serializer.string(obj.target_building_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CopyMapRequest
    let len;
    let data = new CopyMapRequest(null);
    // Deserialize message field [source_map_uuid]
    data.source_map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_map_name]
    data.target_map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_floor_id]
    data.target_floor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_building_id]
    data.target_building_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source_map_uuid);
    length += _getByteLength(object.target_map_name);
    length += _getByteLength(object.target_floor_id);
    length += _getByteLength(object.target_building_id);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/CopyMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c55a5c95763ee468945afe9017c30a5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string source_map_uuid
    string target_map_name
    string target_floor_id
    string target_building_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CopyMapRequest(null);
    if (msg.source_map_uuid !== undefined) {
      resolved.source_map_uuid = msg.source_map_uuid;
    }
    else {
      resolved.source_map_uuid = ''
    }

    if (msg.target_map_name !== undefined) {
      resolved.target_map_name = msg.target_map_name;
    }
    else {
      resolved.target_map_name = ''
    }

    if (msg.target_floor_id !== undefined) {
      resolved.target_floor_id = msg.target_floor_id;
    }
    else {
      resolved.target_floor_id = ''
    }

    if (msg.target_building_id !== undefined) {
      resolved.target_building_id = msg.target_building_id;
    }
    else {
      resolved.target_building_id = ''
    }

    return resolved;
    }
};

class CopyMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_map_uuid = null;
      this.success = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('target_map_uuid')) {
        this.target_map_uuid = initObj.target_map_uuid
      }
      else {
        this.target_map_uuid = '';
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CopyMapResponse
    // Serialize message field [target_map_uuid]
    bufferOffset = _serializer.string(obj.target_map_uuid, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CopyMapResponse
    let len;
    let data = new CopyMapResponse(null);
    // Deserialize message field [target_map_uuid]
    data.target_map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.target_map_uuid);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/CopyMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc5067cccd39290ff918132e710fa107';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string target_map_uuid
    bool success
    uint8 error_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CopyMapResponse(null);
    if (msg.target_map_uuid !== undefined) {
      resolved.target_map_uuid = msg.target_map_uuid;
    }
    else {
      resolved.target_map_uuid = ''
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

    return resolved;
    }
};

module.exports = {
  Request: CopyMapRequest,
  Response: CopyMapResponse,
  md5sum() { return '1ace97e6535e79ec46c2b2a38a254a6f'; },
  datatype() { return 'robint_msgs/CopyMap'; }
};
