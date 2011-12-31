# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLHeading = class CLHeading extends foundation.NSObject
  @register()

  # Accessing the Heading Attributes
  ck.instanceProperty @, "magneticHeading"
  ck.instanceProperty @, "trueHeading"
  ck.instanceProperty @, "headingAccuracy"
  ck.instanceProperty @, "timestamp"
  description: objc.invokeSelector "description"

  # Accessing the Raw Heading Data
  ck.instanceProperty @, "x"
  ck.instanceProperty @, "y"
  ck.instanceProperty @, "z"
