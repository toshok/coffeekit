# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAScrollLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Scrolling Constraints
  ck.addProperty @::, "scrollMode"

  # Scrolling the Layer
  scrollToPoint: objc.invokeSelector "scrollToPoint:"
  scrollToRect: objc.invokeSelector "scrollToRect:"

new ck.RegisterAttribute CAScrollLayer, "CAScrollLayer"
exports.CAScrollLayer = CAScrollLayer