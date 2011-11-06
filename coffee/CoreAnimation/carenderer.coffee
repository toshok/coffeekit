# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CARenderer extends foundation.NSObject

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Rendered Layer
  ck.addProperty @::, "layer"

  # Renderer Geometry
  ck.addProperty @::, "bounds"

  # Create a New Renderer
  rendererWithCGLContext: objc.invokeSelector "rendererWithCGLContext:options:"

  # Render a Frame
  beginFrameAtTime: objc.invokeSelector "beginFrameAtTime:timeStamp:"
  updateBounds: objc.invokeSelector "updateBounds"
  addUpdateRect: objc.invokeSelector "addUpdateRect:"
  render: objc.invokeSelector "render"
  nextFrameTime: objc.invokeSelector "nextFrameTime"
  endFrame: objc.invokeSelector "endFrame"

new ck.RegisterAttribute CARenderer, "CARenderer"
exports.CARenderer = CARenderer