// Auto-generated. Do not edit!

// (in-package mapf_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class SinglePlan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_step = null;
      this.plan = null;
    }
    else {
      if (initObj.hasOwnProperty('time_step')) {
        this.time_step = initObj.time_step
      }
      else {
        this.time_step = [];
      }
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SinglePlan
    // Serialize message field [time_step]
    bufferOffset = _arraySerializer.int32(obj.time_step, buffer, bufferOffset, null);
    // Serialize message field [plan]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SinglePlan
    let len;
    let data = new SinglePlan(null);
    // Deserialize message field [time_step]
    data.time_step = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [plan]
    data.plan = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.time_step.length;
    length += nav_msgs.msg.Path.getMessageSize(object.plan);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mapf_msgs/SinglePlan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bee8d3f33f362001a6964a4d3ecc61ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SinglePlan(null);
    if (msg.time_step !== undefined) {
      resolved.time_step = msg.time_step;
    }
    else {
      resolved.time_step = []
    }

    if (msg.plan !== undefined) {
      resolved.plan = nav_msgs.msg.Path.Resolve(msg.plan)
    }
    else {
      resolved.plan = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

module.exports = SinglePlan;
