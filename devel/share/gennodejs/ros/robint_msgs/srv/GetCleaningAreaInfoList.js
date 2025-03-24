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

let CleaningAreaInfo = require('../msg/CleaningAreaInfo.js');

//-----------------------------------------------------------

class GetCleaningAreaInfoListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCleaningAreaInfoListRequest
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCleaningAreaInfoListRequest
    let len;
    let data = new GetCleaningAreaInfoListRequest(null);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_uuid);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCleaningAreaInfoListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc5bf00fcd212651e6eaf61320fdb627';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCleaningAreaInfoListRequest(null);
    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    return resolved;
    }
};

class GetCleaningAreaInfoListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.area_info_list = null;
      this.success = null;
      this.error_code = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('area_info_list')) {
        this.area_info_list = initObj.area_info_list
      }
      else {
        this.area_info_list = [];
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
    // Serializes a message object of type GetCleaningAreaInfoListResponse
    // Serialize message field [area_info_list]
    // Serialize the length for message field [area_info_list]
    bufferOffset = _serializer.uint32(obj.area_info_list.length, buffer, bufferOffset);
    obj.area_info_list.forEach((val) => {
      bufferOffset = CleaningAreaInfo.serialize(val, buffer, bufferOffset);
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
    //deserializes a message object of type GetCleaningAreaInfoListResponse
    let len;
    let data = new GetCleaningAreaInfoListResponse(null);
    // Deserialize message field [area_info_list]
    // Deserialize array length for message field [area_info_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.area_info_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.area_info_list[i] = CleaningAreaInfo.deserialize(buffer, bufferOffset)
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
    object.area_info_list.forEach((val) => {
      length += CleaningAreaInfo.getMessageSize(val);
    });
    length += _getByteLength(object.message);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetCleaningAreaInfoListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'afd0c1517b1f2538e914a414acb65989';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CleaningAreaInfo[] area_info_list
    bool success
    uint8 error_code
    string message
    
    ================================================================================
    MSG: robint_msgs/CleaningAreaInfo
    string uuid
    string name
    string map_uuid
    string group_uuid
    float32 area  # m * m
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCleaningAreaInfoListResponse(null);
    if (msg.area_info_list !== undefined) {
      resolved.area_info_list = new Array(msg.area_info_list.length);
      for (let i = 0; i < resolved.area_info_list.length; ++i) {
        resolved.area_info_list[i] = CleaningAreaInfo.Resolve(msg.area_info_list[i]);
      }
    }
    else {
      resolved.area_info_list = []
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
  Request: GetCleaningAreaInfoListRequest,
  Response: GetCleaningAreaInfoListResponse,
  md5sum() { return 'c9bd3dc1e14b85c9d69ae02a4712f46b'; },
  datatype() { return 'robint_msgs/GetCleaningAreaInfoList'; }
};
