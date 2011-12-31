# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPolygon = class MKPolygon extends MKMultiPoint
  @register()

  # Creating a Polygon Overlay
  @polygonWithPoints:count:: objc.invokeSelector "polygonWithPoints:count:"
  @polygonWithPoints:count:interiorPolygons:: objc.invokeSelector "polygonWithPoints:count:interiorPolygons:"
  @polygonWithCoordinates:count:: objc.invokeSelector "polygonWithCoordinates:count:"
  @polygonWithCoordinates:count:interiorPolygons:: objc.invokeSelector "polygonWithCoordinates:count:interiorPolygons:"

  # Accessing the Interior Polygons
  ck.instanceProperty @, "interiorPolygons"
