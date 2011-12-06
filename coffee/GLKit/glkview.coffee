# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GLKView extends uikit.UIView
  constructor: (handle) -> super (if handle then handle else objc.allocInstance (@.constructor.name))

  # Initializing the View
  initWithFrameAndContext: objc.invokeSelector ("initWithFrame:context:")

  # Delegate
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GLKViewDelegate) }

  # Configuring the Framebuffer Object
  ck.addProperty @::, "drawableColorFormat"
  ck.addProperty @::, "drawableDepthFormat"
  ck.addProperty @::, "drawableStencilFormat"
  ck.addProperty @::, "drawableMultisample"

  # Read-only Framebuffer Properties
  ck.addProperty @::, "drawableHeight"
  ck.addProperty @::, "drawableWidth"

  # Drawing Your View’s Contents
  ck.addProperty @::, "context"
  bindDrawable: objc.invokeSelector ("bindDrawable")
  ck.addProperty @::, "enableSetNeedsDisplay"
  display: objc.invokeSelector ("display")
  snapshot: objc.invokeSelector ("snapshot")

  # Deleting the View’s Underlying Framebuffer Object
  deleteDrawable: objc.invokeSelector ("deleteDrawable")

new ck.RegisterAttribute GLKView, "GLKView"
exports.GLKView = GLKView
