# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CATransition extends foundation.NSObject

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Transition Start and End Point
  ck.addProperty @::, "startProgress"
  ck.addProperty @::, "endProgress"

  # Transition Properties
  ck.addProperty @::, "type"
  ck.addProperty @::, "subtype"

  # Custom Transition Filter
  ck.addProperty @::, "filter"

new ck.RegisterAttribute CATransition, "CATransition"
exports.CATransition = CATransition