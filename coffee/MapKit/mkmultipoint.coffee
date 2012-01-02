# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKMultiPoint = class MKMultiPoint extends MKShape
  # Accessing the Points in the Shape
  @instanceProperty "points"
  @instanceProperty "pointCount"

  # Getting Coordinate Values
  getCoordinates: @nativeSelector "getCoordinates:range:"

  @register()
