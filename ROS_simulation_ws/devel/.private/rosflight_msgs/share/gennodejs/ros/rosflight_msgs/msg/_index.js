
"use strict";

let Attitude = require('./Attitude.js');
let Barometer = require('./Barometer.js');
let Status = require('./Status.js');
let OutputRaw = require('./OutputRaw.js');
let Error = require('./Error.js');
let Command = require('./Command.js');
let RCRaw = require('./RCRaw.js');
let GNSSFull = require('./GNSSFull.js');
let GNSS = require('./GNSS.js');
let BatteryStatus = require('./BatteryStatus.js');
let AuxCommand = require('./AuxCommand.js');
let Airspeed = require('./Airspeed.js');

module.exports = {
  Attitude: Attitude,
  Barometer: Barometer,
  Status: Status,
  OutputRaw: OutputRaw,
  Error: Error,
  Command: Command,
  RCRaw: RCRaw,
  GNSSFull: GNSSFull,
  GNSS: GNSS,
  BatteryStatus: BatteryStatus,
  AuxCommand: AuxCommand,
  Airspeed: Airspeed,
};
