# This file is part of coffeekit.  for licensing information, see the LICENSE file

console.log "UIAcceleration"
exports.UIAcceleration = class UIAcceleration extends foundation.NSObject
  # Accessing the Acceleration Values
  @instanceProperty "x"
  @instanceProperty "y"
  @instanceProperty "z"
  @instanceProperty "timestamp"

  @register()
