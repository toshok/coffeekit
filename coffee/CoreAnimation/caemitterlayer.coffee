# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAEmitterLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Specifying Particle Emitter Cells
  ck.objcProperty @::, "emitterCells"

  # Emitter Geometry
  ck.objcProperty @::, "renderMode"
  ck.objcProperty @::, "emitterPosition"
  ck.objcProperty @::, "emitterShape"
  ck.objcProperty @::, "emitterZPosition"
  ck.objcProperty @::, "emitterDepth"
  ck.objcProperty @::, "emitterSize"

  # Emitter Cell Attribute Multipliers
  ck.objcProperty @::, "scale"
  ck.objcProperty @::, "seed"
  ck.objcProperty @::, "spin"
  ck.objcProperty @::, "velocity"
  ck.objcProperty @::, "birthRate"
  ck.objcProperty @::, "emitterMode"
  ck.objcProperty @::, "lifetime"
  ck.objcProperty @::, "preservesDepth"

new ck.RegisterAttribute CAEmitterLayer, "CAEmitterLayer"
exports.CAEmitterLayer = CAEmitterLayer