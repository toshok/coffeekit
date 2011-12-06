# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAAnimation extends foundation.NSObject

  # Archiving Properties
  shouldArchiveValueForKey: objc.invokeSelector "shouldArchiveValueForKey:"

  # Providing Default Values for Properties
  @defaultValueForKey: objc.invokeSelector "defaultValueForKey:"

  # Creating an Animation
  @animation: objc.invokeSelector "animation"

  # Animation Attributes
  ck.addProperty @::, "removedOnCompletion"
  isRemovedOnCompletion: objc.invokeSelector "isRemovedOnCompletion"
  ck.addProperty @::, "timingFunction"

  # Getting and Setting the Delegate
  ck.addProperty @::, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, CAAnimationDelegate) }

new ck.RegisterAttribute CAAnimation, "CAAnimation"
exports.CAAnimation = CAAnimation