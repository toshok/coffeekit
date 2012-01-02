# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CLRegion = class CLRegion extends foundation.NSObject
  # Initializing a Circular Region
  initCircularRegion: @nativeSelector "initCircularRegionWithCenter:radius:identifier:"

  # Accessing a Region’s Attributes
  @instanceProperty "identifier"
  @instanceProperty "center"
  @instanceProperty "radius"

  # Hit-Testing in a Region
  containsCoordinate: @nativeSelector "containsCoordinate:"

  @register()
