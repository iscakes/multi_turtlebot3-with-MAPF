// Auto-generated. Do not edit!

// (in-package mapf_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SinglePlan = require('./SinglePlan.js');

//-----------------------------------------------------------

class GlobalPlan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.makespan = null;
      this.global_plan = null;
    }
    else {
      if (initObj.hasOwnProperty('makespan')) {
        this.makespan = initObj.makespan
      }
      else {
        this.makespan = 0;
      }
      if (initObj.hasOwnProperty('global_plan')) {
        this.global_plan = initObj.global_plan
      }
      else {
        this.global_plan = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalPlan
    // Serialize message field [makespan]
    bufferOffset = _serializer.int32(obj.makespan, buffer, bufferOffset);
    // Serialize message field [global_plan]
    // Serialize the length for message field [global_plan]
    bufferOffset = _serializer.uint32(obj.global_plan.length, buffer, bufferOffset);
    obj.global_plan.forEach((val) => {
      bufferOffset = SinglePlan.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalPlan
    let len;
    let data = new GlobalPlan(null);
    // Deserialize message field [makespan]
    data.makespan = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [global_plan]
    // Deserialize array length for message field [global_plan]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.global_plan = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.global_plan[i] = SinglePlan.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.global_plan.forEach((val) => {
      length += SinglePlan.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mapf_msgs/GlobalPlan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c88ab17b5e8e0853d09dd659498bc3eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 makespan
    mapf_msgs/SinglePlan[] global_plan
    ================================================================================
    MSG: mapf_msgs/SinglePlan
    int32[] time_step
    nav_msgs/Path plan
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new GlobalPlan(null);
    if (msg.makespan !== undefined) {
      resolved.makespan = msg.makespan;
    }
    else {
      resolved.makespan = 0
    }

    if (msg.global_plan !== undefined) {
      resolved.global_plan = new Array(msg.global_plan.length);
      for (let i = 0; i < resolved.global_plan.length; ++i) {
        resolved.global_plan[i] = SinglePlan.Resolve(msg.global_plan[i]);
      }
    }
    else {
      resolved.global_plan = []
    }

    return resolved;
    }
};

module.exports = GlobalPlan;
