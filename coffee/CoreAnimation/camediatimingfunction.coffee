# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAMediaTimingFunction = class CAMediaTimingFunction extends foundation.NSObject
  # Creating Timing Functions
  @functionWithName: @nativeSelector "functionWithName:"
  @functionWithControlPoints: @nativeSelector "functionWithControlPoints::::"
  initWithControlPoints: @nativeSelector("initWithControlPoints::::").
                              returnType( -> CAMediaTimingFunction ).
                              paramTypes( -> [ ck.sig.Float, ck.sig.Float, ck.sig.Float, ck.sig.Float ] )

  # Accessing the Control Points
  getControlPointAtIndex: @nativeSelector("getControlPointAtIndex:values:").
                              returnType( -> ck.sig.Void ).
                              paramTypes( -> [ ck.sig.ULong, (ck.sig.ArrayOf ck.sig.Float) ] )

  @register()
