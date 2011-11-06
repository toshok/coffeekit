# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAEmitterCell extends foundation.NSObject

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Creating and Initializing an Emitter Cell
  @emitterCell: objc.invokeSelector "emitterCell"

  # Providing Emitter Cell Content
  ck.addProperty @::, "contents"
  ck.addProperty @::, "contentsRect"
  ck.addProperty @::, "emitterCells"

  # Setting Emitter Cell Visual Attributes
  ck.addProperty @::, "enabled"
  ck.addProperty @::, "color"
  ck.addProperty @::, "redRange"
  ck.addProperty @::, "greenRange"
  ck.addProperty @::, "blueRange"
  ck.addProperty @::, "alphaRange"
  ck.addProperty @::, "redSpeed"
  ck.addProperty @::, "greenSpeed"
  ck.addProperty @::, "blueSpeed"
  ck.addProperty @::, "alphaSpeed"
  ck.addProperty @::, "magnificationFilter"
  ck.addProperty @::, "minificationFilter"
  ck.addProperty @::, "minificationFilterBias"
  ck.addProperty @::, "scale"
  ck.addProperty @::, "scaleRange"
  ck.addProperty @::, "name"
  ck.addProperty @::, "style"

  # Emitter Cell Motion Attributes
  ck.addProperty @::, "spin"
  ck.addProperty @::, "spinRange"
  ck.addProperty @::, "emissionLatitude"
  ck.addProperty @::, "emissionLongitude"
  ck.addProperty @::, "emissionRange"

  # Emission Cell Temporal Attributes
  ck.addProperty @::, "lifetime"
  ck.addProperty @::, "lifetimeRange"
  ck.addProperty @::, "birthRate"
  ck.addProperty @::, "scaleSpeed"
  ck.addProperty @::, "velocity"
  ck.addProperty @::, "velocityRange"
  ck.addProperty @::, "xAcceleration"
  ck.addProperty @::, "yAcceleration"
  ck.addProperty @::, "zAcceleration"

  # Key-Value Coding Extensions
  @defaultValueForKey: objc.invokeSelector "defaultValueForKey:"
  shouldArchiveValueForKey: objc.invokeSelector "shouldArchiveValueForKey:"

new ck.RegisterAttribute CAEmitterCell, "CAEmitterCell"
exports.CAEmitterCell = CAEmitterCell