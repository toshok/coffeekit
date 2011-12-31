# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLRegion = class CLRegion extends foundation.NSObject
  @register()

  # Initializing a Circular Region
  initCircularRegion: objc.invokeSelector "initCircularRegionWithCenter:radius:identifier:"

  # Accessing a Region’s Attributes
  ck.instanceProperty @, "identifier"
  ck.instanceProperty @, "center"
  ck.instanceProperty @, "radius"

  # Hit-Testing in a Region
  containsCoordinate: objc.invokeSelector "containsCoordinate:"
