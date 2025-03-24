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

class ServoCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo_ID = null;
      this.angle = null;
      this.runningtime = null;
    }
    else {
      if (initObj.hasOwnProperty('servo_ID')) {
        this.servo_ID = initObj.servo_ID
      }
      else {
        this.servo_ID = '';
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0;
      }
      if (initObj.hasOwnProperty('runningtime')) {
        this.runningtime = initObj.runningtime
      }
      else {
        this.runningtime = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoCommand
    // Serialize message field [servo_ID]
    bufferOffset = _serializer.string(obj.servo_ID, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.int16(obj.angle, buffer, bufferOffset);
    // Serialize message field [runningtime]
    bufferOffset = _serializer.int16(obj.runningtime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoCommand
    let len;
    let data = new ServoCommand(null);
    // Deserialize message field [servo_ID]
    data.servo_ID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [runningtime]
    data.runningtime = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.servo_ID);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/ServoCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '055df8167a6869ba237fd86867a5bca5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string servo_ID
    int16 angle
    int16 runningtime
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoCommand(null);
    if (msg.servo_ID !== undefined) {
      resolved.servo_ID = msg.servo_ID;
    }
    else {
      resolved.servo_ID = ''
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0
    }

    if (msg.runningtime !== undefined) {
      resolved.runningtime = msg.runningtime;
    }
    else {
      resolved.runningtime = 0
    }

    return resolved;
    }
};

module.exports = ServoCommand;
