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

class Mqtt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic = null;
      this.payload = null;
      this.qos = null;
    }
    else {
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
      if (initObj.hasOwnProperty('payload')) {
        this.payload = initObj.payload
      }
      else {
        this.payload = '';
      }
      if (initObj.hasOwnProperty('qos')) {
        this.qos = initObj.qos
      }
      else {
        this.qos = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mqtt
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    // Serialize message field [payload]
    bufferOffset = _serializer.string(obj.payload, buffer, bufferOffset);
    // Serialize message field [qos]
    bufferOffset = _serializer.uint8(obj.qos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mqtt
    let len;
    let data = new Mqtt(null);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [payload]
    data.payload = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [qos]
    data.qos = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic);
    length += _getByteLength(object.payload);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/Mqtt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2fdbbfebea18db613efd560d5285dbd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic
    string payload
    uint8 qos
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mqtt(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    if (msg.payload !== undefined) {
      resolved.payload = msg.payload;
    }
    else {
      resolved.payload = ''
    }

    if (msg.qos !== undefined) {
      resolved.qos = msg.qos;
    }
    else {
      resolved.qos = 0
    }

    return resolved;
    }
};

module.exports = Mqtt;
