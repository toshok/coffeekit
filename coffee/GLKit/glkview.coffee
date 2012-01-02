# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GLKView = class GLKView extends uikit.UIView
  # Initializing the View
  initWithFrameAndContext: @nativeSelector "initWithFrame:context:"

  # Delegate
  @autoboxProperty "delegate", GLKViewDelegate

  # Configuring the Framebuffer Object
  @instanceProperty "drawableColorFormat"
  @instanceProperty "drawableDepthFormat"
  @instanceProperty "drawableStencilFormat"
  @instanceProperty "drawableMultisample"

  # Read-only Framebuffer Properties
  @instanceProperty "drawableHeight"
  @instanceProperty "drawableWidth"

  # Drawing Your View’s Contents
  @instanceProperty "context"
  bindDrawable: @nativeSelector "bindDrawable"
  @instanceProperty "enableSetNeedsDisplay"
  display: @nativeSelector "display"
  snapshot: @nativeSelector "snapshot"

  # Deleting the View’s Underlying Framebuffer Object
  deleteDrawable: @nativeSelector "deleteDrawable"

  @register()
