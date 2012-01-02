# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPolyline = class MKPolyline extends MKMultiPoint
  # Creating a Polyline Overlay
  @polylineWithPoints:count:: @nativeSelector "polylineWithPoints:count:"
  @polylineWithCoordinates:count:: @nativeSelector "polylineWithCoordinates:count:"

  @register()
