# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAEAGLLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Accessing the Layer Properties
  ck.objcProperty @::, "drawableProperties"

new ck.RegisterAttribute CAEAGLLayer, "CAEAGLLayer"
exports.CAEAGLLayer = CAEAGLLayer