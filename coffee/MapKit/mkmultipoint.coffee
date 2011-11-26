# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKMultiPoint extends MKShape
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Accessing the Points in the Shape
  ck.addProperty @::, "points"
  ck.addProperty @::, "pointCount"

  # Getting Coordinate Values
  getCoordinates: objc.invokeSelector ("getCoordinates:range:")

new ck.RegisterAttribute MKMultiPoint, "MKMultiPoint"
exports.MKMultiPoint = MKMultiPoint
