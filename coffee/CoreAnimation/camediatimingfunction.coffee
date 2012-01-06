# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAMediaTimingFunction = class CAMediaTimingFunction extends foundation.NSObject
  # Creating Timing Functions
  @functionWithName: @nativeSelector "functionWithName:"
  @functionWithControlPoints: @nativeSelector "functionWithControlPoints::::"
  initWithControlPoints: @nativeSelector("initWithControlPoints::::").
                                 returns( -> CAMediaTimingFunction ).
                                  params( -> [ ck.sig.Float, ck.sig.Float, ck.sig.Float, ck.sig.Float ] )

  # Accessing the Control Points
  getControlPointAtIndex: @nativeSelector("getControlPointAtIndex:values:").
                                 returns( -> ck.sig.Void ).
                                  params( -> [ ck.sig.ULong, (ck.sig.ArrayOf ck.sig.Float) ] )

  @register()
