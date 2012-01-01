# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAMediaTimingFunction = class CAMediaTimingFunction extends foundation.NSObject
  @register()

  # Creating Timing Functions
  @functionWithName: objc.invokeSelector "functionWithName:"
  @functionWithControlPoints: objc.invokeSelector "functionWithControlPoints::::"
  initWithControlPoints: objc.invokeSelector "initWithControlPoints::::"

  # Accessing the Control Points
  getControlPointAtIndex: objc.invokeSelector "getControlPointAtIndex:values:"
