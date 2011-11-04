# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAAnimation extends NSObject

  # Archiving Properties
  shouldArchiveValueForKey: objc.generateFunctionFromSelector ("shouldArchiveValueForKey:")

  # Providing Default Values for Properties
  @defaultValueForKey: objc.generateFunctionFromSelector ("defaultValueForKey:")

  # Creating an Animation
  @animation: objc.generateFunctionFromSelector ("animation")

  # Animation Attributes
  ck.objcProperty @::, "removedOnCompletion"
  isRemovedOnCompletion: objc.generateFunctionFromSelector ("isRemovedOnCompletion")
  ck.objcProperty @::, "timingFunction"

  # Getting and Setting the Delegate
  ck.objcProperty @::, "delegate"

  # Animation Progress
  animationDidStart: objc.generateFunctionFromSelector ("animationDidStart:")  # delegate method
  animationDidStop: objc.generateFunctionFromSelector ("animationDidStop:finished:")  # delegate method

new ck.RegisterAttribute CAAnimation, "CAAnimation"
exports.CAAnimation = CAAnimation