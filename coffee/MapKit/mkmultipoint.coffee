# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKMultiPoint = class MKMultiPoint extends MKShape
  @register()

  # Accessing the Points in the Shape
  ck.instanceProperty @, "points"
  ck.instanceProperty @, "pointCount"

  # Getting Coordinate Values
  getCoordinates: objc.invokeSelector "getCoordinates:range:"
