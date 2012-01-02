# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAMediaTimingFunction = class CAMediaTimingFunction extends foundation.NSObject
  # Creating Timing Functions
  @functionWithName: @nativeSelector "functionWithName:"
  @functionWithControlPoints: @nativeSelector "functionWithControlPoints::::"
  initWithControlPoints: @nativeSelector "initWithControlPoints::::"

  # Accessing the Control Points
  getControlPointAtIndex: @nativeSelector "getControlPointAtIndex:values:"

  @register()
