# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPolyline = class MKPolyline extends MKMultiPoint
  @register()

  # Creating a Polyline Overlay
  @polylineWithPoints:count:: objc.invokeSelector "polylineWithPoints:count:"
  @polylineWithCoordinates:count:: objc.invokeSelector "polylineWithCoordinates:count:"
