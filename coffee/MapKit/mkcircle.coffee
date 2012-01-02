# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKCircle = class MKCircle extends MKShape
  # Creating a Circle Overlay
  @circleWithCenterCoordinate:radius:: @nativeSelector "circleWithCenterCoordinate:radius:"
  @circleWithMapRect:: @nativeSelector "circleWithMapRect:"

  # Accessing the Overlay’s Attributes
  @instanceProperty "coordinate"
  @instanceProperty "radius"
  @instanceProperty "boundingMapRect"

  @register()
