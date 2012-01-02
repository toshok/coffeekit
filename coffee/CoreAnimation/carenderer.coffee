# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CARenderer = class CARenderer extends foundation.NSObject
  # Rendered Layer
  @instanceProperty "layer"

  # Renderer Geometry
  @instanceProperty "bounds"

  # Create a New Renderer
  rendererWithCGLContext: @nativeSelector "rendererWithCGLContext:options:"

  # Render a Frame
  beginFrameAtTime: @nativeSelector "beginFrameAtTime:timeStamp:"
  updateBounds: @nativeSelector "updateBounds"
  addUpdateRect: @nativeSelector "addUpdateRect:"
  render: @nativeSelector "render"
  nextFrameTime: @nativeSelector "nextFrameTime"
  endFrame: @nativeSelector "endFrame"

  @register()
