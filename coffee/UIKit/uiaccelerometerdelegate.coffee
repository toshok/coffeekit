# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIAccelerometerDelegate"
Protocol = foundation.Protocol

class UIAccelerometerDelegate extends foundation.Protocol

  didAccelerate:  Protocol.optionalMethod "accelerometer:didAccelerate:"  # Deprecated in iOS 5.0

new ck.RegisterAttribute UIAccelerometerDelegate, "UIAccelerometerDelegate"
exports.UIAccelerometer = UIAccelerometerDelegate