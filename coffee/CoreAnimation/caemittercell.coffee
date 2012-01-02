# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAEmitterCell = class CAEmitterCell extends foundation.NSObject
  # Creating and Initializing an Emitter Cell
  @emitterCell: @nativeSelector "emitterCell"

  # Providing Emitter Cell Content
  @instanceProperty "contents"
  @instanceProperty "contentsRect"
  @instanceProperty "emitterCells"

  # Setting Emitter Cell Visual Attributes
  @instanceProperty "enabled"
  @instanceProperty "color"
  @instanceProperty "redRange"
  @instanceProperty "greenRange"
  @instanceProperty "blueRange"
  @instanceProperty "alphaRange"
  @instanceProperty "redSpeed"
  @instanceProperty "greenSpeed"
  @instanceProperty "blueSpeed"
  @instanceProperty "alphaSpeed"
  @instanceProperty "magnificationFilter"
  @instanceProperty "minificationFilter"
  @instanceProperty "minificationFilterBias"
  @instanceProperty "scale"
  @instanceProperty "scaleRange"
  @instanceProperty "name"
  @instanceProperty "style"

  # Emitter Cell Motion Attributes
  @instanceProperty "spin"
  @instanceProperty "spinRange"
  @instanceProperty "emissionLatitude"
  @instanceProperty "emissionLongitude"
  @instanceProperty "emissionRange"

  # Emission Cell Temporal Attributes
  @instanceProperty "lifetime"
  @instanceProperty "lifetimeRange"
  @instanceProperty "birthRate"
  @instanceProperty "scaleSpeed"
  @instanceProperty "velocity"
  @instanceProperty "velocityRange"
  @instanceProperty "xAcceleration"
  @instanceProperty "yAcceleration"
  @instanceProperty "zAcceleration"

  # Key-Value Coding Extensions
  @defaultValueForKey: @nativeSelector "defaultValueForKey:"
  shouldArchiveValueForKey: @nativeSelector "shouldArchiveValueForKey:"

  @register()
