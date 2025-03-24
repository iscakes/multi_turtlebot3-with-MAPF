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

class GetChassisVersionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetChassisVersionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetChassisVersionRequest
    let len;
    let data = new GetChassisVersionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetChassisVersionRequest';
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
    const resolved = new GetChassisVersionRequest(null);
    return resolved;
    }
};

class GetChassisVersionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chassis_hardware_version = null;
      this.driver_hardware_version = null;
      this.chassis_software_version = null;
      this.driver_software_version = null;
      this.success = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('chassis_hardware_version')) {
        this.chassis_hardware_version = initObj.chassis_hardware_version
      }
      else {
        this.chassis_hardware_version = '';
      }
      if (initObj.hasOwnProperty('driver_hardware_version')) {
        this.driver_hardware_version = initObj.driver_hardware_version
      }
      else {
        this.driver_hardware_version = '';
      }
      if (initObj.hasOwnProperty('chassis_software_version')) {
        this.chassis_software_version = initObj.chassis_software_version
      }
      else {
        this.chassis_software_version = '';
      }
      if (initObj.hasOwnProperty('driver_software_version')) {
        this.driver_software_version = initObj.driver_software_version
      }
      else {
        this.driver_software_version = '';
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
    // Serializes a message object of type GetChassisVersionResponse
    // Serialize message field [chassis_hardware_version]
    bufferOffset = _serializer.string(obj.chassis_hardware_version, buffer, bufferOffset);
    // Serialize message field [driver_hardware_version]
    bufferOffset = _serializer.string(obj.driver_hardware_version, buffer, bufferOffset);
    // Serialize message field [chassis_software_version]
    bufferOffset = _serializer.string(obj.chassis_software_version, buffer, bufferOffset);
    // Serialize message field [driver_software_version]
    bufferOffset = _serializer.string(obj.driver_software_version, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetChassisVersionResponse
    let len;
    let data = new GetChassisVersionResponse(null);
    // Deserialize message field [chassis_hardware_version]
    data.chassis_hardware_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [driver_hardware_version]
    data.driver_hardware_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [chassis_software_version]
    data.chassis_software_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [driver_software_version]
    data.driver_software_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.chassis_hardware_version);
    length += _getByteLength(object.driver_hardware_version);
    length += _getByteLength(object.chassis_software_version);
    length += _getByteLength(object.driver_software_version);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetChassisVersionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3451500d4b57390d32336828695f590f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string chassis_hardware_version
    string driver_hardware_version
    string chassis_software_version
    string driver_software_version
    bool success
    uint8 error_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetChassisVersionResponse(null);
    if (msg.chassis_hardware_version !== undefined) {
      resolved.chassis_hardware_version = msg.chassis_hardware_version;
    }
    else {
      resolved.chassis_hardware_version = ''
    }

    if (msg.driver_hardware_version !== undefined) {
      resolved.driver_hardware_version = msg.driver_hardware_version;
    }
    else {
      resolved.driver_hardware_version = ''
    }

    if (msg.chassis_software_version !== undefined) {
      resolved.chassis_software_version = msg.chassis_software_version;
    }
    else {
      resolved.chassis_software_version = ''
    }

    if (msg.driver_software_version !== undefined) {
      resolved.driver_software_version = msg.driver_software_version;
    }
    else {
      resolved.driver_software_version = ''
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
  Request: GetChassisVersionRequest,
  Response: GetChassisVersionResponse,
  md5sum() { return '3451500d4b57390d32336828695f590f'; },
  datatype() { return 'robint_msgs/GetChassisVersion'; }
};
