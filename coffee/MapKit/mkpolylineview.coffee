# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKPolylineView = class MKPolylineView extends MKOverlayPathView
  @register()

  # MethodGroup
  initWithPolyline: objc.invokeSelector "initWithPolyline:"
  ck.instanceProperty @, "polyline"
