class CAMediaTimingFunction extends NSObject

  # Creating Timing Functions
  @functionWithName: objc.generateFunctionFromSelector ("functionWithName:")
  @functionWithControlPoints: objc.generateFunctionFromSelector ("functionWithControlPoints::::")
  initWithControlPoints: objc.generateFunctionFromSelector ("initWithControlPoints::::")

  # Accessing the Control Points
  getControlPointAtIndex: objc.generateFunctionFromSelector ("getControlPointAtIndex:values:")

new ck.RegisterAttribute CAMediaTimingFunction, "CAMediaTimingFunction"
exports.CAMediaTimingFunction = CAMediaTimingFunction