# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKPolylineView extends MKOverlayPathView
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # MethodGroup
  initWithPolyline: objc.invokeSelector ("initWithPolyline:")
  ck.addProperty @::, "polyline"

new ck.RegisterAttribute MKPolylineView, "MKPolylineView"
exports.MKPolylineView = MKPolylineView
