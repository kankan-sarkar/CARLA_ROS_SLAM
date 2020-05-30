// Auto-generated. Do not edit!

// (in-package carla_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CarlaActorInfo = require('./CarlaActorInfo.js');

//-----------------------------------------------------------

class CarlaActorList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actors = null;
    }
    else {
      if (initObj.hasOwnProperty('actors')) {
        this.actors = initObj.actors
      }
      else {
        this.actors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarlaActorList
    // Serialize message field [actors]
    // Serialize the length for message field [actors]
    bufferOffset = _serializer.uint32(obj.actors.length, buffer, bufferOffset);
    obj.actors.forEach((val) => {
      bufferOffset = CarlaActorInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarlaActorList
    let len;
    let data = new CarlaActorList(null);
    // Deserialize message field [actors]
    // Deserialize array length for message field [actors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actors[i] = CarlaActorInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.actors.forEach((val) => {
      length += CarlaActorInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_msgs/CarlaActorList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a10ababa303f55dd50f485b995641f71';
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
    
    CarlaActorInfo[] actors
    
    
    ================================================================================
    MSG: carla_msgs/CarlaActorInfo
    #
    # Copyright (c) 2019 Intel Corporation.
    #
    # This work is licensed under the terms of the MIT license.
    # For a copy, see <https://opensource.org/licenses/MIT>.
    #
    
    uint32 id
    uint32 parent_id # 0 if no parent available
    string type
    string rolename
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarlaActorList(null);
    if (msg.actors !== undefined) {
      resolved.actors = new Array(msg.actors.length);
      for (let i = 0; i < resolved.actors.length; ++i) {
        resolved.actors[i] = CarlaActorInfo.Resolve(msg.actors[i]);
      }
    }
    else {
      resolved.actors = []
    }

    return resolved;
    }
};

module.exports = CarlaActorList;
