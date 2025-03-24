// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Location = require('./Location.js');

//-----------------------------------------------------------

class GateInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gate_uuid = null;
      this.gate_name = null;
      this.enter_loc = null;
      this.exit_loc = null;
    }
    else {
      if (initObj.hasOwnProperty('gate_uuid')) {
        this.gate_uuid = initObj.gate_uuid
      }
      else {
        this.gate_uuid = '';
      }
      if (initObj.hasOwnProperty('gate_name')) {
        this.gate_name = initObj.gate_name
      }
      else {
        this.gate_name = '';
      }
      if (initObj.hasOwnProperty('enter_loc')) {
        this.enter_loc = initObj.enter_loc
      }
      else {
        this.enter_loc = new Location();
      }
      if (initObj.hasOwnProperty('exit_loc')) {
        this.exit_loc = initObj.exit_loc
      }
      else {
        this.exit_loc = new Location();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GateInfo
    // Serialize message field [gate_uuid]
    bufferOffset = _serializer.string(obj.gate_uuid, buffer, bufferOffset);
    // Serialize message field [gate_name]
    bufferOffset = _serializer.string(obj.gate_name, buffer, bufferOffset);
    // Serialize message field [enter_loc]
    bufferOffset = Location.serialize(obj.enter_loc, buffer, bufferOffset);
    // Serialize message field [exit_loc]
    bufferOffset = Location.serialize(obj.exit_loc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GateInfo
    let len;
    let data = new GateInfo(null);
    // Deserialize message field [gate_uuid]
    data.gate_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gate_name]
    data.gate_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enter_loc]
    data.enter_loc = Location.deserialize(buffer, bufferOffset);
    // Deserialize message field [exit_loc]
    data.exit_loc = Location.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.gate_uuid);
    length += _getByteLength(object.gate_name);
    length += Location.getMessageSize(object.enter_loc);
    length += Location.getMessageSize(object.exit_loc);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/GateInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f859c70d9c22112208cc2c6f33723b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string gate_uuid
    string gate_name
    Location enter_loc
    Location exit_loc
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
    const resolved = new GateInfo(null);
    if (msg.gate_uuid !== undefined) {
      resolved.gate_uuid = msg.gate_uuid;
    }
    else {
      resolved.gate_uuid = ''
    }

    if (msg.gate_name !== undefined) {
      resolved.gate_name = msg.gate_name;
    }
    else {
      resolved.gate_name = ''
    }

    if (msg.enter_loc !== undefined) {
      resolved.enter_loc = Location.Resolve(msg.enter_loc)
    }
    else {
      resolved.enter_loc = new Location()
    }

    if (msg.exit_loc !== undefined) {
      resolved.exit_loc = Location.Resolve(msg.exit_loc)
    }
    else {
      resolved.exit_loc = new Location()
    }

    return resolved;
    }
};

module.exports = GateInfo;
