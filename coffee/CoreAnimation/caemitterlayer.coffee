# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.CAEmitterLayer = class CAEmitterLayer extends CALayer
        # Specifying Particle Emitter Cells
        @instanceProperty "emitterCells"

        # Emitter Geometry
        @instanceProperty "renderMode"
        @instanceProperty "emitterPosition"
        @instanceProperty "emitterShape"
        @instanceProperty "emitterZPosition"
        @instanceProperty "emitterDepth"
        @instanceProperty "emitterSize"

        # Emitter Cell Attribute Multipliers
        @instanceProperty "scale"
        @instanceProperty "seed"
        @instanceProperty "spin"
        @instanceProperty "velocity"
        @instanceProperty "birthRate"
        @instanceProperty "emitterMode"
        @instanceProperty "lifetime"
        @instanceProperty "preservesDepth"
