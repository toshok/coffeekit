# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKCircleView = class MKCircleView extends MKOverlayPathView
  @register()

  # MethodGroup
  initWithCircle: objc.invokeSelector "initWithCircle:"
  ck.instanceProperty @, "circle"
