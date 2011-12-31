# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAPropertyAnimation = class CAPropertyAnimation extends CAAnimation
  @register()

  # Animated Key Path
  ck.instanceProperty @, "keyPath"

  # Property Value Calculation Behavior
  ck.instanceProperty @, "cumulative"
  ck.instanceProperty @, "additive"
  ck.instanceProperty @, "valueFunction"

  # Creating an Animation
  @animationWithKeyPath: objc.invokeSelector "animationWithKeyPath:"
