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

class GetDetailedNavigationInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.loc_uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('loc_uuid')) {
        this.loc_uuid = initObj.loc_uuid
      }
      else {
        this.loc_uuid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDetailedNavigationInfoRequest
    // Serialize message field [loc_uuid]
    bufferOffset = _serializer.string(obj.loc_uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDetailedNavigationInfoRequest
    let len;
    let data = new GetDetailedNavigationInfoRequest(null);
    // Deserialize message field [loc_uuid]
    data.loc_uuid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.loc_uuid);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetDetailedNavigationInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '585db4e4136bdaf2a6b33edf6247af61';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string loc_uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDetailedNavigationInfoRequest(null);
    if (msg.loc_uuid !== undefined) {
      resolved.loc_uuid = msg.loc_uuid;
    }
    else {
      resolved.loc_uuid = ''
    }

    return resolved;
    }
};

class GetDetailedNavigationInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_map_uuid = null;
      this.current_floor_id = null;
      this.target_map_uuid = null;
      this.target_floor_uuid = null;
      this.target_loc_uuid = null;
      this.enter_elevator_loc_uuid = null;
      this.elevator_interior_loc_uuid = null;
      this.elevator_wait_loc_uuid = null;
      this.exit_elevator_loc_uuid = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('current_map_uuid')) {
        this.current_map_uuid = initObj.current_map_uuid
      }
      else {
        this.current_map_uuid = '';
      }
      if (initObj.hasOwnProperty('current_floor_id')) {
        this.current_floor_id = initObj.current_floor_id
      }
      else {
        this.current_floor_id = '';
      }
      if (initObj.hasOwnProperty('target_map_uuid')) {
        this.target_map_uuid = initObj.target_map_uuid
      }
      else {
        this.target_map_uuid = '';
      }
      if (initObj.hasOwnProperty('target_floor_uuid')) {
        this.target_floor_uuid = initObj.target_floor_uuid
      }
      else {
        this.target_floor_uuid = '';
      }
      if (initObj.hasOwnProperty('target_loc_uuid')) {
        this.target_loc_uuid = initObj.target_loc_uuid
      }
      else {
        this.target_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('enter_elevator_loc_uuid')) {
        this.enter_elevator_loc_uuid = initObj.enter_elevator_loc_uuid
      }
      else {
        this.enter_elevator_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('elevator_interior_loc_uuid')) {
        this.elevator_interior_loc_uuid = initObj.elevator_interior_loc_uuid
      }
      else {
        this.elevator_interior_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('elevator_wait_loc_uuid')) {
        this.elevator_wait_loc_uuid = initObj.elevator_wait_loc_uuid
      }
      else {
        this.elevator_wait_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('exit_elevator_loc_uuid')) {
        this.exit_elevator_loc_uuid = initObj.exit_elevator_loc_uuid
      }
      else {
        this.exit_elevator_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDetailedNavigationInfoResponse
    // Serialize message field [current_map_uuid]
    bufferOffset = _serializer.string(obj.current_map_uuid, buffer, bufferOffset);
    // Serialize message field [current_floor_id]
    bufferOffset = _serializer.string(obj.current_floor_id, buffer, bufferOffset);
    // Serialize message field [target_map_uuid]
    bufferOffset = _serializer.string(obj.target_map_uuid, buffer, bufferOffset);
    // Serialize message field [target_floor_uuid]
    bufferOffset = _serializer.string(obj.target_floor_uuid, buffer, bufferOffset);
    // Serialize message field [target_loc_uuid]
    bufferOffset = _serializer.string(obj.target_loc_uuid, buffer, bufferOffset);
    // Serialize message field [enter_elevator_loc_uuid]
    bufferOffset = _serializer.string(obj.enter_elevator_loc_uuid, buffer, bufferOffset);
    // Serialize message field [elevator_interior_loc_uuid]
    bufferOffset = _serializer.string(obj.elevator_interior_loc_uuid, buffer, bufferOffset);
    // Serialize message field [elevator_wait_loc_uuid]
    bufferOffset = _serializer.string(obj.elevator_wait_loc_uuid, buffer, bufferOffset);
    // Serialize message field [exit_elevator_loc_uuid]
    bufferOffset = _serializer.string(obj.exit_elevator_loc_uuid, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDetailedNavigationInfoResponse
    let len;
    let data = new GetDetailedNavigationInfoResponse(null);
    // Deserialize message field [current_map_uuid]
    data.current_map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_floor_id]
    data.current_floor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_map_uuid]
    data.target_map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_floor_uuid]
    data.target_floor_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_loc_uuid]
    data.target_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enter_elevator_loc_uuid]
    data.enter_elevator_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [elevator_interior_loc_uuid]
    data.elevator_interior_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [elevator_wait_loc_uuid]
    data.elevator_wait_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [exit_elevator_loc_uuid]
    data.exit_elevator_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.current_map_uuid);
    length += _getByteLength(object.current_floor_id);
    length += _getByteLength(object.target_map_uuid);
    length += _getByteLength(object.target_floor_uuid);
    length += _getByteLength(object.target_loc_uuid);
    length += _getByteLength(object.enter_elevator_loc_uuid);
    length += _getByteLength(object.elevator_interior_loc_uuid);
    length += _getByteLength(object.elevator_wait_loc_uuid);
    length += _getByteLength(object.exit_elevator_loc_uuid);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetDetailedNavigationInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9ad951a76360aeae23cc7d1b7faec4c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string current_map_uuid
    string current_floor_id
    string target_map_uuid
    string target_floor_uuid
    string target_loc_uuid
    string enter_elevator_loc_uuid
    string elevator_interior_loc_uuid
    string elevator_wait_loc_uuid
    string exit_elevator_loc_uuid
    
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDetailedNavigationInfoResponse(null);
    if (msg.current_map_uuid !== undefined) {
      resolved.current_map_uuid = msg.current_map_uuid;
    }
    else {
      resolved.current_map_uuid = ''
    }

    if (msg.current_floor_id !== undefined) {
      resolved.current_floor_id = msg.current_floor_id;
    }
    else {
      resolved.current_floor_id = ''
    }

    if (msg.target_map_uuid !== undefined) {
      resolved.target_map_uuid = msg.target_map_uuid;
    }
    else {
      resolved.target_map_uuid = ''
    }

    if (msg.target_floor_uuid !== undefined) {
      resolved.target_floor_uuid = msg.target_floor_uuid;
    }
    else {
      resolved.target_floor_uuid = ''
    }

    if (msg.target_loc_uuid !== undefined) {
      resolved.target_loc_uuid = msg.target_loc_uuid;
    }
    else {
      resolved.target_loc_uuid = ''
    }

    if (msg.enter_elevator_loc_uuid !== undefined) {
      resolved.enter_elevator_loc_uuid = msg.enter_elevator_loc_uuid;
    }
    else {
      resolved.enter_elevator_loc_uuid = ''
    }

    if (msg.elevator_interior_loc_uuid !== undefined) {
      resolved.elevator_interior_loc_uuid = msg.elevator_interior_loc_uuid;
    }
    else {
      resolved.elevator_interior_loc_uuid = ''
    }

    if (msg.elevator_wait_loc_uuid !== undefined) {
      resolved.elevator_wait_loc_uuid = msg.elevator_wait_loc_uuid;
    }
    else {
      resolved.elevator_wait_loc_uuid = ''
    }

    if (msg.exit_elevator_loc_uuid !== undefined) {
      resolved.exit_elevator_loc_uuid = msg.exit_elevator_loc_uuid;
    }
    else {
      resolved.exit_elevator_loc_uuid = ''
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDetailedNavigationInfoRequest,
  Response: GetDetailedNavigationInfoResponse,
  md5sum() { return 'd40b5c7df15504a3cb8d5081f8acd091'; },
  datatype() { return 'robint_msgs/GetDetailedNavigationInfo'; }
};
