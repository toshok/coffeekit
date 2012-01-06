# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAScrollLayer = class CAScrollLayer extends CALayer
  # Scrolling Constraints
  @instanceProperty "scrollMode"

  # Scrolling the Layer
  scrollToPoint: @nativeSelector("scrollToPoint:").
                         returns( -> ck.sig.Void ).
                          params( -> [ foundation.NSPoint ] )
  scrollToRect: @nativeSelector("scrollToRect:").
                        returns( -> ck.sig.Void ).
                         params( -> [ foundation.NSRect ] )

  @register()
