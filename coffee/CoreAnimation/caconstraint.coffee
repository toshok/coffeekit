# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAConstraint extends foundation.NSObject

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Create a New Constraint
  @constraintWithAttributeAndScaleAndOffset: objc.invokeSelector "constraintWithAttribute:relativeTo:attribute:scale:offset:"
  @constraintWithAttributeAndOffset: objc.invokeSelector "constraintWithAttribute:relativeTo:attribute:offset:"
  @constraintWithAttribute: objc.invokeSelector "constraintWithAttribute:relativeTo:attribute:"
  init: objc.invokeSelector "initWithAttribute:relativeTo:attribute:scale:offset:"

  # Accessing Constraint Values
  ck.addProperty @::, "attribute"
  ck.addProperty @::, "offset"
  ck.addProperty @::, "scale"
  ck.addProperty @::, "sourceAttribute"
  ck.addProperty @::, "sourceName"

new ck.RegisterAttribute CAConstraint, "CAConstraint"
exports.CAConstraint = CAConstraint