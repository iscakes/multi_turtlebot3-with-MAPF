// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TrackPathCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.path_uuid = null;
      this.mode = null;
      this.count = null;
      this.nav_to_start = null;
      this.end_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('path_uuid')) {
        this.path_uuid = initObj.path_uuid
      }
      else {
        this.path_uuid = '';
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('nav_to_start')) {
        this.nav_to_start = initObj.nav_to_start
      }
      else {
        this.nav_to_start = false;
      }
      if (initObj.hasOwnProperty('end_pose')) {
        this.end_pose = initObj.end_pose
      }
      else {
        this.end_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackPathCommandRequest
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [path_uuid]
    bufferOffset = _serializer.string(obj.path_uuid, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [nav_to_start]
    bufferOffset = _serializer.bool(obj.nav_to_start, buffer, bufferOffset);
    // Serialize message field [end_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.end_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackPathCommandRequest
    let len;
    let data = new TrackPathCommandRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [path_uuid]
    data.path_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nav_to_start]
    data.nav_to_start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [end_pose]
    data.end_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.path_uuid);
    return length + 67;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/TrackPathCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a7bb8eb8dbed3dbc2e8aee10544db34';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 command       # 'Start', 'Pause', 'Continue', 'Stop'
    uint8 START=0
    uint8 PAUSE=1
    uint8 CONTINUE=2
    uint8 STOP=3
    string path_uuid
    uint8 mode
    uint8 BackAndForth=0
    uint8 Loop=1
    int32 count
    bool nav_to_start
    geometry_msgs/Pose end_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackPathCommandRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.path_uuid !== undefined) {
      resolved.path_uuid = msg.path_uuid;
    }
    else {
      resolved.path_uuid = ''
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.nav_to_start !== undefined) {
      resolved.nav_to_start = msg.nav_to_start;
    }
    else {
      resolved.nav_to_start = false
    }

    if (msg.end_pose !== undefined) {
      resolved.end_pose = geometry_msgs.msg.Pose.Resolve(msg.end_pose)
    }
    else {
      resolved.end_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

// Constants for message
TrackPathCommandRequest.Constants = {
  START: 0,
  PAUSE: 1,
  CONTINUE: 2,
  STOP: 3,
  BACKANDFORTH: 0,
  LOOP: 1,
}

class TrackPathCommandResponse {
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
    // Serializes a message object of type TrackPathCommandResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackPathCommandResponse
    let len;
    let data = new TrackPathCommandResponse(null);
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
    return 'robint_msgs/TrackPathCommandResponse';
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
    const resolved = new TrackPathCommandResponse(null);
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
  Request: TrackPathCommandRequest,
  Response: TrackPathCommandResponse,
  md5sum() { return '6b8d1ea369c9419e81b9375c3cef4b05'; },
  datatype() { return 'robint_msgs/TrackPathCommand'; }
};
