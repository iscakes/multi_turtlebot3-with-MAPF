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

class GetEmbeddingVersionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetEmbeddingVersionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEmbeddingVersionRequest
    let len;
    let data = new GetEmbeddingVersionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetEmbeddingVersionRequest';
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
    const resolved = new GetEmbeddingVersionRequest(null);
    return resolved;
    }
};

class GetEmbeddingVersionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.protocal_version = null;
      this.success = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('protocal_version')) {
        this.protocal_version = initObj.protocal_version
      }
      else {
        this.protocal_version = '';
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
    // Serializes a message object of type GetEmbeddingVersionResponse
    // Serialize message field [protocal_version]
    bufferOffset = _serializer.string(obj.protocal_version, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetEmbeddingVersionResponse
    let len;
    let data = new GetEmbeddingVersionResponse(null);
    // Deserialize message field [protocal_version]
    data.protocal_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.protocal_version);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetEmbeddingVersionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7b90ba6d5e0d773d0e5bf8c701d7b10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string protocal_version
    bool success
    uint8 error_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetEmbeddingVersionResponse(null);
    if (msg.protocal_version !== undefined) {
      resolved.protocal_version = msg.protocal_version;
    }
    else {
      resolved.protocal_version = ''
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
  Request: GetEmbeddingVersionRequest,
  Response: GetEmbeddingVersionResponse,
  md5sum() { return 'e7b90ba6d5e0d773d0e5bf8c701d7b10'; },
  datatype() { return 'robint_msgs/GetEmbeddingVersion'; }
};
