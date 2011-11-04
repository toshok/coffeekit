# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIAccelerometer"
class UIAccelerometer extends foundation.NSObject

  # Getting the Shared Accelerometer Object
  sharedAccelerometer: objc.invokeSelector "sharedAccelerometer"

  # Accessing the Accelerometer Properties
  ck.addProperty @::, "updateInterval"
  ck.addProperty @::, "delegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, UIAccelerometerDelegate)

new ck.RegisterAttribute UIAccelerometer, "UIAccelerometer"
exports.UIAccelerometer = UIAccelerometer
