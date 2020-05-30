// Auto-generated. Do not edit!

// (in-package carla_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CarlaEgoVehicleInfoWheel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tire_friction = null;
      this.damping_rate = null;
      this.max_steer_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('tire_friction')) {
        this.tire_friction = initObj.tire_friction
      }
      else {
        this.tire_friction = 0.0;
      }
      if (initObj.hasOwnProperty('damping_rate')) {
        this.damping_rate = initObj.damping_rate
      }
      else {
        this.damping_rate = 0.0;
      }
      if (initObj.hasOwnProperty('max_steer_angle')) {
        this.max_steer_angle = initObj.max_steer_angle
      }
      else {
        this.max_steer_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarlaEgoVehicleInfoWheel
    // Serialize message field [tire_friction]
    bufferOffset = _serializer.float32(obj.tire_friction, buffer, bufferOffset);
    // Serialize message field [damping_rate]
    bufferOffset = _serializer.float32(obj.damping_rate, buffer, bufferOffset);
    // Serialize message field [max_steer_angle]
    bufferOffset = _serializer.float32(obj.max_steer_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarlaEgoVehicleInfoWheel
    let len;
    let data = new CarlaEgoVehicleInfoWheel(null);
    // Deserialize message field [tire_friction]
    data.tire_friction = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [damping_rate]
    data.damping_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_steer_angle]
    data.max_steer_angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_msgs/CarlaEgoVehicleInfoWheel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e50509267c9b1014c079d8826fd0dc72';
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
    float32 tire_friction
    float32 damping_rate
    float32 max_steer_angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarlaEgoVehicleInfoWheel(null);
    if (msg.tire_friction !== undefined) {
      resolved.tire_friction = msg.tire_friction;
    }
    else {
      resolved.tire_friction = 0.0
    }

    if (msg.damping_rate !== undefined) {
      resolved.damping_rate = msg.damping_rate;
    }
    else {
      resolved.damping_rate = 0.0
    }

    if (msg.max_steer_angle !== undefined) {
      resolved.max_steer_angle = msg.max_steer_angle;
    }
    else {
      resolved.max_steer_angle = 0.0
    }

    return resolved;
    }
};

module.exports = CarlaEgoVehicleInfoWheel;
