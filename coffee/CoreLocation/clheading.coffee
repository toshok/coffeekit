# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CLHeading extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Accessing the Heading Attributes
  ck.addProperty @::, "magneticHeading"
  ck.addProperty @::, "trueHeading"
  ck.addProperty @::, "headingAccuracy"
  ck.addProperty @::, "timestamp"
  description: objc.invokeSelector ("description")

  # Accessing the Raw Heading Data
  ck.addProperty @::, "x"
  ck.addProperty @::, "y"
  ck.addProperty @::, "z"

new ck.RegisterAttribute CLHeading, "CLHeading"
exports.CLHeading = CLHeading
