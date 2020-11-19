// Auto-generated. Do not edit!

// (in-package rosplane_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.position = null;
      this.Va = null;
      this.alpha = null;
      this.beta = null;
      this.phi = null;
      this.theta = null;
      this.psi = null;
      this.chi = null;
      this.p = null;
      this.q = null;
      this.r = null;
      this.Vg = null;
      this.wn = null;
      this.we = null;
      this.quat = null;
      this.quat_valid = null;
      this.chi_deg = null;
      this.psi_deg = null;
      this.initial_lat = null;
      this.initial_lon = null;
      this.initial_alt = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('Va')) {
        this.Va = initObj.Va
      }
      else {
        this.Va = 0.0;
      }
      if (initObj.hasOwnProperty('alpha')) {
        this.alpha = initObj.alpha
      }
      else {
        this.alpha = 0.0;
      }
      if (initObj.hasOwnProperty('beta')) {
        this.beta = initObj.beta
      }
      else {
        this.beta = 0.0;
      }
      if (initObj.hasOwnProperty('phi')) {
        this.phi = initObj.phi
      }
      else {
        this.phi = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('psi')) {
        this.psi = initObj.psi
      }
      else {
        this.psi = 0.0;
      }
      if (initObj.hasOwnProperty('chi')) {
        this.chi = initObj.chi
      }
      else {
        this.chi = 0.0;
      }
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = 0.0;
      }
      if (initObj.hasOwnProperty('q')) {
        this.q = initObj.q
      }
      else {
        this.q = 0.0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
      }
      if (initObj.hasOwnProperty('Vg')) {
        this.Vg = initObj.Vg
      }
      else {
        this.Vg = 0.0;
      }
      if (initObj.hasOwnProperty('wn')) {
        this.wn = initObj.wn
      }
      else {
        this.wn = 0.0;
      }
      if (initObj.hasOwnProperty('we')) {
        this.we = initObj.we
      }
      else {
        this.we = 0.0;
      }
      if (initObj.hasOwnProperty('quat')) {
        this.quat = initObj.quat
      }
      else {
        this.quat = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('quat_valid')) {
        this.quat_valid = initObj.quat_valid
      }
      else {
        this.quat_valid = false;
      }
      if (initObj.hasOwnProperty('chi_deg')) {
        this.chi_deg = initObj.chi_deg
      }
      else {
        this.chi_deg = 0.0;
      }
      if (initObj.hasOwnProperty('psi_deg')) {
        this.psi_deg = initObj.psi_deg
      }
      else {
        this.psi_deg = 0.0;
      }
      if (initObj.hasOwnProperty('initial_lat')) {
        this.initial_lat = initObj.initial_lat
      }
      else {
        this.initial_lat = 0.0;
      }
      if (initObj.hasOwnProperty('initial_lon')) {
        this.initial_lon = initObj.initial_lon
      }
      else {
        this.initial_lon = 0.0;
      }
      if (initObj.hasOwnProperty('initial_alt')) {
        this.initial_alt = initObj.initial_alt
      }
      else {
        this.initial_alt = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 3) {
      throw new Error('Unable to serialize array field position - length must be 3')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, 3);
    // Serialize message field [Va]
    bufferOffset = _serializer.float32(obj.Va, buffer, bufferOffset);
    // Serialize message field [alpha]
    bufferOffset = _serializer.float32(obj.alpha, buffer, bufferOffset);
    // Serialize message field [beta]
    bufferOffset = _serializer.float32(obj.beta, buffer, bufferOffset);
    // Serialize message field [phi]
    bufferOffset = _serializer.float32(obj.phi, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [psi]
    bufferOffset = _serializer.float32(obj.psi, buffer, bufferOffset);
    // Serialize message field [chi]
    bufferOffset = _serializer.float32(obj.chi, buffer, bufferOffset);
    // Serialize message field [p]
    bufferOffset = _serializer.float32(obj.p, buffer, bufferOffset);
    // Serialize message field [q]
    bufferOffset = _serializer.float32(obj.q, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.float32(obj.r, buffer, bufferOffset);
    // Serialize message field [Vg]
    bufferOffset = _serializer.float32(obj.Vg, buffer, bufferOffset);
    // Serialize message field [wn]
    bufferOffset = _serializer.float32(obj.wn, buffer, bufferOffset);
    // Serialize message field [we]
    bufferOffset = _serializer.float32(obj.we, buffer, bufferOffset);
    // Check that the constant length array field [quat] has the right length
    if (obj.quat.length !== 4) {
      throw new Error('Unable to serialize array field quat - length must be 4')
    }
    // Serialize message field [quat]
    bufferOffset = _arraySerializer.float32(obj.quat, buffer, bufferOffset, 4);
    // Serialize message field [quat_valid]
    bufferOffset = _serializer.bool(obj.quat_valid, buffer, bufferOffset);
    // Serialize message field [chi_deg]
    bufferOffset = _serializer.float32(obj.chi_deg, buffer, bufferOffset);
    // Serialize message field [psi_deg]
    bufferOffset = _serializer.float32(obj.psi_deg, buffer, bufferOffset);
    // Serialize message field [initial_lat]
    bufferOffset = _serializer.float32(obj.initial_lat, buffer, bufferOffset);
    // Serialize message field [initial_lon]
    bufferOffset = _serializer.float32(obj.initial_lon, buffer, bufferOffset);
    // Serialize message field [initial_alt]
    bufferOffset = _serializer.float32(obj.initial_alt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [Va]
    data.Va = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alpha]
    data.alpha = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [beta]
    data.beta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phi]
    data.phi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [psi]
    data.psi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [chi]
    data.chi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [p]
    data.p = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [q]
    data.q = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Vg]
    data.Vg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wn]
    data.wn = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [we]
    data.we = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [quat]
    data.quat = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [quat_valid]
    data.quat_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [chi_deg]
    data.chi_deg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [psi_deg]
    data.psi_deg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [initial_lat]
    data.initial_lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [initial_lon]
    data.initial_lon = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [initial_alt]
    data.initial_alt = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 101;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosplane_msgs/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57224b7ced1a3b169bed04d7cbeefdfe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Vehicle state 'x_hat' output from the estimator or from simulator 
    
    Header header
    
    # Original States
    # @warning roll, pitch and yaw have always to be valid, the quaternion is optional
    float32[3] position	# north, east, down (m)
    float32 Va		# Airspeed (m/s)
    float32 alpha		# Angle of attack (rad)
    float32 beta		# Slide slip angle (rad)
    float32 phi		# Roll angle (rad)
    float32 theta		# Pitch angle (rad)
    float32 psi		# Yaw angle (rad)
    float32 chi		# Course angle (rad)
    float32 p		# Body frame rollrate (rad/s)
    float32 q		# Body frame pitchrate (rad/s)
    float32 r		# Body frame yawrate (rad/s)
    float32 Vg		# Groundspeed (m/s)
    float32 wn		# Windspeed north component (m/s)
    float32 we		# Windspeed east component (m/s)
    
    # Additional States for convenience
    float32[4] quat		# Quaternion (wxyz, NED)
    bool quat_valid		# Quaternion valid
    float32 chi_deg		# Wrapped course angle (deg)
    float32 psi_deg		# Wrapped yaw angle (deg)
    float32 initial_lat 	# Initial/origin latitude (lat. deg)
    float32 initial_lon 	# Initial/origin longitude (lon. deg) 
    float32 initial_alt 	# Initial/origin altitude (m) 
    
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
    const resolved = new State(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(3).fill(0)
    }

    if (msg.Va !== undefined) {
      resolved.Va = msg.Va;
    }
    else {
      resolved.Va = 0.0
    }

    if (msg.alpha !== undefined) {
      resolved.alpha = msg.alpha;
    }
    else {
      resolved.alpha = 0.0
    }

    if (msg.beta !== undefined) {
      resolved.beta = msg.beta;
    }
    else {
      resolved.beta = 0.0
    }

    if (msg.phi !== undefined) {
      resolved.phi = msg.phi;
    }
    else {
      resolved.phi = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.psi !== undefined) {
      resolved.psi = msg.psi;
    }
    else {
      resolved.psi = 0.0
    }

    if (msg.chi !== undefined) {
      resolved.chi = msg.chi;
    }
    else {
      resolved.chi = 0.0
    }

    if (msg.p !== undefined) {
      resolved.p = msg.p;
    }
    else {
      resolved.p = 0.0
    }

    if (msg.q !== undefined) {
      resolved.q = msg.q;
    }
    else {
      resolved.q = 0.0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
    }

    if (msg.Vg !== undefined) {
      resolved.Vg = msg.Vg;
    }
    else {
      resolved.Vg = 0.0
    }

    if (msg.wn !== undefined) {
      resolved.wn = msg.wn;
    }
    else {
      resolved.wn = 0.0
    }

    if (msg.we !== undefined) {
      resolved.we = msg.we;
    }
    else {
      resolved.we = 0.0
    }

    if (msg.quat !== undefined) {
      resolved.quat = msg.quat;
    }
    else {
      resolved.quat = new Array(4).fill(0)
    }

    if (msg.quat_valid !== undefined) {
      resolved.quat_valid = msg.quat_valid;
    }
    else {
      resolved.quat_valid = false
    }

    if (msg.chi_deg !== undefined) {
      resolved.chi_deg = msg.chi_deg;
    }
    else {
      resolved.chi_deg = 0.0
    }

    if (msg.psi_deg !== undefined) {
      resolved.psi_deg = msg.psi_deg;
    }
    else {
      resolved.psi_deg = 0.0
    }

    if (msg.initial_lat !== undefined) {
      resolved.initial_lat = msg.initial_lat;
    }
    else {
      resolved.initial_lat = 0.0
    }

    if (msg.initial_lon !== undefined) {
      resolved.initial_lon = msg.initial_lon;
    }
    else {
      resolved.initial_lon = 0.0
    }

    if (msg.initial_alt !== undefined) {
      resolved.initial_alt = msg.initial_alt;
    }
    else {
      resolved.initial_alt = 0.0
    }

    return resolved;
    }
};

module.exports = State;
