# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKPolygon extends MKMultiPoint
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Creating a Polygon Overlay
  @polygonWithPoints:count:: objc.invokeSelector ("polygonWithPoints:count:")
  @polygonWithPoints:count:interiorPolygons:: objc.invokeSelector ("polygonWithPoints:count:interiorPolygons:")
  @polygonWithCoordinates:count:: objc.invokeSelector ("polygonWithCoordinates:count:")
  @polygonWithCoordinates:count:interiorPolygons:: objc.invokeSelector ("polygonWithCoordinates:count:interiorPolygons:")

  # Accessing the Interior Polygons
  ck.addProperty @::, "interiorPolygons"

new ck.RegisterAttribute MKPolygon, "MKPolygon"
exports.MKPolygon = MKPolygon
