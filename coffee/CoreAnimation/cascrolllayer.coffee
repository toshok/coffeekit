# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAScrollLayer = class CAScrollLayer extends CALayer
  # Scrolling Constraints
  @instanceProperty "scrollMode"

  # Scrolling the Layer
  scrollToPoint: @nativeSelector("scrollToPoint:").
                      returnType( -> ck.sig.Void ).
                      paramTypes( -> [ foundation.NSPoint ] )
  scrollToRect: @nativeSelector("scrollToRect:").
                     returnType( -> ck.sig.Void ).
                     paramTypes( -> [ foundation.NSRect ] )

  @register()
