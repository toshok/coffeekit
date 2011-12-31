# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIDevice"
exports.UIDevice = class UIDevice extends foundation.NSObject
  @register()

  # Getting the Shared Device Instance
  ck.staticProperty @, "currentDevice", set: null, get: -> objc.invokeSelector("currentDevice").call UIDevice

  # Determining the Available Features
  ck.instanceProperty @, "multitaskingSupported"

  # Identifying the Device and Operating System
  ck.instanceProperty @, "name"
  ck.instanceProperty @, "systemName"
  ck.instanceProperty @, "systemVersion"
  ck.instanceProperty @, "model"
  ck.instanceProperty @, "localizedModel"
  ck.instanceProperty @, "userInterfaceIdiom"
  ck.instanceProperty @, "uniqueIdentifier" # Deprecated in iOS 5.0

  # Getting the Device Orientation
  ck.instanceProperty @, "orientation"
  ck.instanceProperty @, "generatesDeviceOrientationNotifications"
  beginGeneratingDeviceOrientationNotifications: objc.invokeSelector "beginGeneratingDeviceOrientationNotifications"
  endGeneratingDeviceOrientationNotifications: objc.invokeSelector "endGeneratingDeviceOrientationNotifications"

  # Getting the Device Battery State
  ck.instanceProperty @, "batteryLevel"
  ck.instanceProperty @, "batteryMonitoringEnabled"
  ck.instanceProperty @, "batteryState"

  # Using the Proximity Sensor
  ck.instanceProperty @, "proximityMonitoringEnabled"
  ck.instanceProperty @, "proximityState"

  # Playing Input Clicks
  playInputClick: objc.invokeSelector "playInputClick"
