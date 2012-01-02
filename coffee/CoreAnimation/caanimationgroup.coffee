# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAAnimationGroup = class CAAnimationGroup extends CAAnimation
  # Grouped Animations
  @instanceProperty "animations"

  @register()
