# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CLRegion extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Initializing a Circular Region
  initCircularRegion: objc.invokeSelector ("initCircularRegionWithCenter:radius:identifier:")

  # Accessing a Region’s Attributes
  ck.addProperty @::, "identifier"
  ck.addProperty @::, "center"
  ck.addProperty @::, "radius"

  # Hit-Testing in a Region
  containsCoordinate: objc.invokeSelector ("containsCoordinate:")

new ck.RegisterAttribute CLRegion, "CLRegion"
exports.CLRegion = CLRegion
