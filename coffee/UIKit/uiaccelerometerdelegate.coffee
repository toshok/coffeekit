# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIAccelerometerDelegate"

exports.UIAccelerometerDelegate = class UIAccelerometerDelegate extends foundation.Protocol
  didAccelerate:  @optionalMethod "accelerometer:didAccelerate:"  # Deprecated in iOS 5.0

  @register()
