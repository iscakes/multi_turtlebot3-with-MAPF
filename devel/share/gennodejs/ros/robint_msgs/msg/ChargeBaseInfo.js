// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ChargeBaseInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location_uuid = null;
      this.location_name = null;
      this.group_uuid = null;
      this.map_uuid = null;
      this.floor_id = null;
      this.building_id = null;
      this.pose = null;
      this.anchor_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('location_uuid')) {
        this.location_uuid = initObj.location_uuid
      }
      else {
        this.location_uuid = '';
      }
      if (initObj.hasOwnProperty('location_name')) {
        this.location_name = initObj.location_name
      }
      else {
        this.location_name = '';
      }
      if (initObj.hasOwnProperty('group_uuid')) {
        this.group_uuid = initObj.group_uuid
      }
      else {
        this.group_uuid = '';
      }
      if (initObj.hasOwnProperty('map_uuid')) {
        this.map_uuid = initObj.map_uuid
      }
      else {
        this.map_uuid = '';
      }
      if (initObj.hasOwnProperty('floor_id')) {
        this.floor_id = initObj.floor_id
      }
      else {
        this.floor_id = '';
      }
      if (initObj.hasOwnProperty('building_id')) {
        this.building_id = initObj.building_id
      }
      else {
        this.building_id = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('anchor_pose')) {
        this.anchor_pose = initObj.anchor_pose
      }
      else {
        this.anchor_pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChargeBaseInfo
    // Serialize message field [location_uuid]
    bufferOffset = _serializer.string(obj.location_uuid, buffer, bufferOffset);
    // Serialize message field [location_name]
    bufferOffset = _serializer.string(obj.location_name, buffer, bufferOffset);
    // Serialize message field [group_uuid]
    bufferOffset = _serializer.string(obj.group_uuid, buffer, bufferOffset);
    // Serialize message field [map_uuid]
    bufferOffset = _serializer.string(obj.map_uuid, buffer, bufferOffset);
    // Serialize message field [floor_id]
    bufferOffset = _serializer.string(obj.floor_id, buffer, bufferOffset);
    // Serialize message field [building_id]
    bufferOffset = _serializer.string(obj.building_id, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [anchor_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.anchor_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChargeBaseInfo
    let len;
    let data = new ChargeBaseInfo(null);
    // Deserialize message field [location_uuid]
    data.location_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [location_name]
    data.location_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [group_uuid]
    data.group_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [map_uuid]
    data.map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [floor_id]
    data.floor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [building_id]
    data.building_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [anchor_pose]
    data.anchor_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.location_uuid);
    length += _getByteLength(object.location_name);
    length += _getByteLength(object.group_uuid);
    length += _getByteLength(object.map_uuid);
    length += _getByteLength(object.floor_id);
    length += _getByteLength(object.building_id);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.anchor_pose);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/ChargeBaseInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0d4cbfd1ab263fc96b403946bd97599';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ChargeBaseInfo(null);
    if (msg.location_uuid !== undefined) {
      resolved.location_uuid = msg.location_uuid;
    }
    else {
      resolved.location_uuid = ''
    }

    if (msg.location_name !== undefined) {
      resolved.location_name = msg.location_name;
    }
    else {
      resolved.location_name = ''
    }

    if (msg.group_uuid !== undefined) {
      resolved.group_uuid = msg.group_uuid;
    }
    else {
      resolved.group_uuid = ''
    }

    if (msg.map_uuid !== undefined) {
      resolved.map_uuid = msg.map_uuid;
    }
    else {
      resolved.map_uuid = ''
    }

    if (msg.floor_id !== undefined) {
      resolved.floor_id = msg.floor_id;
    }
    else {
      resolved.floor_id = ''
    }

    if (msg.building_id !== undefined) {
      resolved.building_id = msg.building_id;
    }
    else {
      resolved.building_id = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.anchor_pose !== undefined) {
      resolved.anchor_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.anchor_pose)
    }
    else {
      resolved.anchor_pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = ChargeBaseInfo;
