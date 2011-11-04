# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAPropertyAnimation extends CAAnimation

  # Animated Key Path
  ck.objcProperty @::, "keyPath"

  # Property Value Calculation Behavior
  ck.objcProperty @::, "cumulative"
  ck.objcProperty @::, "additive"
  ck.objcProperty @::, "valueFunction"

  # Creating an Animation
  @animationWithKeyPath: objc.generateFunctionFromSelector ("animationWithKeyPath:")

new ck.RegisterAttribute CAPropertyAnimation, "CAPropertyAnimation"
exports.CAPropertyAnimation = CAPropertyAnimation