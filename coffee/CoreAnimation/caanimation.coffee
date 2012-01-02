# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAAnimation = class CAAnimation extends foundation.NSObject
  # Archiving Properties
  shouldArchiveValueForKey: objc.invokeSelector "shouldArchiveValueForKey:"

  # Providing Default Values for Properties
  @defaultValueForKey: objc.invokeSelector "defaultValueForKey:"

  # Creating an Animation
  @animation: objc.invokeSelector "animation"

  # Animation Attributes
  @instanceProperty "removedOnCompletion"
  isRemovedOnCompletion: objc.invokeSelector "isRemovedOnCompletion"
  @instanceProperty "timingFunction"

  # Getting and Setting the Delegate
  @autoboxProperty "delegate", CAAnimationDelegate

  @register()
