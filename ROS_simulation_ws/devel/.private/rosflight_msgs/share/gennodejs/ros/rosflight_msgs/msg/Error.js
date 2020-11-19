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

class Error {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.error_message = null;
      this.error_code = null;
      this.reset_count = null;
      this.rearm = null;
      this.pc = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('error_message')) {
        this.error_message = initObj.error_message
      }
      else {
        this.error_message = '';
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('reset_count')) {
        this.reset_count = initObj.reset_count
      }
      else {
        this.reset_count = 0;
      }
      if (initObj.hasOwnProperty('rearm')) {
        this.rearm = initObj.rearm
      }
      else {
        this.rearm = false;
      }
      if (initObj.hasOwnProperty('pc')) {
        this.pc = initObj.pc
      }
      else {
        this.pc = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Error
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [error_message]
    bufferOffset = _serializer.string(obj.error_message, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [reset_count]
    bufferOffset = _serializer.uint32(obj.reset_count, buffer, bufferOffset);
    // Serialize message field [rearm]
    bufferOffset = _serializer.bool(obj.rearm, buffer, bufferOffset);
    // Serialize message field [pc]
    bufferOffset = _serializer.uint32(obj.pc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Error
    let len;
    let data = new Error(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_message]
    data.error_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [reset_count]
    data.reset_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rearm]
    data.rearm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pc]
    data.pc = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.error_message.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosflight_msgs/Error';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54b4d1e0725009401e6c34324c30bd0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #For handling rosflight hard errors
    
    Header header
    string error_message
    uint32 error_code
    uint32 reset_count
    bool rearm
    uint32 pc
    
    
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
    const resolved = new Error(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.error_message !== undefined) {
      resolved.error_message = msg.error_message;
    }
    else {
      resolved.error_message = ''
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.reset_count !== undefined) {
      resolved.reset_count = msg.reset_count;
    }
    else {
      resolved.reset_count = 0
    }

    if (msg.rearm !== undefined) {
      resolved.rearm = msg.rearm;
    }
    else {
      resolved.rearm = false
    }

    if (msg.pc !== undefined) {
      resolved.pc = msg.pc;
    }
    else {
      resolved.pc = 0
    }

    return resolved;
    }
};

module.exports = Error;
