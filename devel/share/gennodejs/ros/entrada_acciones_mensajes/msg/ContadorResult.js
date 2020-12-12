// Auto-generated. Do not edit!

// (in-package entrada_acciones_mensajes.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ContadorResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.contador = null;
    }
    else {
      if (initObj.hasOwnProperty('contador')) {
        this.contador = initObj.contador
      }
      else {
        this.contador = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContadorResult
    // Serialize message field [contador]
    bufferOffset = _serializer.int64(obj.contador, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContadorResult
    let len;
    let data = new ContadorResult(null);
    // Deserialize message field [contador]
    data.contador = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'entrada_acciones_mensajes/ContadorResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca8b12a43af0ec7cb0057d704d9bb5ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result
    int64 contador
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContadorResult(null);
    if (msg.contador !== undefined) {
      resolved.contador = msg.contador;
    }
    else {
      resolved.contador = 0
    }

    return resolved;
    }
};

module.exports = ContadorResult;
