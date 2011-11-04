class CAEmitterCell extends NSObject

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Creating and Initializing an Emitter Cell
  @emitterCell: objc.generateFunctionFromSelector ("emitterCell")

  # Providing Emitter Cell Content
  ck.objcProperty @::, "contents"
  ck.objcProperty @::, "contentsRect"
  ck.objcProperty @::, "emitterCells"

  # Setting Emitter Cell Visual Attributes
  ck.objcProperty @::, "enabled"
  ck.objcProperty @::, "color"
  ck.objcProperty @::, "redRange"
  ck.objcProperty @::, "greenRange"
  ck.objcProperty @::, "blueRange"
  ck.objcProperty @::, "alphaRange"
  ck.objcProperty @::, "redSpeed"
  ck.objcProperty @::, "greenSpeed"
  ck.objcProperty @::, "blueSpeed"
  ck.objcProperty @::, "alphaSpeed"
  ck.objcProperty @::, "magnificationFilter"
  ck.objcProperty @::, "minificationFilter"
  ck.objcProperty @::, "minificationFilterBias"
  ck.objcProperty @::, "scale"
  ck.objcProperty @::, "scaleRange"
  ck.objcProperty @::, "name"
  ck.objcProperty @::, "style"

  # Emitter Cell Motion Attributes
  ck.objcProperty @::, "spin"
  ck.objcProperty @::, "spinRange"
  ck.objcProperty @::, "emissionLatitude"
  ck.objcProperty @::, "emissionLongitude"
  ck.objcProperty @::, "emissionRange"

  # Emission Cell Temporal Attributes
  ck.objcProperty @::, "lifetime"
  ck.objcProperty @::, "lifetimeRange"
  ck.objcProperty @::, "birthRate"
  ck.objcProperty @::, "scaleSpeed"
  ck.objcProperty @::, "velocity"
  ck.objcProperty @::, "velocityRange"
  ck.objcProperty @::, "xAcceleration"
  ck.objcProperty @::, "yAcceleration"
  ck.objcProperty @::, "zAcceleration"

  # Key-Value Coding Extensions
  @defaultValueForKey: objc.generateFunctionFromSelector ("defaultValueForKey:")
  shouldArchiveValueForKey: objc.generateFunctionFromSelector ("shouldArchiveValueForKey:")

new ck.RegisterAttribute CAEmitterCell, "CAEmitterCell"
exports.CAEmitterCell = CAEmitterCell