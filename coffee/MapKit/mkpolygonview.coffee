# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPolygonView = class MKPolygonView extends MKOverlayPathView
  @register()

  # MethodGroup
  initWithPolygon: objc.invokeSelector "initWithPolygon:"
  ck.instanceProperty @, "polygon"
