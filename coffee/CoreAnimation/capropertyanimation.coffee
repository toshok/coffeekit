# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAPropertyAnimation = class CAPropertyAnimation extends CAAnimation
  # Animated Key Path
  @instanceProperty "keyPath"

  # Property Value Calculation Behavior
  @instanceProperty "cumulative"
  @instanceProperty "additive"
  @instanceProperty "valueFunction"

  # Creating an Animation
  @animationWithKeyPath: @nativeSelector "animationWithKeyPath:"

  @register()
