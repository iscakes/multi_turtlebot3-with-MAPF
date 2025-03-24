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

class CopyCleaningAreaListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source_map_uuid = null;
      this.target_map_uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('source_map_uuid')) {
        this.source_map_uuid = initObj.source_map_uuid
      }
      else {
        this.source_map_uuid = '';
      }
      if (initObj.hasOwnProperty('target_map_uuid')) {
        this.target_map_uuid = initObj.target_map_uuid
      }
      else {
        this.target_map_uuid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CopyCleaningAreaListRequest
    // Serialize message field [source_map_uuid]
    bufferOffset = _serializer.string(obj.source_map_uuid, buffer, bufferOffset);
    // Serialize message field [target_map_uuid]
    bufferOffset = _serializer.string(obj.target_map_uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CopyCleaningAreaListRequest
    let len;
    let data = new CopyCleaningAreaListRequest(null);
    // Deserialize message field [source_map_uuid]
    data.source_map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_map_uuid]
    data.target_map_uuid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source_map_uuid);
    length += _getByteLength(object.target_map_uuid);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/CopyCleaningAreaListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ea1160b265e66d413a9cfaaa6d01ab4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string source_map_uuid
    string target_map_uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CopyCleaningAreaListRequest(null);
    if (msg.source_map_uuid !== undefined) {
      resolved.source_map_uuid = msg.source_map_uuid;
    }
    else {
      resolved.source_map_uuid = ''
    }

    if (msg.target_map_uuid !== undefined) {
      resolved.target_map_uuid = msg.target_map_uuid;
    }
    else {
      resolved.target_map_uuid = ''
    }

    return resolved;
    }
};

class CopyCleaningAreaListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CopyCleaningAreaListResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CopyCleaningAreaListResponse
    let len;
    let data = new CopyCleaningAreaListResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/CopyCleaningAreaListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e64e855da06d239f5ca2100b107659ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CopyCleaningAreaListResponse(null);
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
  Request: CopyCleaningAreaListRequest,
  Response: CopyCleaningAreaListResponse,
  md5sum() { return '8b11985cf92920b4eb79531e78124b68'; },
  datatype() { return 'robint_msgs/CopyCleaningAreaList'; }
};
