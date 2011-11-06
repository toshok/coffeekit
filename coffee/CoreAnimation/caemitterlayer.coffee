# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAEmitterLayer extends CALayer

  constructor: (handle) -> super (if handle then handle else objc.createInstance (@.constructor.name))

  # Specifying Particle Emitter Cells
  ck.addProperty @::, "emitterCells"

  # Emitter Geometry
  ck.addProperty @::, "renderMode"
  ck.addProperty @::, "emitterPosition"
  ck.addProperty @::, "emitterShape"
  ck.addProperty @::, "emitterZPosition"
  ck.addProperty @::, "emitterDepth"
  ck.addProperty @::, "emitterSize"

  # Emitter Cell Attribute Multipliers
  ck.addProperty @::, "scale"
  ck.addProperty @::, "seed"
  ck.addProperty @::, "spin"
  ck.addProperty @::, "velocity"
  ck.addProperty @::, "birthRate"
  ck.addProperty @::, "emitterMode"
  ck.addProperty @::, "lifetime"
  ck.addProperty @::, "preservesDepth"

new ck.RegisterAttribute CAEmitterLayer, "CAEmitterLayer"
exports.CAEmitterLayer = CAEmitterLayer