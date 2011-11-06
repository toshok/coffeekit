# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAMediaTimingFunction extends foundation.NSObject

  # Creating Timing Functions
  @functionWithName: objc.invokeSelector "functionWithName:"
  @functionWithControlPoints: objc.invokeSelector "functionWithControlPoints::::"
  initWithControlPoints: objc.invokeSelector "initWithControlPoints::::"

  # Accessing the Control Points
  getControlPointAtIndex: objc.invokeSelector "getControlPointAtIndex:values:"

new ck.RegisterAttribute CAMediaTimingFunction, "CAMediaTimingFunction"
exports.CAMediaTimingFunction = CAMediaTimingFunction