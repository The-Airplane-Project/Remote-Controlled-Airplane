// Auto-generated. Do not edit!

// (in-package rosplane_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Controller_Commands {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Va_c = null;
      this.h_c = null;
      this.chi_c = null;
      this.phi_ff = null;
      this.aux = null;
      this.aux_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('Va_c')) {
        this.Va_c = initObj.Va_c
      }
      else {
        this.Va_c = 0.0;
      }
      if (initObj.hasOwnProperty('h_c')) {
        this.h_c = initObj.h_c
      }
      else {
        this.h_c = 0.0;
      }
      if (initObj.hasOwnProperty('chi_c')) {
        this.chi_c = initObj.chi_c
      }
      else {
        this.chi_c = 0.0;
      }
      if (initObj.hasOwnProperty('phi_ff')) {
        this.phi_ff = initObj.phi_ff
      }
      else {
        this.phi_ff = 0.0;
      }
      if (initObj.hasOwnProperty('aux')) {
        this.aux = initObj.aux
      }
      else {
        this.aux = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('aux_valid')) {
        this.aux_valid = initObj.aux_valid
      }
      else {
        this.aux_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Controller_Commands
    // Serialize message field [Va_c]
    bufferOffset = _serializer.float32(obj.Va_c, buffer, bufferOffset);
    // Serialize message field [h_c]
    bufferOffset = _serializer.float32(obj.h_c, buffer, bufferOffset);
    // Serialize message field [chi_c]
    bufferOffset = _serializer.float32(obj.chi_c, buffer, bufferOffset);
    // Serialize message field [phi_ff]
    bufferOffset = _serializer.float32(obj.phi_ff, buffer, bufferOffset);
    // Check that the constant length array field [aux] has the right length
    if (obj.aux.length !== 4) {
      throw new Error('Unable to serialize array field aux - length must be 4')
    }
    // Serialize message field [aux]
    bufferOffset = _arraySerializer.float32(obj.aux, buffer, bufferOffset, 4);
    // Serialize message field [aux_valid]
    bufferOffset = _serializer.bool(obj.aux_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Controller_Commands
    let len;
    let data = new Controller_Commands(null);
    // Deserialize message field [Va_c]
    data.Va_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [h_c]
    data.h_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chi_c]
    data.chi_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phi_ff]
    data.phi_ff = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [aux]
    data.aux = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [aux_valid]
    data.aux_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosplane_msgs/Controller_Commands';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c42df94ede980f479b78898f3ea5e29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Controller commands output from the path follower, input to autopilot controller
    
    # @warning Va_c, h_c and chi_c have always to be valid, the aux array is optional
    float32 Va_c		# Commanded airspeed (m/s)
    float32 h_c		# Commanded altitude (m)
    float32 chi_c		# Commanded course (rad)
    float32 phi_ff		# feed forward command for orbits (rad)
    float32[4] aux		# Optional auxiliary commands
    bool aux_valid		# Auxiliary commands valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Controller_Commands(null);
    if (msg.Va_c !== undefined) {
      resolved.Va_c = msg.Va_c;
    }
    else {
      resolved.Va_c = 0.0
    }

    if (msg.h_c !== undefined) {
      resolved.h_c = msg.h_c;
    }
    else {
      resolved.h_c = 0.0
    }

    if (msg.chi_c !== undefined) {
      resolved.chi_c = msg.chi_c;
    }
    else {
      resolved.chi_c = 0.0
    }

    if (msg.phi_ff !== undefined) {
      resolved.phi_ff = msg.phi_ff;
    }
    else {
      resolved.phi_ff = 0.0
    }

    if (msg.aux !== undefined) {
      resolved.aux = msg.aux;
    }
    else {
      resolved.aux = new Array(4).fill(0)
    }

    if (msg.aux_valid !== undefined) {
      resolved.aux_valid = msg.aux_valid;
    }
    else {
      resolved.aux_valid = false
    }

    return resolved;
    }
};

module.exports = Controller_Commands;
