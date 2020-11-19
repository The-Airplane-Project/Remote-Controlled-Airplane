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

class Waypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.w = null;
      this.chi_d = null;
      this.chi_valid = null;
      this.Va_d = null;
      this.set_current = null;
      this.clear_wp_list = null;
    }
    else {
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('chi_d')) {
        this.chi_d = initObj.chi_d
      }
      else {
        this.chi_d = 0.0;
      }
      if (initObj.hasOwnProperty('chi_valid')) {
        this.chi_valid = initObj.chi_valid
      }
      else {
        this.chi_valid = false;
      }
      if (initObj.hasOwnProperty('Va_d')) {
        this.Va_d = initObj.Va_d
      }
      else {
        this.Va_d = 0.0;
      }
      if (initObj.hasOwnProperty('set_current')) {
        this.set_current = initObj.set_current
      }
      else {
        this.set_current = false;
      }
      if (initObj.hasOwnProperty('clear_wp_list')) {
        this.clear_wp_list = initObj.clear_wp_list
      }
      else {
        this.clear_wp_list = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Waypoint
    // Check that the constant length array field [w] has the right length
    if (obj.w.length !== 3) {
      throw new Error('Unable to serialize array field w - length must be 3')
    }
    // Serialize message field [w]
    bufferOffset = _arraySerializer.float32(obj.w, buffer, bufferOffset, 3);
    // Serialize message field [chi_d]
    bufferOffset = _serializer.float32(obj.chi_d, buffer, bufferOffset);
    // Serialize message field [chi_valid]
    bufferOffset = _serializer.bool(obj.chi_valid, buffer, bufferOffset);
    // Serialize message field [Va_d]
    bufferOffset = _serializer.float32(obj.Va_d, buffer, bufferOffset);
    // Serialize message field [set_current]
    bufferOffset = _serializer.bool(obj.set_current, buffer, bufferOffset);
    // Serialize message field [clear_wp_list]
    bufferOffset = _serializer.bool(obj.clear_wp_list, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Waypoint
    let len;
    let data = new Waypoint(null);
    // Deserialize message field [w]
    data.w = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [chi_d]
    data.chi_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chi_valid]
    data.chi_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Va_d]
    data.Va_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [set_current]
    data.set_current = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clear_wp_list]
    data.clear_wp_list = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosplane_msgs/Waypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f0d6b83780495e80e302dd0005e1bee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # New waypoint, input to path manager
    
    # @warning w and Va_d always have to be valid; the chi_d is optional.
    float32[3] w		# Waypoint in local NED (m)
    float32 chi_d		# Desired course at this waypoint (rad)
    bool chi_valid		# Desired course valid (dubin or fillet paths)
    float32 Va_d		# Desired airspeed (m/s)
    bool set_current	# Sets this waypoint to be executed now! Starts a new list
    bool clear_wp_list  # Removes all waypoints and returns to origin.  The rest of
                        # this message will be ignored
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Waypoint(null);
    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = new Array(3).fill(0)
    }

    if (msg.chi_d !== undefined) {
      resolved.chi_d = msg.chi_d;
    }
    else {
      resolved.chi_d = 0.0
    }

    if (msg.chi_valid !== undefined) {
      resolved.chi_valid = msg.chi_valid;
    }
    else {
      resolved.chi_valid = false
    }

    if (msg.Va_d !== undefined) {
      resolved.Va_d = msg.Va_d;
    }
    else {
      resolved.Va_d = 0.0
    }

    if (msg.set_current !== undefined) {
      resolved.set_current = msg.set_current;
    }
    else {
      resolved.set_current = false
    }

    if (msg.clear_wp_list !== undefined) {
      resolved.clear_wp_list = msg.clear_wp_list;
    }
    else {
      resolved.clear_wp_list = false
    }

    return resolved;
    }
};

module.exports = Waypoint;
