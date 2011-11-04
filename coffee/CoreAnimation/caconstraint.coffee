class CAConstraint extends NSObject

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Create a New Constraint
  @constraintWithAttributeAndScaleAndOffset: objc.generateFunctionFromSelector ("constraintWithAttribute:relativeTo:attribute:scale:offset:")
  @constraintWithAttributeAndOffset: objc.generateFunctionFromSelector ("constraintWithAttribute:relativeTo:attribute:offset:")
  @constraintWithAttribute: objc.generateFunctionFromSelector ("constraintWithAttribute:relativeTo:attribute:")
  init: objc.generateFunctionFromSelector ("initWithAttribute:relativeTo:attribute:scale:offset:")

  # Accessing Constraint Values
  ck.objcProperty @::, "attribute"
  ck.objcProperty @::, "offset"
  ck.objcProperty @::, "scale"
  ck.objcProperty @::, "sourceAttribute"
  ck.objcProperty @::, "sourceName"

new ck.RegisterAttribute CAConstraint, "CAConstraint"
exports.CAConstraint = CAConstraint