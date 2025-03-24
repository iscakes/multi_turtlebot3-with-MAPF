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

class CopyVirtualWallListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.source_map_uuid = null;
      this.target_map_uuid = null;
      this.floor_index = null;
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
      if (initObj.hasOwnProperty('floor_index')) {
        this.floor_index = initObj.floor_index
      }
      else {
        this.floor_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CopyVirtualWallListRequest
    // Serialize message field [source_map_uuid]
    bufferOffset = _serializer.string(obj.source_map_uuid, buffer, bufferOffset);
    // Serialize message field [target_map_uuid]
    bufferOffset = _serializer.string(obj.target_map_uuid, buffer, bufferOffset);
    // Serialize message field [floor_index]
    bufferOffset = _serializer.int32(obj.floor_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CopyVirtualWallListRequest
    let len;
    let data = new CopyVirtualWallListRequest(null);
    // Deserialize message field [source_map_uuid]
    data.source_map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_map_uuid]
    data.target_map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor_index]
    data.floor_index = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source_map_uuid);
    length += _getByteLength(object.target_map_uuid);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/CopyVirtualWallListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a53f3b91d4028fe972a2a14f7f5cc002';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string source_map_uuid
    string target_map_uuid
    int32 floor_index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CopyVirtualWallListRequest(null);
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

    if (msg.floor_index !== undefined) {
      resolved.floor_index = msg.floor_index;
    }
    else {
      resolved.floor_index = 0
    }

    return resolved;
    }
};

class CopyVirtualWallListResponse {
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
    // Serializes a message object of type CopyVirtualWallListResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CopyVirtualWallListResponse
    let len;
    let data = new CopyVirtualWallListResponse(null);
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
    return 'robint_msgs/CopyVirtualWallListResponse';
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
    const resolved = new CopyVirtualWallListResponse(null);
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
  Request: CopyVirtualWallListRequest,
  Response: CopyVirtualWallListResponse,
  md5sum() { return '0302d3157602f7391af07cad52331553'; },
  datatype() { return 'robint_msgs/CopyVirtualWallList'; }
};
