# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKCircle = class MKCircle extends MKShape
  @register()

  # Creating a Circle Overlay
  @circleWithCenterCoordinate:radius:: objc.invokeSelector "circleWithCenterCoordinate:radius:"
  @circleWithMapRect:: objc.invokeSelector "circleWithMapRect:"

  # Accessing the Overlay’s Attributes
  ck.instanceProperty @, "coordinate"
  ck.instanceProperty @, "radius"
  ck.instanceProperty @, "boundingMapRect"
