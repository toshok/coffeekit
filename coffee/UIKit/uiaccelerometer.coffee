# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIAccelerometer"
exports.UIAccelerometer = class UIAccelerometer extends foundation.NSObject
  # Getting the Shared Accelerometer Object
  sharedAccelerometer: @nativeSelector "sharedAccelerometer"

  # Accessing the Accelerometer Properties
  @instanceProperty "updateInterval"
  @autoboxProperty  "delegate", UIAccelerometerDelegate

  @register()
