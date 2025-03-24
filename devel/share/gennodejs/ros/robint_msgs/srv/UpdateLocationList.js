// Auto-generated. Do not edit!

// (in-package robint_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Location = require('../msg/Location.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateLocationListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_uuid = null;
      this.location_mode = null;
      this.location_list = null;
    }
    else {
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
      if (initObj.hasOwnProperty('location_mode')) {
        this.location_mode = initObj.location_mode
      }
      else {
        this.location_mode = 0;
      }
      if (initObj.hasOwnProperty('location_list')) {
        this.location_list = initObj.location_list
      }
      else {
        this.location_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateLocationListRequest
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [location_mode]
    bufferOffset = _serializer.uint8(obj.location_mode, buffer, bufferOffset);
    // Serialize message field [location_list]
    // Serialize the length for message field [location_list]
    bufferOffset = _serializer.uint32(obj.location_list.length, buffer, bufferOffset);
    obj.location_list.forEach((val) => {
      bufferOffset = Location.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateLocationListRequest
    let len;
    let data = new UpdateLocationListRequest(null);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [location_mode]
    data.location_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [location_list]
    // Deserialize array length for message field [location_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.location_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.location_list[i] = Location.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.map_uuid);
    object.location_list.forEach((val) => {
      length += Location.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/UpdateLocationListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc2051b8cef18b42756f532274541388';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string map_uuid
    uint8 location_mode
    uint8 WORLD=0
    uint8 IMAGE=1
    Location[] location_list
    
    ================================================================================
    MSG: robint_msgs/Location
    time timestamp
    string map_name
    string map_uuid
    string location_uuid
    string type_name
    string group_uuid
    string location_name
    geometry_msgs/Pose2D image_pose
    geometry_msgs/PoseStamped pose
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
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
    const resolved = new UpdateLocationListRequest(null);
    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    if (msg.location_mode !== undefined) {
      resolved.location_mode = msg.location_mode;
    }
    else {
      resolved.location_mode = 0
    }

    if (msg.location_list !== undefined) {
      resolved.location_list = new Array(msg.location_list.length);
      for (let i = 0; i < resolved.location_list.length; ++i) {
        resolved.location_list[i] = Location.Resolve(msg.location_list[i]);
      }
    }
    else {
      resolved.location_list = []
    }

    return resolved;
    }
};

// Constants for message
UpdateLocationListRequest.Constants = {
  WORLD: 0,
  IMAGE: 1,
}

class UpdateLocationListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.error_code = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateLocationListResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint8(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateLocationListResponse
    let len;
    let data = new UpdateLocationListResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robint_msgs/UpdateLocationListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e64e855da06d239f5ca2100b107659ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    uint8 error_code
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateLocationListResponse(null);
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
  Request: UpdateLocationListRequest,
  Response: UpdateLocationListResponse,
  md5sum() { return 'db5536b5ff3cfe2e4559b7715d48a2fe'; },
  datatype() { return 'robint_msgs/UpdateLocationList'; }
};
