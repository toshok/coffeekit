# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.CAConstraint = class CAConstraint extends foundation.NSObject
        # Create a New Constraint
        @constraintWithAttributeAndScaleAndOffset: @nativeSelector "constraintWithAttribute:relativeTo:attribute:scale:offset:"
        @constraintWithAttributeAndOffset: @nativeSelector "constraintWithAttribute:relativeTo:attribute:offset:"
        @constraintWithAttribute: @nativeSelector "constraintWithAttribute:relativeTo:attribute:"
        init: @nativeSelector "initWithAttribute:relativeTo:attribute:scale:offset:"

        # Accessing Constraint Values
        @instanceProperty "attribute"
        @instanceProperty "offset"
        @instanceProperty "scale"
        @instanceProperty "sourceAttribute"
        @instanceProperty "sourceName"
