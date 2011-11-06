# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CATransformLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Hit Testing
  hitTest: objc.invokeSelector "hitTest:"

new ck.RegisterAttribute CATransformLayer, "CATransformLayer"
exports.CATransformLayer = CATransformLayer