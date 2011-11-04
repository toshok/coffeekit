class CAEAGLLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Accessing the Layer Properties
  ck.objcProperty @::, "drawableProperties"

new ck.RegisterAttribute CAEAGLLayer, "CAEAGLLayer"
exports.CAEAGLLayer = CAEAGLLayer