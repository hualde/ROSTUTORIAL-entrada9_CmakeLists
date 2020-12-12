// Auto-generated. Do not edit!

// (in-package entrada_custom_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class mi_mensaje {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.agv_id = null;
      this.numero = null;
    }
    else {
      if (initObj.hasOwnProperty('agv_id')) {
        this.agv_id = initObj.agv_id
      }
      else {
        this.agv_id = '';
      }
      if (initObj.hasOwnProperty('numero')) {
        this.numero = initObj.numero
      }
      else {
        this.numero = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mi_mensaje
    // Serialize message field [agv_id]
    bufferOffset = _serializer.string(obj.agv_id, buffer, bufferOffset);
    // Serialize message field [numero]
    bufferOffset = _serializer.int64(obj.numero, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mi_mensaje
    let len;
    let data = new mi_mensaje(null);
    // Deserialize message field [agv_id]
    data.agv_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [numero]
    data.numero = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.agv_id.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'entrada_custom_msgs/mi_mensaje';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1891012cb06ea16ecd99e89ba9876ef6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string agv_id
    int64 numero
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mi_mensaje(null);
    if (msg.agv_id !== undefined) {
      resolved.agv_id = msg.agv_id;
    }
    else {
      resolved.agv_id = ''
    }

    if (msg.numero !== undefined) {
      resolved.numero = msg.numero;
    }
    else {
      resolved.numero = 0
    }

    return resolved;
    }
};

module.exports = mi_mensaje;
