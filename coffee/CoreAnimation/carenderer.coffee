# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CARenderer = class CARenderer extends foundation.NSObject
  # Rendered Layer
  @instanceProperty "layer"

  # Renderer Geometry
  @instanceProperty "bounds"

  # Create a New Renderer
  @rendererWithCGLContext: @nativeSelector "rendererWithCGLContext:options:"

  # Render a Frame
  beginFrameAtTime: @nativeSelector("beginFrameAtTime:timeStamp:").
                            returns( -> ck.sig.Void ).
                             params( -> [ ck.sig.Double, (ck.sig.PointerTo ck.sig.CVTimeStamp) ] ) # XXX arg1 should be CFTimeInterval

  updateBounds: @nativeSelector("updateBounds").
                        returns( -> foundation.NSRect )
  addUpdateRect: @nativeSelector("addUpdateRect:").
                         returns( -> ck.sig.Void ).
                          params( -> [ foundation.NSRect ] )

  render: @nativeSelector("render").
                  returns( -> ck.sig.Void )
  nextFrameTime: @nativeSelector("nextFrameTime").
                         returns( -> ck.sig.Double ) # XXX CFTimeInterval
  endFrame: @nativeSelector("endFrame").
                    returns( -> ck.sig.Void )

  @register()
