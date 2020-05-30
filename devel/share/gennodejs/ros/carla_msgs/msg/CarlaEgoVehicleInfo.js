// Auto-generated. Do not edit!

// (in-package carla_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CarlaEgoVehicleInfoWheel = require('./CarlaEgoVehicleInfoWheel.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CarlaEgoVehicleInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.rolename = null;
      this.wheels = null;
      this.max_rpm = null;
      this.moi = null;
      this.damping_rate_full_throttle = null;
      this.damping_rate_zero_throttle_clutch_engaged = null;
      this.damping_rate_zero_throttle_clutch_disengaged = null;
      this.use_gear_autobox = null;
      this.gear_switch_time = null;
      this.clutch_strength = null;
      this.mass = null;
      this.drag_coefficient = null;
      this.center_of_mass = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('rolename')) {
        this.rolename = initObj.rolename
      }
      else {
        this.rolename = '';
      }
      if (initObj.hasOwnProperty('wheels')) {
        this.wheels = initObj.wheels
      }
      else {
        this.wheels = [];
      }
      if (initObj.hasOwnProperty('max_rpm')) {
        this.max_rpm = initObj.max_rpm
      }
      else {
        this.max_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('moi')) {
        this.moi = initObj.moi
      }
      else {
        this.moi = 0.0;
      }
      if (initObj.hasOwnProperty('damping_rate_full_throttle')) {
        this.damping_rate_full_throttle = initObj.damping_rate_full_throttle
      }
      else {
        this.damping_rate_full_throttle = 0.0;
      }
      if (initObj.hasOwnProperty('damping_rate_zero_throttle_clutch_engaged')) {
        this.damping_rate_zero_throttle_clutch_engaged = initObj.damping_rate_zero_throttle_clutch_engaged
      }
      else {
        this.damping_rate_zero_throttle_clutch_engaged = 0.0;
      }
      if (initObj.hasOwnProperty('damping_rate_zero_throttle_clutch_disengaged')) {
        this.damping_rate_zero_throttle_clutch_disengaged = initObj.damping_rate_zero_throttle_clutch_disengaged
      }
      else {
        this.damping_rate_zero_throttle_clutch_disengaged = 0.0;
      }
      if (initObj.hasOwnProperty('use_gear_autobox')) {
        this.use_gear_autobox = initObj.use_gear_autobox
      }
      else {
        this.use_gear_autobox = false;
      }
      if (initObj.hasOwnProperty('gear_switch_time')) {
        this.gear_switch_time = initObj.gear_switch_time
      }
      else {
        this.gear_switch_time = 0.0;
      }
      if (initObj.hasOwnProperty('clutch_strength')) {
        this.clutch_strength = initObj.clutch_strength
      }
      else {
        this.clutch_strength = 0.0;
      }
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = 0.0;
      }
      if (initObj.hasOwnProperty('drag_coefficient')) {
        this.drag_coefficient = initObj.drag_coefficient
      }
      else {
        this.drag_coefficient = 0.0;
      }
      if (initObj.hasOwnProperty('center_of_mass')) {
        this.center_of_mass = initObj.center_of_mass
      }
      else {
        this.center_of_mass = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarlaEgoVehicleInfo
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [rolename]
    bufferOffset = _serializer.string(obj.rolename, buffer, bufferOffset);
    // Serialize message field [wheels]
    // Serialize the length for message field [wheels]
    bufferOffset = _serializer.uint32(obj.wheels.length, buffer, bufferOffset);
    obj.wheels.forEach((val) => {
      bufferOffset = CarlaEgoVehicleInfoWheel.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [max_rpm]
    bufferOffset = _serializer.float32(obj.max_rpm, buffer, bufferOffset);
    // Serialize message field [moi]
    bufferOffset = _serializer.float32(obj.moi, buffer, bufferOffset);
    // Serialize message field [damping_rate_full_throttle]
    bufferOffset = _serializer.float32(obj.damping_rate_full_throttle, buffer, bufferOffset);
    // Serialize message field [damping_rate_zero_throttle_clutch_engaged]
    bufferOffset = _serializer.float32(obj.damping_rate_zero_throttle_clutch_engaged, buffer, bufferOffset);
    // Serialize message field [damping_rate_zero_throttle_clutch_disengaged]
    bufferOffset = _serializer.float32(obj.damping_rate_zero_throttle_clutch_disengaged, buffer, bufferOffset);
    // Serialize message field [use_gear_autobox]
    bufferOffset = _serializer.bool(obj.use_gear_autobox, buffer, bufferOffset);
    // Serialize message field [gear_switch_time]
    bufferOffset = _serializer.float32(obj.gear_switch_time, buffer, bufferOffset);
    // Serialize message field [clutch_strength]
    bufferOffset = _serializer.float32(obj.clutch_strength, buffer, bufferOffset);
    // Serialize message field [mass]
    bufferOffset = _serializer.float32(obj.mass, buffer, bufferOffset);
    // Serialize message field [drag_coefficient]
    bufferOffset = _serializer.float32(obj.drag_coefficient, buffer, bufferOffset);
    // Serialize message field [center_of_mass]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.center_of_mass, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarlaEgoVehicleInfo
    let len;
    let data = new CarlaEgoVehicleInfo(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [rolename]
    data.rolename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wheels]
    // Deserialize array length for message field [wheels]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wheels = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wheels[i] = CarlaEgoVehicleInfoWheel.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [max_rpm]
    data.max_rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [moi]
    data.moi = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [damping_rate_full_throttle]
    data.damping_rate_full_throttle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [damping_rate_zero_throttle_clutch_engaged]
    data.damping_rate_zero_throttle_clutch_engaged = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [damping_rate_zero_throttle_clutch_disengaged]
    data.damping_rate_zero_throttle_clutch_disengaged = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [use_gear_autobox]
    data.use_gear_autobox = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gear_switch_time]
    data.gear_switch_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [clutch_strength]
    data.clutch_strength = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mass]
    data.mass = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [drag_coefficient]
    data.drag_coefficient = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [center_of_mass]
    data.center_of_mass = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += object.rolename.length;
    length += 12 * object.wheels.length;
    return length + 77;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_msgs/CarlaEgoVehicleInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '380b84c67059884787e0b582a7236281';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Copyright (c) 2019 Intel Corporation.
    #
    # This work is licensed under the terms of the MIT license.
    # For a copy, see <https://opensource.org/licenses/MIT>.
    #
    
    uint32 id
    string type
    string rolename
    CarlaEgoVehicleInfoWheel[] wheels
    float32 max_rpm
    float32 moi
    float32 damping_rate_full_throttle
    float32 damping_rate_zero_throttle_clutch_engaged
    float32 damping_rate_zero_throttle_clutch_disengaged
    bool use_gear_autobox
    float32 gear_switch_time
    float32 clutch_strength
    float32 mass
    float32 drag_coefficient
    geometry_msgs/Vector3 center_of_mass
    
    ================================================================================
    MSG: carla_msgs/CarlaEgoVehicleInfoWheel
    #
    # Copyright (c) 2019 Intel Corporation.
    #
    # This work is licensed under the terms of the MIT license.
    # For a copy, see <https://opensource.org/licenses/MIT>.
    #
    float32 tire_friction
    float32 damping_rate
    float32 max_steer_angle
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarlaEgoVehicleInfo(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.rolename !== undefined) {
      resolved.rolename = msg.rolename;
    }
    else {
      resolved.rolename = ''
    }

    if (msg.wheels !== undefined) {
      resolved.wheels = new Array(msg.wheels.length);
      for (let i = 0; i < resolved.wheels.length; ++i) {
        resolved.wheels[i] = CarlaEgoVehicleInfoWheel.Resolve(msg.wheels[i]);
      }
    }
    else {
      resolved.wheels = []
    }

    if (msg.max_rpm !== undefined) {
      resolved.max_rpm = msg.max_rpm;
    }
    else {
      resolved.max_rpm = 0.0
    }

    if (msg.moi !== undefined) {
      resolved.moi = msg.moi;
    }
    else {
      resolved.moi = 0.0
    }

    if (msg.damping_rate_full_throttle !== undefined) {
      resolved.damping_rate_full_throttle = msg.damping_rate_full_throttle;
    }
    else {
      resolved.damping_rate_full_throttle = 0.0
    }

    if (msg.damping_rate_zero_throttle_clutch_engaged !== undefined) {
      resolved.damping_rate_zero_throttle_clutch_engaged = msg.damping_rate_zero_throttle_clutch_engaged;
    }
    else {
      resolved.damping_rate_zero_throttle_clutch_engaged = 0.0
    }

    if (msg.damping_rate_zero_throttle_clutch_disengaged !== undefined) {
      resolved.damping_rate_zero_throttle_clutch_disengaged = msg.damping_rate_zero_throttle_clutch_disengaged;
    }
    else {
      resolved.damping_rate_zero_throttle_clutch_disengaged = 0.0
    }

    if (msg.use_gear_autobox !== undefined) {
      resolved.use_gear_autobox = msg.use_gear_autobox;
    }
    else {
      resolved.use_gear_autobox = false
    }

    if (msg.gear_switch_time !== undefined) {
      resolved.gear_switch_time = msg.gear_switch_time;
    }
    else {
      resolved.gear_switch_time = 0.0
    }

    if (msg.clutch_strength !== undefined) {
      resolved.clutch_strength = msg.clutch_strength;
    }
    else {
      resolved.clutch_strength = 0.0
    }

    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = 0.0
    }

    if (msg.drag_coefficient !== undefined) {
      resolved.drag_coefficient = msg.drag_coefficient;
    }
    else {
      resolved.drag_coefficient = 0.0
    }

    if (msg.center_of_mass !== undefined) {
      resolved.center_of_mass = geometry_msgs.msg.Vector3.Resolve(msg.center_of_mass)
    }
    else {
      resolved.center_of_mass = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = CarlaEgoVehicleInfo;
