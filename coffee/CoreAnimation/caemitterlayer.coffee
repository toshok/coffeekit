# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAEmitterLayer = class CAEmitterLayer extends CALayer
  @register()

  # Specifying Particle Emitter Cells
  ck.instanceProperty @, "emitterCells"

  # Emitter Geometry
  ck.instanceProperty @, "renderMode"
  ck.instanceProperty @, "emitterPosition"
  ck.instanceProperty @, "emitterShape"
  ck.instanceProperty @, "emitterZPosition"
  ck.instanceProperty @, "emitterDepth"
  ck.instanceProperty @, "emitterSize"

  # Emitter Cell Attribute Multipliers
  ck.instanceProperty @, "scale"
  ck.instanceProperty @, "seed"
  ck.instanceProperty @, "spin"
  ck.instanceProperty @, "velocity"
  ck.instanceProperty @, "birthRate"
  ck.instanceProperty @, "emitterMode"
  ck.instanceProperty @, "lifetime"
  ck.instanceProperty @, "preservesDepth"
