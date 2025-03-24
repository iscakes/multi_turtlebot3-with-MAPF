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

let ChargeBaseInfo = require('../msg/ChargeBaseInfo.js');

//-----------------------------------------------------------

class GetChargeBaseInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetChargeBaseInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetChargeBaseInfoRequest
    let len;
    let data = new GetChargeBaseInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetChargeBaseInfoRequest';
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
    const resolved = new GetChargeBaseInfoRequest(null);
    return resolved;
    }
};

class GetChargeBaseInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.list = null;
      this.success = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('list')) {
        this.list = initObj.list
      }
      else {
        this.list = [];
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
    // Serializes a message object of type GetChargeBaseInfoResponse
    // Serialize message field [list]
    // Serialize the length for message field [list]
    bufferOffset = _serializer.uint32(obj.list.length, buffer, bufferOffset);
    obj.list.forEach((val) => {
      bufferOffset = ChargeBaseInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetChargeBaseInfoResponse
    let len;
    let data = new GetChargeBaseInfoResponse(null);
    // Deserialize message field [list]
    // Deserialize array length for message field [list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.list[i] = ChargeBaseInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.list.forEach((val) => {
      length += ChargeBaseInfo.getMessageSize(val);
    });
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/GetChargeBaseInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e867a9e96808d4305f59ec0c91de6769';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ChargeBaseInfo[] list
    bool success
    uint8 error_code
    
    ================================================================================
    MSG: robint_msgs/ChargeBaseInfo
    string location_uuid
    string location_name
    string group_uuid
    string map_uuid
    string floor_id
    string building_id
    geometry_msgs/PoseStamped pose
    geometry_msgs/PoseStamped anchor_pose
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
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
    const resolved = new GetChargeBaseInfoResponse(null);
    if (msg.list !== undefined) {
      resolved.list = new Array(msg.list.length);
      for (let i = 0; i < resolved.list.length; ++i) {
        resolved.list[i] = ChargeBaseInfo.Resolve(msg.list[i]);
      }
    }
    else {
      resolved.list = []
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
  Request: GetChargeBaseInfoRequest,
  Response: GetChargeBaseInfoResponse,
  md5sum() { return 'e867a9e96808d4305f59ec0c91de6769'; },
  datatype() { return 'robint_msgs/GetChargeBaseInfo'; }
};
