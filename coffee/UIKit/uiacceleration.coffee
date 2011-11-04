# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "UIAcceleration"
class UIAcceleration extends foundation.NSObject

  # Accessing the Acceleration Values
  ck.addProperty @::, "x"
  ck.addProperty @::, "y"
  ck.addProperty @::, "z"
  ck.addProperty @::, "timestamp"

new ck.RegisterAttribute UIAcceleration, "UIAcceleration"
exports.UIAcceleration = UIAcceleration
