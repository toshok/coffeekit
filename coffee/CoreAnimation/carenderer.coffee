# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CARenderer = class CARenderer extends foundation.NSObject
  @register()

  # Rendered Layer
  ck.instanceProperty @, "layer"

  # Renderer Geometry
  ck.instanceProperty @, "bounds"

  # Create a New Renderer
  rendererWithCGLContext: objc.invokeSelector "rendererWithCGLContext:options:"

  # Render a Frame
  beginFrameAtTime: objc.invokeSelector "beginFrameAtTime:timeStamp:"
  updateBounds: objc.invokeSelector "updateBounds"
  addUpdateRect: objc.invokeSelector "addUpdateRect:"
  render: objc.invokeSelector "render"
  nextFrameTime: objc.invokeSelector "nextFrameTime"
  endFrame: objc.invokeSelector "endFrame"
