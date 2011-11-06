# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAPropertyAnimation extends CAAnimation

  # Animated Key Path
  ck.addProperty @::, "keyPath"

  # Property Value Calculation Behavior
  ck.addProperty @::, "cumulative"
  ck.addProperty @::, "additive"
  ck.addProperty @::, "valueFunction"

  # Creating an Animation
  @animationWithKeyPath: objc.invokeSelector "animationWithKeyPath:"

new ck.RegisterAttribute CAPropertyAnimation, "CAPropertyAnimation"
exports.CAPropertyAnimation = CAPropertyAnimation