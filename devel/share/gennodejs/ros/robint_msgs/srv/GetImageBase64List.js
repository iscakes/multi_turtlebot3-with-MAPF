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

let ImageInfo = require('../msg/ImageInfo.js');

//-----------------------------------------------------------

class GetImageBase64ListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic = null;
    }
    else {
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetImageBase64ListRequest
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetImageBase64ListRequest
    let len;
    let data = new GetImageBase64ListRequest(null);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetImageBase64ListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8f94bae31b356b24d0427f80426d0c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetImageBase64ListRequest(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    return resolved;
    }
};

class GetImageBase64ListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_list = null;
      this.error_code = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('image_list')) {
        this.image_list = initObj.image_list
      }
      else {
        this.image_list = [];
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetImageBase64ListResponse
    // Serialize message field [image_list]
    // Serialize the length for message field [image_list]
    bufferOffset = _serializer.uint32(obj.image_list.length, buffer, bufferOffset);
    obj.image_list.forEach((val) => {
      bufferOffset = ImageInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetImageBase64ListResponse
    let len;
    let data = new GetImageBase64ListResponse(null);
    // Deserialize message field [image_list]
    // Deserialize array length for message field [image_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.image_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.image_list[i] = ImageInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.image_list.forEach((val) => {
      length += ImageInfo.getMessageSize(val);
    });
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetImageBase64ListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51c99e221d33641977a804690a952674';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ImageInfo[] image_list
    uint8 error_code
    bool success
    
    ================================================================================
    MSG: robint_msgs/ImageInfo
    string id
    string base64
    string format
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetImageBase64ListResponse(null);
    if (msg.image_list !== undefined) {
      resolved.image_list = new Array(msg.image_list.length);
      for (let i = 0; i < resolved.image_list.length; ++i) {
        resolved.image_list[i] = ImageInfo.Resolve(msg.image_list[i]);
      }
    }
    else {
      resolved.image_list = []
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetImageBase64ListRequest,
  Response: GetImageBase64ListResponse,
  md5sum() { return '7a44e79635d748554f2c54085f25c3d0'; },
  datatype() { return 'robint_msgs/GetImageBase64List'; }
};
