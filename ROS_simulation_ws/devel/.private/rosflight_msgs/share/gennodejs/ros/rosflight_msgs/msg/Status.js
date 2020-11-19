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

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.armed = null;
      this.failsafe = null;
      this.rc_override = null;
      this.offboard = null;
      this.control_mode = null;
      this.error_code = null;
      this.num_errors = null;
      this.loop_time_us = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('armed')) {
        this.armed = initObj.armed
      }
      else {
        this.armed = false;
      }
      if (initObj.hasOwnProperty('failsafe')) {
        this.failsafe = initObj.failsafe
      }
      else {
        this.failsafe = false;
      }
      if (initObj.hasOwnProperty('rc_override')) {
        this.rc_override = initObj.rc_override
      }
      else {
        this.rc_override = false;
      }
      if (initObj.hasOwnProperty('offboard')) {
        this.offboard = initObj.offboard
      }
      else {
        this.offboard = false;
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('num_errors')) {
        this.num_errors = initObj.num_errors
      }
      else {
        this.num_errors = 0;
      }
      if (initObj.hasOwnProperty('loop_time_us')) {
        this.loop_time_us = initObj.loop_time_us
      }
      else {
        this.loop_time_us = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [armed]
    bufferOffset = _serializer.bool(obj.armed, buffer, bufferOffset);
    // Serialize message field [failsafe]
    bufferOffset = _serializer.bool(obj.failsafe, buffer, bufferOffset);
    // Serialize message field [rc_override]
    bufferOffset = _serializer.bool(obj.rc_override, buffer, bufferOffset);
    // Serialize message field [offboard]
    bufferOffset = _serializer.bool(obj.offboard, buffer, bufferOffset);
    // Serialize message field [control_mode]
    bufferOffset = _serializer.int8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [num_errors]
    bufferOffset = _serializer.int16(obj.num_errors, buffer, bufferOffset);
    // Serialize message field [loop_time_us]
    bufferOffset = _serializer.int16(obj.loop_time_us, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [armed]
    data.armed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [failsafe]
    data.failsafe = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rc_override]
    data.rc_override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [offboard]
    data.offboard = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [num_errors]
    data.num_errors = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [loop_time_us]
    data.loop_time_us = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosflight_msgs/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47d8a47dbe4d0941ff4c84b89a5de11e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Flight controller status message
    
    Header header
    
    bool armed         # True if armed
    bool failsafe      # True if in failsafe
    bool rc_override   # True if RC is in control
    bool offboard      # True if offboard control is active
    int8 control_mode  # Onboard control mode
    int8 error_code    # Onboard error code
    int16 num_errors   # Number of errors
    int16 loop_time_us # Loop time in microseconds
    
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
    const resolved = new Status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.armed !== undefined) {
      resolved.armed = msg.armed;
    }
    else {
      resolved.armed = false
    }

    if (msg.failsafe !== undefined) {
      resolved.failsafe = msg.failsafe;
    }
    else {
      resolved.failsafe = false
    }

    if (msg.rc_override !== undefined) {
      resolved.rc_override = msg.rc_override;
    }
    else {
      resolved.rc_override = false
    }

    if (msg.offboard !== undefined) {
      resolved.offboard = msg.offboard;
    }
    else {
      resolved.offboard = false
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.num_errors !== undefined) {
      resolved.num_errors = msg.num_errors;
    }
    else {
      resolved.num_errors = 0
    }

    if (msg.loop_time_us !== undefined) {
      resolved.loop_time_us = msg.loop_time_us;
    }
    else {
      resolved.loop_time_us = 0
    }

    return resolved;
    }
};

module.exports = Status;
