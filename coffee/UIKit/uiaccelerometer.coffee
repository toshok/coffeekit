# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIAccelerometer"
exports.UIAccelerometer = class UIAccelerometer extends foundation.NSObject
  @register()

  # Getting the Shared Accelerometer Object
  sharedAccelerometer: objc.invokeSelector "sharedAccelerometer"

  # Accessing the Accelerometer Properties
  ck.instanceProperty @, "updateInterval"
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIAccelerometerDelegate) }
