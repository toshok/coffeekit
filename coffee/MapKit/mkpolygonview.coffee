# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPolygonView = class MKPolygonView extends MKOverlayPathView
  # MethodGroup
  initWithPolygon: @nativeSelector "initWithPolygon:"
  @instanceProperty "polygon"

  @register()
