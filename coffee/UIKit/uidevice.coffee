# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIDevice"
class UIDevice extends foundation.NSObject

  # Getting the Shared Device Instance
  ck.addProperty @, "currentDevice", set: null, get: -> objc.invokeSelector("currentDevice").call UIDevice

  # Determining the Available Features
  ck.addProperty @::, "multitaskingSupported"

  # Identifying the Device and Operating System
  ck.addProperty @::, "name"
  ck.addProperty @::, "systemName"
  ck.addProperty @::, "systemVersion"
  ck.addProperty @::, "model"
  ck.addProperty @::, "localizedModel"
  ck.addProperty @::, "userInterfaceIdiom"
  ck.addProperty @::, "uniqueIdentifier" # Deprecated in iOS 5.0

  # Getting the Device Orientation
  ck.addProperty @::, "orientation"
  ck.addProperty @::, "generatesDeviceOrientationNotifications"
  beginGeneratingDeviceOrientationNotifications: objc.invokeSelector "beginGeneratingDeviceOrientationNotifications"
  endGeneratingDeviceOrientationNotifications: objc.invokeSelector "endGeneratingDeviceOrientationNotifications"

  # Getting the Device Battery State
  ck.addProperty @::, "batteryLevel"
  ck.addProperty @::, "batteryMonitoringEnabled"
  ck.addProperty @::, "batteryState"

  # Using the Proximity Sensor
  ck.addProperty @::, "proximityMonitoringEnabled"
  ck.addProperty @::, "proximityState"

  # Playing Input Clicks
  playInputClick: objc.invokeSelector "playInputClick"

new ck.RegisterAttribute UIDevice, "UIDevice"
exports.UIDevice = UIDevice
