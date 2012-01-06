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
                         returnType( -> ck.sig.Void ).
                         paramTypes( -> [ ck.sig.Double, (ck.sig.PointerTo ck.sig.CVTimeStamp) ] ) # XXX arg1 should be CFTimeInterval

  updateBounds: @nativeSelector("updateBounds").
                     returnType( -> foundation.NSRect )
  addUpdateRect: @nativeSelector("addUpdateRect:").
                      returnType( -> ck.sig.Void ).
                      paramTypes( -> [ foundation.NSRect ] )

  render: @nativeSelector("render").
               returnType( -> ck.sig.Void )
  nextFrameTime: @nativeSelector("nextFrameTime").
                      returnType( -> ck.sig.Double ) # XXX CFTimeInterval
  endFrame: @nativeSelector("endFrame").
                 returnType( -> ck.sig.Void )

  @register()
