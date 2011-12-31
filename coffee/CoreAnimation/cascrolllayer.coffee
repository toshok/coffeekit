# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAScrollLayer = class CAScrollLayer extends CALayer
  @register()

  # Scrolling Constraints
  ck.instanceProperty @, "scrollMode"

  # Scrolling the Layer
  scrollToPoint: objc.invokeSelector "scrollToPoint:"
  scrollToRect: objc.invokeSelector "scrollToRect:"
