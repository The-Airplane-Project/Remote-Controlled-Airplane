// Auto-generated. Do not edit!

// (in-package rosflight_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.ignore = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.F = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('ignore')) {
        this.ignore = initObj.ignore
      }
      else {
        this.ignore = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('F')) {
        this.F = initObj.F
      }
      else {
        this.F = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [ignore]
    bufferOffset = _serializer.uint8(obj.ignore, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [F]
    bufferOffset = _serializer.float32(obj.F, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ignore]
    data.ignore = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [F]
    data.F = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosflight_msgs/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ccd6b6ac2f57a7aa47a3c8ac1a0b174';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Offboard control command message
    
    # control mode flags
    uint8 MODE_PASS_THROUGH = 0
    uint8 MODE_ROLLRATE_PITCHRATE_YAWRATE_THROTTLE = 1
    uint8 MODE_ROLL_PITCH_YAWRATE_THROTTLE = 2
    uint8 MODE_ROLL_PITCH_YAWRATE_ALTITUDE = 3
    uint8 MODE_XPOS_YPOS_YAW_ALTITUDE = 4
    uint8 MODE_XVEL_YVEL_YAWRATE_ALTITUDE = 5
    uint8 MODE_XACC_YACC_YAWRATE_AZ = 6
    
    # ignore field bitmasks
    uint8 IGNORE_NONE = 0
    uint8 IGNORE_X = 1
    uint8 IGNORE_Y = 2
    uint8 IGNORE_Z = 4
    uint8 IGNORE_F = 8
    
    Header header
    uint8 mode # offboard control mode for interpreting value fields
    uint8 ignore # bitmask for ignore specific setpoint values
    float32 x
    float32 y
    float32 z
    float32 F
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Command(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.ignore !== undefined) {
      resolved.ignore = msg.ignore;
    }
    else {
      resolved.ignore = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.F !== undefined) {
      resolved.F = msg.F;
    }
    else {
      resolved.F = 0.0
    }

    return resolved;
    }
};

// Constants for message
Command.Constants = {
  MODE_PASS_THROUGH: 0,
  MODE_ROLLRATE_PITCHRATE_YAWRATE_THROTTLE: 1,
  MODE_ROLL_PITCH_YAWRATE_THROTTLE: 2,
  MODE_ROLL_PITCH_YAWRATE_ALTITUDE: 3,
  MODE_XPOS_YPOS_YAW_ALTITUDE: 4,
  MODE_XVEL_YVEL_YAWRATE_ALTITUDE: 5,
  MODE_XACC_YACC_YAWRATE_AZ: 6,
  IGNORE_NONE: 0,
  IGNORE_X: 1,
  IGNORE_Y: 2,
  IGNORE_Z: 4,
  IGNORE_F: 8,
}

module.exports = Command;
