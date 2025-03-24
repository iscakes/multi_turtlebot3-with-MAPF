// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CleaningAreaInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uuid = null;
      this.name = null;
      this.map_uuid = null;
      this.group_uuid = null;
      this.area = null;
    }
    else {
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = '';
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
      if (initObj.hasOwnProperty('group_uuid')) {
        this.group_uuid = initObj.group_uuid
      }
      else {
        this.group_uuid = '';
      }
      if (initObj.hasOwnProperty('area')) {
        this.area = initObj.area
      }
      else {
        this.area = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CleaningAreaInfo
    // Serialize message field [uuid]
    bufferOffset = _serializer.string(obj.uuid, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [group_uuid]
    bufferOffset = _serializer.string(obj.group_uuid, buffer, bufferOffset);
    // Serialize message field [area]
    bufferOffset = _serializer.float32(obj.area, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CleaningAreaInfo
    let len;
    let data = new CleaningAreaInfo(null);
    // Deserialize message field [uuid]
    data.uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [group_uuid]
    data.group_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [area]
    data.area = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uuid);
    length += _getByteLength(object.name);
    length += _getByteLength(object.map_uuid);
    length += _getByteLength(object.group_uuid);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/CleaningAreaInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44deeac11f18e06ad9c20de2970c1c5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CleaningAreaInfo(null);
    if (msg.uuid !== undefined) {
      resolved.uuid = msg.uuid;
    }
    else {
      resolved.uuid = ''
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    if (msg.group_uuid !== undefined) {
      resolved.group_uuid = msg.group_uuid;
    }
    else {
      resolved.group_uuid = ''
    }

    if (msg.area !== undefined) {
      resolved.area = msg.area;
    }
    else {
      resolved.area = 0.0
    }

    return resolved;
    }
};

module.exports = CleaningAreaInfo;
