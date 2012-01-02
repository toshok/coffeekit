# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPolylineView = class MKPolylineView extends MKOverlayPathView
  # MethodGroup
  initWithPolyline: @nativeSelector "initWithPolyline:"
  @instanceProperty "polyline"

  @register()
