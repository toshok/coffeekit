class CAScrollLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Scrolling Constraints
  ck.objcProperty @::, "scrollMode"

  # Scrolling the Layer
  scrollToPoint: objc.generateFunctionFromSelector ("scrollToPoint:")
  scrollToRect: objc.generateFunctionFromSelector ("scrollToRect:")

new ck.RegisterAttribute CAScrollLayer, "CAScrollLayer"
exports.CAScrollLayer = CAScrollLayer