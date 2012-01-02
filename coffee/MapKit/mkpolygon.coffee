# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPolygon = class MKPolygon extends MKMultiPoint
  # Creating a Polygon Overlay
  @polygonWithPoints:count:: @nativeSelector "polygonWithPoints:count:"
  @polygonWithPoints:count:interiorPolygons:: @nativeSelector "polygonWithPoints:count:interiorPolygons:"
  @polygonWithCoordinates:count:: @nativeSelector "polygonWithCoordinates:count:"
  @polygonWithCoordinates:count:interiorPolygons:: @nativeSelector "polygonWithCoordinates:count:interiorPolygons:"

  # Accessing the Interior Polygons
  @instanceProperty "interiorPolygons"

  @register()
