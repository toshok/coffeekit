# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKPolyline extends MKMultiPoint
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Creating a Polyline Overlay
  @polylineWithPoints:count:: objc.invokeSelector ("polylineWithPoints:count:")
  @polylineWithCoordinates:count:: objc.invokeSelector ("polylineWithCoordinates:count:")

new ck.RegisterAttribute MKPolyline, "MKPolyline"
exports.MKPolyline = MKPolyline
