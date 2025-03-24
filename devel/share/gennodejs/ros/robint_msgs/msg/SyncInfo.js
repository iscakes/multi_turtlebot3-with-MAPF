// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SyncInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timestamp_string = null;
      this.robot_uuid = null;
      this.robot_index = null;
      this.map_name = null;
      this.map_uuid = null;
      this.global_map_pose = null;
      this.linear_velocity = null;
      this.angular_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('timestamp_string')) {
        this.timestamp_string = initObj.timestamp_string
      }
      else {
        this.timestamp_string = '';
      }
      if (initObj.hasOwnProperty('robot_uuid')) {
        this.robot_uuid = initObj.robot_uuid
      }
      else {
        this.robot_uuid = '';
      }
      if (initObj.hasOwnProperty('robot_index')) {
        this.robot_index = initObj.robot_index
      }
      else {
        this.robot_index = '';
      }
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = '';
      }
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
      if (initObj.hasOwnProperty('global_map_pose')) {
        this.global_map_pose = initObj.global_map_pose
      }
      else {
        this.global_map_pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SyncInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timestamp_string]
    bufferOffset = _serializer.string(obj.timestamp_string, buffer, bufferOffset);
    // Serialize message field [robot_uuid]
    bufferOffset = _serializer.string(obj.robot_uuid, buffer, bufferOffset);
    // Serialize message field [robot_index]
    bufferOffset = _serializer.string(obj.robot_index, buffer, bufferOffset);
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [global_map_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.global_map_pose, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = _serializer.float32(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = _serializer.float32(obj.angular_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SyncInfo
    let len;
    let data = new SyncInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp_string]
    data.timestamp_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_uuid]
    data.robot_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_index]
    data.robot_index = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [global_map_pose]
    data.global_map_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.timestamp_string);
    length += _getByteLength(object.robot_uuid);
    length += _getByteLength(object.robot_index);
    length += _getByteLength(object.map_name);
    length += _getByteLength(object.map_uuid);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/SyncInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86b30ca069efb657cac74816610f0796';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string timestamp_string
    string robot_uuid
    string robot_index
    
    # Absorbed info
    string map_name
    string map_uuid
    geometry_msgs/Pose2D global_map_pose
    float32 linear_velocity
    float32 angular_velocity
    
    
    
    
    
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
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SyncInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.timestamp_string !== undefined) {
      resolved.timestamp_string = msg.timestamp_string;
    }
    else {
      resolved.timestamp_string = ''
    }

    if (msg.robot_uuid !== undefined) {
      resolved.robot_uuid = msg.robot_uuid;
    }
    else {
      resolved.robot_uuid = ''
    }

    if (msg.robot_index !== undefined) {
      resolved.robot_index = msg.robot_index;
    }
    else {
      resolved.robot_index = ''
    }

    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = ''
    }

    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    if (msg.global_map_pose !== undefined) {
      resolved.global_map_pose = geometry_msgs.msg.Pose2D.Resolve(msg.global_map_pose)
    }
    else {
      resolved.global_map_pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = msg.linear_velocity;
    }
    else {
      resolved.linear_velocity = 0.0
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = 0.0
    }

    return resolved;
    }
};

module.exports = SyncInfo;
