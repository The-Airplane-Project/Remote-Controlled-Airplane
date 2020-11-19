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

class Controller_Internals {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.theta_c = null;
      this.phi_c = null;
      this.alt_zone = null;
      this.aux = null;
      this.aux_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('theta_c')) {
        this.theta_c = initObj.theta_c
      }
      else {
        this.theta_c = 0.0;
      }
      if (initObj.hasOwnProperty('phi_c')) {
        this.phi_c = initObj.phi_c
      }
      else {
        this.phi_c = 0.0;
      }
      if (initObj.hasOwnProperty('alt_zone')) {
        this.alt_zone = initObj.alt_zone
      }
      else {
        this.alt_zone = 0;
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
    // Serializes a message object of type Controller_Internals
    // Serialize message field [theta_c]
    bufferOffset = _serializer.float32(obj.theta_c, buffer, bufferOffset);
    // Serialize message field [phi_c]
    bufferOffset = _serializer.float32(obj.phi_c, buffer, bufferOffset);
    // Serialize message field [alt_zone]
    bufferOffset = _serializer.uint8(obj.alt_zone, buffer, bufferOffset);
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
    //deserializes a message object of type Controller_Internals
    let len;
    let data = new Controller_Internals(null);
    // Deserialize message field [theta_c]
    data.theta_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phi_c]
    data.phi_c = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt_zone]
    data.alt_zone = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [aux]
    data.aux = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [aux_valid]
    data.aux_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosplane_msgs/Controller_Internals';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d7fa61846cd31497d4b102451fa214b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Controller internals (inner loops, states) output from the autopilot controller, for now just for debuging and ploting
    
    # @warning theta_c, phi_c and alt_zone have always to be valid, the aux array is optional
    float32 theta_c		# Commanded pitch (rad)
    float32 phi_c		# Commanded roll (rad)
    uint8 alt_zone		# Zone in the altitude state machine
    float32[4] aux		# Optional auxiliary commands
    bool aux_valid		# Auxiliary commands valid
    
    uint8 ZONE_TAKE_OFF = 0
    uint8 ZONE_CLIMB = 1
    uint8 ZONE_DESEND = 2
    uint8 ZONE_ALTITUDE_HOLD = 3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Controller_Internals(null);
    if (msg.theta_c !== undefined) {
      resolved.theta_c = msg.theta_c;
    }
    else {
      resolved.theta_c = 0.0
    }

    if (msg.phi_c !== undefined) {
      resolved.phi_c = msg.phi_c;
    }
    else {
      resolved.phi_c = 0.0
    }

    if (msg.alt_zone !== undefined) {
      resolved.alt_zone = msg.alt_zone;
    }
    else {
      resolved.alt_zone = 0
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

// Constants for message
Controller_Internals.Constants = {
  ZONE_TAKE_OFF: 0,
  ZONE_CLIMB: 1,
  ZONE_DESEND: 2,
  ZONE_ALTITUDE_HOLD: 3,
}

module.exports = Controller_Internals;
