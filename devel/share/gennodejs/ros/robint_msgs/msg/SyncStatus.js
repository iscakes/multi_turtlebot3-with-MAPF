// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SyncInfo = require('./SyncInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SyncStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.self_uuid = null;
      this.sync_status = null;
      this.sync_info_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('self_uuid')) {
        this.self_uuid = initObj.self_uuid
      }
      else {
        this.self_uuid = '';
      }
      if (initObj.hasOwnProperty('sync_status')) {
        this.sync_status = initObj.sync_status
      }
      else {
        this.sync_status = '';
      }
      if (initObj.hasOwnProperty('sync_info_array')) {
        this.sync_info_array = initObj.sync_info_array
      }
      else {
        this.sync_info_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SyncStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [self_uuid]
    bufferOffset = _serializer.string(obj.self_uuid, buffer, bufferOffset);
    // Serialize message field [sync_status]
    bufferOffset = _serializer.string(obj.sync_status, buffer, bufferOffset);
    // Serialize message field [sync_info_array]
    // Serialize the length for message field [sync_info_array]
    bufferOffset = _serializer.uint32(obj.sync_info_array.length, buffer, bufferOffset);
    obj.sync_info_array.forEach((val) => {
      bufferOffset = SyncInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SyncStatus
    let len;
    let data = new SyncStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [self_uuid]
    data.self_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sync_status]
    data.sync_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sync_info_array]
    // Deserialize array length for message field [sync_info_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sync_info_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sync_info_array[i] = SyncInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.self_uuid);
    length += _getByteLength(object.sync_status);
    object.sync_info_array.forEach((val) => {
      length += SyncInfo.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/SyncStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d4fbf71e40475e522fea10a2de53cc3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # 本机uuid
    string self_uuid
    
    # 同步状态：opened,opening,closed,closing
    string sync_status
    
    SyncInfo[] sync_info_array
    
    
    
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
    MSG: robint_msgs/SyncInfo
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
    const resolved = new SyncStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.self_uuid !== undefined) {
      resolved.self_uuid = msg.self_uuid;
    }
    else {
      resolved.self_uuid = ''
    }

    if (msg.sync_status !== undefined) {
      resolved.sync_status = msg.sync_status;
    }
    else {
      resolved.sync_status = ''
    }

    if (msg.sync_info_array !== undefined) {
      resolved.sync_info_array = new Array(msg.sync_info_array.length);
      for (let i = 0; i < resolved.sync_info_array.length; ++i) {
        resolved.sync_info_array[i] = SyncInfo.Resolve(msg.sync_info_array[i]);
      }
    }
    else {
      resolved.sync_info_array = []
    }

    return resolved;
    }
};

module.exports = SyncStatus;
