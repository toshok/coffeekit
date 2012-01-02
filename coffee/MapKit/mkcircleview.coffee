# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.MKCircleView = class MKCircleView extends MKOverlayPathView
  # MethodGroup
  initWithCircle: @nativeSelector "initWithCircle:"
  @instanceProperty "circle"

  @register()
