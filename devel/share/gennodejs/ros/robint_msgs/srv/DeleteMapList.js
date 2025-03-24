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

class DeleteMapListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_name_list = null;
      this.map_uuid_list = null;
    }
    else {
      if (initObj.hasOwnProperty('map_name_list')) {
        this.map_name_list = initObj.map_name_list
      }
      else {
        this.map_name_list = [];
      }
      if (initObj.hasOwnProperty('map_uuid_list')) {
        this.map_uuid_list = initObj.map_uuid_list
      }
      else {
        this.map_uuid_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeleteMapListRequest
    // Serialize message field [map_name_list]
    bufferOffset = _arraySerializer.string(obj.map_name_list, buffer, bufferOffset, null);
    // Serialize message field [map_uuid_list]
    bufferOffset = _arraySerializer.string(obj.map_uuid_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeleteMapListRequest
    let len;
    let data = new DeleteMapListRequest(null);
    // Deserialize message field [map_name_list]
    data.map_name_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [map_uuid_list]
    data.map_uuid_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.map_name_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.map_uuid_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/DeleteMapListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5aad69fcbabdcea88c6dc1b663fb94b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] map_name_list
    string[] map_uuid_list
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeleteMapListRequest(null);
    if (msg.map_name_list !== undefined) {
      resolved.map_name_list = msg.map_name_list;
    }
    else {
      resolved.map_name_list = []
    }

    if (msg.map_uuid_list !== undefined) {
      resolved.map_uuid_list = msg.map_uuid_list;
    }
    else {
      resolved.map_uuid_list = []
    }

    return resolved;
    }
};

class DeleteMapListResponse {
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
    // Serializes a message object of type DeleteMapListResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeleteMapListResponse
    let len;
    let data = new DeleteMapListResponse(null);
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
    return 'robint_msgs/DeleteMapListResponse';
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
    const resolved = new DeleteMapListResponse(null);
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
  Request: DeleteMapListRequest,
  Response: DeleteMapListResponse,
  md5sum() { return '5b79296d0ca619a3fadac0e357b7f539'; },
  datatype() { return 'robint_msgs/DeleteMapList'; }
};
