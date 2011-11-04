class CATransformLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Hit Testing
  hitTest: objc.generateFunctionFromSelector ("hitTest:")

new ck.RegisterAttribute CATransformLayer, "CATransformLayer"
exports.CATransformLayer = CATransformLayer