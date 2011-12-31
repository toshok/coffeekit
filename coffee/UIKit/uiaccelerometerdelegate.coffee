# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIAccelerometerDelegate"
Protocol = foundation.Protocol

exports.UIAccelerometerDelegate = class UIAccelerometerDelegate extends foundation.Protocol
  @register()

  didAccelerate:  Protocol.optionalMethod "accelerometer:didAccelerate:"  # Deprecated in iOS 5.0
