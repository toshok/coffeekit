# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLHeading = class CLHeading extends foundation.NSObject
  # Accessing the Heading Attributes
  @instanceProperty "magneticHeading"
  @instanceProperty "trueHeading"
  @instanceProperty "headingAccuracy"
  @instanceProperty "timestamp"
  description: @nativeSelector "description"

  # Accessing the Raw Heading Data
  @instanceProperty "x"
  @instanceProperty "y"
  @instanceProperty "z"

  @register()
