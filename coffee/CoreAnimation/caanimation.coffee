# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.CAAnimation = class CAAnimation extends foundation.NSObject
        # Archiving Properties
        shouldArchiveValueForKey: @nativeSelector "shouldArchiveValueForKey:"

        # Providing Default Values for Properties
        @defaultValueForKey: @nativeSelector "defaultValueForKey:"

        # Creating an Animation
        @animation: @nativeSelector "animation"

        # Animation Attributes
        @instanceProperty "removedOnCompletion"
        isRemovedOnCompletion: @nativeSelector "isRemovedOnCompletion"
        @instanceProperty "timingFunction"

        # Getting and Setting the Delegate
        @autoboxProperty "delegate", CAAnimationDelegate
