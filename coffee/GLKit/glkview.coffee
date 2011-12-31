# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKView = class GLKView extends uikit.UIView
  @register()

  # Initializing the View
  initWithFrameAndContext: objc.invokeSelector "initWithFrame:context:"

  # Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GLKViewDelegate) }

  # Configuring the Framebuffer Object
  ck.instanceProperty @, "drawableColorFormat"
  ck.instanceProperty @, "drawableDepthFormat"
  ck.instanceProperty @, "drawableStencilFormat"
  ck.instanceProperty @, "drawableMultisample"

  # Read-only Framebuffer Properties
  ck.instanceProperty @, "drawableHeight"
  ck.instanceProperty @, "drawableWidth"

  # Drawing Your View’s Contents
  ck.instanceProperty @, "context"
  bindDrawable: objc.invokeSelector "bindDrawable"
  ck.instanceProperty @, "enableSetNeedsDisplay"
  display: objc.invokeSelector "display"
  snapshot: objc.invokeSelector "snapshot"

  # Deleting the View’s Underlying Framebuffer Object
  deleteDrawable: objc.invokeSelector "deleteDrawable"
