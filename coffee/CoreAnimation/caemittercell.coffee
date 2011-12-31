# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAEmitterCell = class CAEmitterCell extends foundation.NSObject
  @register()

  # Creating and Initializing an Emitter Cell
  @emitterCell: objc.invokeSelector "emitterCell"

  # Providing Emitter Cell Content
  ck.instanceProperty @, "contents"
  ck.instanceProperty @, "contentsRect"
  ck.instanceProperty @, "emitterCells"

  # Setting Emitter Cell Visual Attributes
  ck.instanceProperty @, "enabled"
  ck.instanceProperty @, "color"
  ck.instanceProperty @, "redRange"
  ck.instanceProperty @, "greenRange"
  ck.instanceProperty @, "blueRange"
  ck.instanceProperty @, "alphaRange"
  ck.instanceProperty @, "redSpeed"
  ck.instanceProperty @, "greenSpeed"
  ck.instanceProperty @, "blueSpeed"
  ck.instanceProperty @, "alphaSpeed"
  ck.instanceProperty @, "magnificationFilter"
  ck.instanceProperty @, "minificationFilter"
  ck.instanceProperty @, "minificationFilterBias"
  ck.instanceProperty @, "scale"
  ck.instanceProperty @, "scaleRange"
  ck.instanceProperty @, "name"
  ck.instanceProperty @, "style"

  # Emitter Cell Motion Attributes
  ck.instanceProperty @, "spin"
  ck.instanceProperty @, "spinRange"
  ck.instanceProperty @, "emissionLatitude"
  ck.instanceProperty @, "emissionLongitude"
  ck.instanceProperty @, "emissionRange"

  # Emission Cell Temporal Attributes
  ck.instanceProperty @, "lifetime"
  ck.instanceProperty @, "lifetimeRange"
  ck.instanceProperty @, "birthRate"
  ck.instanceProperty @, "scaleSpeed"
  ck.instanceProperty @, "velocity"
  ck.instanceProperty @, "velocityRange"
  ck.instanceProperty @, "xAcceleration"
  ck.instanceProperty @, "yAcceleration"
  ck.instanceProperty @, "zAcceleration"

  # Key-Value Coding Extensions
  @defaultValueForKey: objc.invokeSelector "defaultValueForKey:"
  shouldArchiveValueForKey: objc.invokeSelector "shouldArchiveValueForKey:"
