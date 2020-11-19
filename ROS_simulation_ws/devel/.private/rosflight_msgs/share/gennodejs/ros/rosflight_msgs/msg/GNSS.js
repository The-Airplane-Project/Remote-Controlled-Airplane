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

class GNSS {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fix = null;
      this.time = null;
      this.position = null;
      this.horizontal_accuracy = null;
      this.vertical_accuracy = null;
      this.velocity = null;
      this.speed_accuracy = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fix')) {
        this.fix = initObj.fix
      }
      else {
        this.fix = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('horizontal_accuracy')) {
        this.horizontal_accuracy = initObj.horizontal_accuracy
      }
      else {
        this.horizontal_accuracy = 0.0;
      }
      if (initObj.hasOwnProperty('vertical_accuracy')) {
        this.vertical_accuracy = initObj.vertical_accuracy
      }
      else {
        this.vertical_accuracy = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('speed_accuracy')) {
        this.speed_accuracy = initObj.speed_accuracy
      }
      else {
        this.speed_accuracy = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GNSS
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fix]
    bufferOffset = _serializer.uint8(obj.fix, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 3) {
      throw new Error('Unable to serialize array field position - length must be 3')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, 3);
    // Serialize message field [horizontal_accuracy]
    bufferOffset = _serializer.float64(obj.horizontal_accuracy, buffer, bufferOffset);
    // Serialize message field [vertical_accuracy]
    bufferOffset = _serializer.float64(obj.vertical_accuracy, buffer, bufferOffset);
    // Check that the constant length array field [velocity] has the right length
    if (obj.velocity.length !== 3) {
      throw new Error('Unable to serialize array field velocity - length must be 3')
    }
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, 3);
    // Serialize message field [speed_accuracy]
    bufferOffset = _serializer.float64(obj.speed_accuracy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GNSS
    let len;
    let data = new GNSS(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fix]
    data.fix = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [horizontal_accuracy]
    data.horizontal_accuracy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vertical_accuracy]
    data.vertical_accuracy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [speed_accuracy]
    data.speed_accuracy = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 81;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosflight_msgs/GNSS';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce071f3e09875340cd897d6a0fd5714f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header # Estimated ROS time at moment of measurement
    uint8 fix # fix type, enums defined below
    time time # GPS time at moment of measurement
    float64[3] position # m, ECEF frame
    float64 horizontal_accuracy # m
    float64 vertical_accuracy # m
    float64[3] velocity # m/s, ECEF frame
    float64 speed_accuracy # m/s
    
    uint8 FIX_TYPE_NO_FIX = 0 
    uint8 FIX_TYPE_FIX = 1
    uint8 FIX_TYPE_RTK_FLOAT = 2
    uint8 FIX_TYPE_RTK_FIXED = 3 
    
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
    const resolved = new GNSS(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fix !== undefined) {
      resolved.fix = msg.fix;
    }
    else {
      resolved.fix = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(3).fill(0)
    }

    if (msg.horizontal_accuracy !== undefined) {
      resolved.horizontal_accuracy = msg.horizontal_accuracy;
    }
    else {
      resolved.horizontal_accuracy = 0.0
    }

    if (msg.vertical_accuracy !== undefined) {
      resolved.vertical_accuracy = msg.vertical_accuracy;
    }
    else {
      resolved.vertical_accuracy = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = new Array(3).fill(0)
    }

    if (msg.speed_accuracy !== undefined) {
      resolved.speed_accuracy = msg.speed_accuracy;
    }
    else {
      resolved.speed_accuracy = 0.0
    }

    return resolved;
    }
};

// Constants for message
GNSS.Constants = {
  FIX_TYPE_NO_FIX: 0,
  FIX_TYPE_FIX: 1,
  FIX_TYPE_RTK_FLOAT: 2,
  FIX_TYPE_RTK_FIXED: 3,
}

module.exports = GNSS;
