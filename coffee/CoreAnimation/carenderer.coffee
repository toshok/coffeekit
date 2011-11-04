class CARenderer extends NSObject

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Rendered Layer
  ck.objcProperty @::, "layer"

  # Renderer Geometry
  ck.objcProperty @::, "bounds"

  # Create a New Renderer
  rendererWithCGLContext: objc.generateFunctionFromSelector ("rendererWithCGLContext:options:")

  # Render a Frame
  beginFrameAtTime: objc.generateFunctionFromSelector ("beginFrameAtTime:timeStamp:")
  updateBounds: objc.generateFunctionFromSelector ("updateBounds")
  addUpdateRect: objc.generateFunctionFromSelector ("addUpdateRect:")
  render: objc.generateFunctionFromSelector ("render")
  nextFrameTime: objc.generateFunctionFromSelector ("nextFrameTime")
  endFrame: objc.generateFunctionFromSelector ("endFrame")

new ck.RegisterAttribute CARenderer, "CARenderer"
exports.CARenderer = CARenderer