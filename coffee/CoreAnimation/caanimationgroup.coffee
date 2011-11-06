# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAAnimationGroup extends CAAnimation

  # Grouped Animations
  ck.addProperty @::, "animations"

new ck.RegisterAttribute CAAnimationGroup, "CAAnimationGroup"
exports.CAAnimationGroup = CAAnimationGroup