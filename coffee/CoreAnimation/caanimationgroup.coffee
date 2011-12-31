# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAAnimationGroup = class CAAnimationGroup extends CAAnimation
  @register()

  # Grouped Animations
  ck.instanceProperty @, "animations"
