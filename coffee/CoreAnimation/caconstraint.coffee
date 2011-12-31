# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAConstraint = class CAConstraint extends foundation.NSObject
  @register()

  # Create a New Constraint
  @constraintWithAttributeAndScaleAndOffset: objc.invokeSelector "constraintWithAttribute:relativeTo:attribute:scale:offset:"
  @constraintWithAttributeAndOffset: objc.invokeSelector "constraintWithAttribute:relativeTo:attribute:offset:"
  @constraintWithAttribute: objc.invokeSelector "constraintWithAttribute:relativeTo:attribute:"
  init: objc.invokeSelector "initWithAttribute:relativeTo:attribute:scale:offset:"

  # Accessing Constraint Values
  ck.instanceProperty @, "attribute"
  ck.instanceProperty @, "offset"
  ck.instanceProperty @, "scale"
  ck.instanceProperty @, "sourceAttribute"
  ck.instanceProperty @, "sourceName"
