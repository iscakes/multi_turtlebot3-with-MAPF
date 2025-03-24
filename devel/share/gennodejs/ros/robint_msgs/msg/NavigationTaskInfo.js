// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GateInfo = require('./GateInfo.js');
let IsolatedZone = require('./IsolatedZone.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NavigationTaskInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_map_uuid = null;
      this.elevator_building_uuid = null;
      this.current_floor_id = null;
      this.target_map_uuid = null;
      this.target_floor_id = null;
      this.target_loc_uuid = null;
      this.target_loc_group_uuid = null;
      this.enter_elevator_loc_uuid = null;
      this.current_elevator_interior_loc_uuid = null;
      this.target_elevator_interior_loc_uuid = null;
      this.elevator_wait_loc_uuid = null;
      this.current_exit_elevator_loc_uuid = null;
      this.target_exit_elevator_loc_uuid = null;
      this.dock_anchor_pose = null;
      this.current_floor_gates = null;
      this.target_floor_gates = null;
      this.current_floor_isolated_zones = null;
      this.target_floor_isolated_zones = null;
    }
    else {
      if (initObj.hasOwnProperty('current_map_uuid')) {
        this.current_map_uuid = initObj.current_map_uuid
      }
      else {
        this.current_map_uuid = '';
      }
      if (initObj.hasOwnProperty('elevator_building_uuid')) {
        this.elevator_building_uuid = initObj.elevator_building_uuid
      }
      else {
        this.elevator_building_uuid = '';
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
      if (initObj.hasOwnProperty('target_floor_id')) {
        this.target_floor_id = initObj.target_floor_id
      }
      else {
        this.target_floor_id = '';
      }
      if (initObj.hasOwnProperty('target_loc_uuid')) {
        this.target_loc_uuid = initObj.target_loc_uuid
      }
      else {
        this.target_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('target_loc_group_uuid')) {
        this.target_loc_group_uuid = initObj.target_loc_group_uuid
      }
      else {
        this.target_loc_group_uuid = '';
      }
      if (initObj.hasOwnProperty('enter_elevator_loc_uuid')) {
        this.enter_elevator_loc_uuid = initObj.enter_elevator_loc_uuid
      }
      else {
        this.enter_elevator_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('current_elevator_interior_loc_uuid')) {
        this.current_elevator_interior_loc_uuid = initObj.current_elevator_interior_loc_uuid
      }
      else {
        this.current_elevator_interior_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('target_elevator_interior_loc_uuid')) {
        this.target_elevator_interior_loc_uuid = initObj.target_elevator_interior_loc_uuid
      }
      else {
        this.target_elevator_interior_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('elevator_wait_loc_uuid')) {
        this.elevator_wait_loc_uuid = initObj.elevator_wait_loc_uuid
      }
      else {
        this.elevator_wait_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('current_exit_elevator_loc_uuid')) {
        this.current_exit_elevator_loc_uuid = initObj.current_exit_elevator_loc_uuid
      }
      else {
        this.current_exit_elevator_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('target_exit_elevator_loc_uuid')) {
        this.target_exit_elevator_loc_uuid = initObj.target_exit_elevator_loc_uuid
      }
      else {
        this.target_exit_elevator_loc_uuid = '';
      }
      if (initObj.hasOwnProperty('dock_anchor_pose')) {
        this.dock_anchor_pose = initObj.dock_anchor_pose
      }
      else {
        this.dock_anchor_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('current_floor_gates')) {
        this.current_floor_gates = initObj.current_floor_gates
      }
      else {
        this.current_floor_gates = [];
      }
      if (initObj.hasOwnProperty('target_floor_gates')) {
        this.target_floor_gates = initObj.target_floor_gates
      }
      else {
        this.target_floor_gates = [];
      }
      if (initObj.hasOwnProperty('current_floor_isolated_zones')) {
        this.current_floor_isolated_zones = initObj.current_floor_isolated_zones
      }
      else {
        this.current_floor_isolated_zones = [];
      }
      if (initObj.hasOwnProperty('target_floor_isolated_zones')) {
        this.target_floor_isolated_zones = initObj.target_floor_isolated_zones
      }
      else {
        this.target_floor_isolated_zones = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationTaskInfo
    // Serialize message field [current_map_uuid]
    bufferOffset = _serializer.string(obj.current_map_uuid, buffer, bufferOffset);
    // Serialize message field [elevator_building_uuid]
    bufferOffset = _serializer.string(obj.elevator_building_uuid, buffer, bufferOffset);
    // Serialize message field [current_floor_id]
    bufferOffset = _serializer.string(obj.current_floor_id, buffer, bufferOffset);
    // Serialize message field [target_map_uuid]
    bufferOffset = _serializer.string(obj.target_map_uuid, buffer, bufferOffset);
    // Serialize message field [target_floor_id]
    bufferOffset = _serializer.string(obj.target_floor_id, buffer, bufferOffset);
    // Serialize message field [target_loc_uuid]
    bufferOffset = _serializer.string(obj.target_loc_uuid, buffer, bufferOffset);
    // Serialize message field [target_loc_group_uuid]
    bufferOffset = _serializer.string(obj.target_loc_group_uuid, buffer, bufferOffset);
    // Serialize message field [enter_elevator_loc_uuid]
    bufferOffset = _serializer.string(obj.enter_elevator_loc_uuid, buffer, bufferOffset);
    // Serialize message field [current_elevator_interior_loc_uuid]
    bufferOffset = _serializer.string(obj.current_elevator_interior_loc_uuid, buffer, bufferOffset);
    // Serialize message field [target_elevator_interior_loc_uuid]
    bufferOffset = _serializer.string(obj.target_elevator_interior_loc_uuid, buffer, bufferOffset);
    // Serialize message field [elevator_wait_loc_uuid]
    bufferOffset = _serializer.string(obj.elevator_wait_loc_uuid, buffer, bufferOffset);
    // Serialize message field [current_exit_elevator_loc_uuid]
    bufferOffset = _serializer.string(obj.current_exit_elevator_loc_uuid, buffer, bufferOffset);
    // Serialize message field [target_exit_elevator_loc_uuid]
    bufferOffset = _serializer.string(obj.target_exit_elevator_loc_uuid, buffer, bufferOffset);
    // Serialize message field [dock_anchor_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.dock_anchor_pose, buffer, bufferOffset);
    // Serialize message field [current_floor_gates]
    // Serialize the length for message field [current_floor_gates]
    bufferOffset = _serializer.uint32(obj.current_floor_gates.length, buffer, bufferOffset);
    obj.current_floor_gates.forEach((val) => {
      bufferOffset = GateInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [target_floor_gates]
    // Serialize the length for message field [target_floor_gates]
    bufferOffset = _serializer.uint32(obj.target_floor_gates.length, buffer, bufferOffset);
    obj.target_floor_gates.forEach((val) => {
      bufferOffset = GateInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [current_floor_isolated_zones]
    // Serialize the length for message field [current_floor_isolated_zones]
    bufferOffset = _serializer.uint32(obj.current_floor_isolated_zones.length, buffer, bufferOffset);
    obj.current_floor_isolated_zones.forEach((val) => {
      bufferOffset = IsolatedZone.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [target_floor_isolated_zones]
    // Serialize the length for message field [target_floor_isolated_zones]
    bufferOffset = _serializer.uint32(obj.target_floor_isolated_zones.length, buffer, bufferOffset);
    obj.target_floor_isolated_zones.forEach((val) => {
      bufferOffset = IsolatedZone.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationTaskInfo
    let len;
    let data = new NavigationTaskInfo(null);
    // Deserialize message field [current_map_uuid]
    data.current_map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [elevator_building_uuid]
    data.elevator_building_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_floor_id]
    data.current_floor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_map_uuid]
    data.target_map_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_floor_id]
    data.target_floor_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_loc_uuid]
    data.target_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_loc_group_uuid]
    data.target_loc_group_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enter_elevator_loc_uuid]
    data.enter_elevator_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_elevator_interior_loc_uuid]
    data.current_elevator_interior_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_elevator_interior_loc_uuid]
    data.target_elevator_interior_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [elevator_wait_loc_uuid]
    data.elevator_wait_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_exit_elevator_loc_uuid]
    data.current_exit_elevator_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_exit_elevator_loc_uuid]
    data.target_exit_elevator_loc_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dock_anchor_pose]
    data.dock_anchor_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_floor_gates]
    // Deserialize array length for message field [current_floor_gates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.current_floor_gates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.current_floor_gates[i] = GateInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [target_floor_gates]
    // Deserialize array length for message field [target_floor_gates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.target_floor_gates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.target_floor_gates[i] = GateInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [current_floor_isolated_zones]
    // Deserialize array length for message field [current_floor_isolated_zones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.current_floor_isolated_zones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.current_floor_isolated_zones[i] = IsolatedZone.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [target_floor_isolated_zones]
    // Deserialize array length for message field [target_floor_isolated_zones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.target_floor_isolated_zones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.target_floor_isolated_zones[i] = IsolatedZone.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.current_map_uuid);
    length += _getByteLength(object.elevator_building_uuid);
    length += _getByteLength(object.current_floor_id);
    length += _getByteLength(object.target_map_uuid);
    length += _getByteLength(object.target_floor_id);
    length += _getByteLength(object.target_loc_uuid);
    length += _getByteLength(object.target_loc_group_uuid);
    length += _getByteLength(object.enter_elevator_loc_uuid);
    length += _getByteLength(object.current_elevator_interior_loc_uuid);
    length += _getByteLength(object.target_elevator_interior_loc_uuid);
    length += _getByteLength(object.elevator_wait_loc_uuid);
    length += _getByteLength(object.current_exit_elevator_loc_uuid);
    length += _getByteLength(object.target_exit_elevator_loc_uuid);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.dock_anchor_pose);
    object.current_floor_gates.forEach((val) => {
      length += GateInfo.getMessageSize(val);
    });
    object.target_floor_gates.forEach((val) => {
      length += GateInfo.getMessageSize(val);
    });
    object.current_floor_isolated_zones.forEach((val) => {
      length += IsolatedZone.getMessageSize(val);
    });
    object.target_floor_isolated_zones.forEach((val) => {
      length += IsolatedZone.getMessageSize(val);
    });
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/NavigationTaskInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f44628125c7d26f45ef57fabf8e88cc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string current_map_uuid
    string elevator_building_uuid
    string current_floor_id
    string target_map_uuid
    string target_floor_id
    string target_loc_uuid
    string target_loc_group_uuid
    string enter_elevator_loc_uuid
    string current_elevator_interior_loc_uuid
    string target_elevator_interior_loc_uuid
    string elevator_wait_loc_uuid
    string current_exit_elevator_loc_uuid
    string target_exit_elevator_loc_uuid
    geometry_msgs/PoseStamped dock_anchor_pose
    GateInfo[] current_floor_gates
    GateInfo[] target_floor_gates
    IsolatedZone[] current_floor_isolated_zones
    IsolatedZone[] target_floor_isolated_zones
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
    
    ================================================================================
    MSG: robint_msgs/GateInfo
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
    MSG: robint_msgs/IsolatedZone
    Zone zone
    IsolatedWait[] wait_points
    string next_task
    ================================================================================
    MSG: robint_msgs/Zone
    string uuid
    string name
    string map_uuid
    string group_uuid
    string type
    geometry_msgs/Point[] points
    ================================================================================
    MSG: robint_msgs/IsolatedWait
    geometry_msgs/Pose pose
    string uuid
    bool direct
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigationTaskInfo(null);
    if (msg.current_map_uuid !== undefined) {
      resolved.current_map_uuid = msg.current_map_uuid;
    }
    else {
      resolved.current_map_uuid = ''
    }

    if (msg.elevator_building_uuid !== undefined) {
      resolved.elevator_building_uuid = msg.elevator_building_uuid;
    }
    else {
      resolved.elevator_building_uuid = ''
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

    if (msg.target_floor_id !== undefined) {
      resolved.target_floor_id = msg.target_floor_id;
    }
    else {
      resolved.target_floor_id = ''
    }

    if (msg.target_loc_uuid !== undefined) {
      resolved.target_loc_uuid = msg.target_loc_uuid;
    }
    else {
      resolved.target_loc_uuid = ''
    }

    if (msg.target_loc_group_uuid !== undefined) {
      resolved.target_loc_group_uuid = msg.target_loc_group_uuid;
    }
    else {
      resolved.target_loc_group_uuid = ''
    }

    if (msg.enter_elevator_loc_uuid !== undefined) {
      resolved.enter_elevator_loc_uuid = msg.enter_elevator_loc_uuid;
    }
    else {
      resolved.enter_elevator_loc_uuid = ''
    }

    if (msg.current_elevator_interior_loc_uuid !== undefined) {
      resolved.current_elevator_interior_loc_uuid = msg.current_elevator_interior_loc_uuid;
    }
    else {
      resolved.current_elevator_interior_loc_uuid = ''
    }

    if (msg.target_elevator_interior_loc_uuid !== undefined) {
      resolved.target_elevator_interior_loc_uuid = msg.target_elevator_interior_loc_uuid;
    }
    else {
      resolved.target_elevator_interior_loc_uuid = ''
    }

    if (msg.elevator_wait_loc_uuid !== undefined) {
      resolved.elevator_wait_loc_uuid = msg.elevator_wait_loc_uuid;
    }
    else {
      resolved.elevator_wait_loc_uuid = ''
    }

    if (msg.current_exit_elevator_loc_uuid !== undefined) {
      resolved.current_exit_elevator_loc_uuid = msg.current_exit_elevator_loc_uuid;
    }
    else {
      resolved.current_exit_elevator_loc_uuid = ''
    }

    if (msg.target_exit_elevator_loc_uuid !== undefined) {
      resolved.target_exit_elevator_loc_uuid = msg.target_exit_elevator_loc_uuid;
    }
    else {
      resolved.target_exit_elevator_loc_uuid = ''
    }

    if (msg.dock_anchor_pose !== undefined) {
      resolved.dock_anchor_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.dock_anchor_pose)
    }
    else {
      resolved.dock_anchor_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.current_floor_gates !== undefined) {
      resolved.current_floor_gates = new Array(msg.current_floor_gates.length);
      for (let i = 0; i < resolved.current_floor_gates.length; ++i) {
        resolved.current_floor_gates[i] = GateInfo.Resolve(msg.current_floor_gates[i]);
      }
    }
    else {
      resolved.current_floor_gates = []
    }

    if (msg.target_floor_gates !== undefined) {
      resolved.target_floor_gates = new Array(msg.target_floor_gates.length);
      for (let i = 0; i < resolved.target_floor_gates.length; ++i) {
        resolved.target_floor_gates[i] = GateInfo.Resolve(msg.target_floor_gates[i]);
      }
    }
    else {
      resolved.target_floor_gates = []
    }

    if (msg.current_floor_isolated_zones !== undefined) {
      resolved.current_floor_isolated_zones = new Array(msg.current_floor_isolated_zones.length);
      for (let i = 0; i < resolved.current_floor_isolated_zones.length; ++i) {
        resolved.current_floor_isolated_zones[i] = IsolatedZone.Resolve(msg.current_floor_isolated_zones[i]);
      }
    }
    else {
      resolved.current_floor_isolated_zones = []
    }

    if (msg.target_floor_isolated_zones !== undefined) {
      resolved.target_floor_isolated_zones = new Array(msg.target_floor_isolated_zones.length);
      for (let i = 0; i < resolved.target_floor_isolated_zones.length; ++i) {
        resolved.target_floor_isolated_zones[i] = IsolatedZone.Resolve(msg.target_floor_isolated_zones[i]);
      }
    }
    else {
      resolved.target_floor_isolated_zones = []
    }

    return resolved;
    }
};

module.exports = NavigationTaskInfo;
