# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKCircle extends MKShape
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Creating a Circle Overlay
  @circleWithCenterCoordinate:radius:: objc.invokeSelector ("circleWithCenterCoordinate:radius:")
  @circleWithMapRect:: objc.invokeSelector ("circleWithMapRect:")

  # Accessing the Overlay’s Attributes
  ck.addProperty @::, "coordinate"
  ck.addProperty @::, "radius"
  ck.addProperty @::, "boundingMapRect"

new ck.RegisterAttribute MKCircle, "MKCircle"
exports.MKCircle = MKCircle
