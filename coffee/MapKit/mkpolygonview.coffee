# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKPolygonView extends MKOverlayPathView
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # MethodGroup
  initWithPolygon: objc.invokeSelector ("initWithPolygon:")
  ck.addProperty @::, "polygon"

new ck.RegisterAttribute MKPolygonView, "MKPolygonView"
exports.MKPolygonView = MKPolygonView
