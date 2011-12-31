# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAAnimation = class CAAnimation extends foundation.NSObject
  @register()

  # Archiving Properties
  shouldArchiveValueForKey: objc.invokeSelector "shouldArchiveValueForKey:"

  # Providing Default Values for Properties
  @defaultValueForKey: objc.invokeSelector "defaultValueForKey:"

  # Creating an Animation
  @animation: objc.invokeSelector "animation"

  # Animation Attributes
  ck.instanceProperty @, "removedOnCompletion"
  isRemovedOnCompletion: objc.invokeSelector "isRemovedOnCompletion"
  ck.instanceProperty @, "timingFunction"

  # Getting and Setting the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, CAAnimationDelegate) }
