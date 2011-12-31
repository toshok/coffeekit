# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIAcceleration"
exports.UIAcceleration = class UIAcceleration extends foundation.NSObject
  @register()

  # Accessing the Acceleration Values
  ck.instanceProperty @, "x"
  ck.instanceProperty @, "y"
  ck.instanceProperty @, "z"
  ck.instanceProperty @, "timestamp"
