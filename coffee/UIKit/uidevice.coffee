# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIDevice"
exports.UIDevice = class UIDevice extends foundation.NSObject
  # Getting the Shared Device Instance
  @staticProperty                                "currentDevice", set: null

  # Determining the Available Features
  @instanceProperty                              "multitaskingSupported"

  # Identifying the Device and Operating System
  @instanceProperty 				 "name"
  @instanceProperty 				 "systemName"
  @instanceProperty 				 "systemVersion"
  @instanceProperty 				 "model"
  @instanceProperty 				 "localizedModel"
  @instanceProperty 				 "userInterfaceIdiom"
  @instanceProperty 				 "uniqueIdentifier" # Deprecated in iOS 5.0

  # Getting the Device Orientation
  @instanceProperty 				 "orientation"
  @instanceProperty 				 "generatesDeviceOrientationNotifications"
  beginGeneratingDeviceOrientationNotifications: @nativeSelector "beginGeneratingDeviceOrientationNotifications"
  endGeneratingDeviceOrientationNotifications:   @nativeSelector "endGeneratingDeviceOrientationNotifications"

  # Getting the Device Battery State
  @instanceProperty 				 "batteryLevel"
  @instanceProperty 				 "batteryMonitoringEnabled"
  @instanceProperty                              "batteryState"

  # Using the Proximity Sensor
  @instanceProperty 				 "proximityMonitoringEnabled"
  @instanceProperty                              "proximityState"

  # Playing Input Clicks
  playInputClick:                                @nativeSelector "playInputClick"

  @register()
