// Auto-generated. Do not edit!

// (in-package robint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ErrorCode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ErrorCode
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ErrorCode
    let len;
    let data = new ErrorCode(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robint_msgs/ErrorCode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45cd9bc105f86c67f47b4756c85f449a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Task Command Error Code
    uint8 NONE = 0
    uint8 ANOTHER_TASK_IS_RUNNING = 1
    uint8 CURRENT_TASK_IS_RUNNING = 2
    uint8 NO_TASK_IS_RUNNING = 3
    
    uint8 GLOBAL_PLAN_FAILURE = 11
    
    uint8 SET_MAP_FAILURE = 41
    uint8 RESET_ODOM_FAILURE = 42
    uint8 RESET_IMU_FAILURE = 43
    uint8 RESET_EKF_FAILURE = 44
    
    uint8 LOCALIZATION_ERROR = 50
    
    # AutoCharge Error Code
    uint8 LOCATION_UUID_NOT_CHARGE_BASE = 61
    uint8 CHARGE_BASE_EMPTY = 62
    uint8 DEFAULT_CHARGE_BASE_NOT_SET = 63
    
    # AutoExplore Error Code
    uint8 CHARGE_DETECTION_FAILURE = 70
    
    # Map Widget Operation Error Code
    uint8 MAP_IMAGE_FILE_NON_EXISTENT = 100
    uint8 MAP_UUID_NON_EXISTENT = 101
    uint8 MAP_UUID_NOT_CURRENT = 102
    uint8 GET_MAP_OCCUPANCY_GRID_FAILURE = 103
    uint8 LOAD_MAP_FAILURE = 104
    uint8 CURRENT_MAP_UUID_EMPTY = 105
    uint8 UUID_NON_EXISTENT = 106
    
    uint8 RECORDED_TRAJECTORY_CHECK_FAILURE = 107
    uint8 TRAJECTORY_TOO_SHORT = 108
    uint8 AREA_TOO_SMALL = 109
    uint8 POLYGON_NON_SIMPLE = 110
    uint8 POLYGON_NON_CLOSED = 111
    uint8 REQUESTED_INDEX_OUT_OF_RANGE = 112
    
    uint8 LOCATION_UUID_NON_EXISTENT = 121
    
    uint8 VIRTUALWALL_UUID_NON_EXISTENT = 141
    
    uint8 ZONE_UUID_NON_EXISTENT = 151
    uint8 CLEANING_PATH_NON_EXISTENT = 152
    
    
    uint8 ARGUMENT_ERROR = 253
    uint8 DATA_ERROR = 254
    uint8 ROS_ERROR = 255
    
    
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ErrorCode(null);
    return resolved;
    }
};

// Constants for message
ErrorCode.Constants = {
  NONE: 0,
  ANOTHER_TASK_IS_RUNNING: 1,
  CURRENT_TASK_IS_RUNNING: 2,
  NO_TASK_IS_RUNNING: 3,
  GLOBAL_PLAN_FAILURE: 11,
  SET_MAP_FAILURE: 41,
  RESET_ODOM_FAILURE: 42,
  RESET_IMU_FAILURE: 43,
  RESET_EKF_FAILURE: 44,
  LOCALIZATION_ERROR: 50,
  LOCATION_UUID_NOT_CHARGE_BASE: 61,
  CHARGE_BASE_EMPTY: 62,
  DEFAULT_CHARGE_BASE_NOT_SET: 63,
  CHARGE_DETECTION_FAILURE: 70,
  MAP_IMAGE_FILE_NON_EXISTENT: 100,
  MAP_UUID_NON_EXISTENT: 101,
  MAP_UUID_NOT_CURRENT: 102,
  GET_MAP_OCCUPANCY_GRID_FAILURE: 103,
  LOAD_MAP_FAILURE: 104,
  CURRENT_MAP_UUID_EMPTY: 105,
  UUID_NON_EXISTENT: 106,
  RECORDED_TRAJECTORY_CHECK_FAILURE: 107,
  TRAJECTORY_TOO_SHORT: 108,
  AREA_TOO_SMALL: 109,
  POLYGON_NON_SIMPLE: 110,
  POLYGON_NON_CLOSED: 111,
  REQUESTED_INDEX_OUT_OF_RANGE: 112,
  LOCATION_UUID_NON_EXISTENT: 121,
  VIRTUALWALL_UUID_NON_EXISTENT: 141,
  ZONE_UUID_NON_EXISTENT: 151,
  CLEANING_PATH_NON_EXISTENT: 152,
  ARGUMENT_ERROR: 253,
  DATA_ERROR: 254,
  ROS_ERROR: 255,
}

module.exports = ErrorCode;
