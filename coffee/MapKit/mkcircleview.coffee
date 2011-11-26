# This file is part of coffeekit.  for licensing information, see the LICENSE file

class MKCircleView extends MKOverlayPathView
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # MethodGroup
  initWithCircle: objc.invokeSelector ("initWithCircle:")
  ck.addProperty @::, "circle"

new ck.RegisterAttribute MKCircleView, "MKCircleView"
exports.MKCircleView = MKCircleView
