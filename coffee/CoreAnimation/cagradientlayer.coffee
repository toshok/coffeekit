# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.CAGradientLayer = class CAGradientLayer extends CALayer
        # Gradient Style Properties
        @instanceProperty "colors"
        @instanceProperty "locations"
        @instanceProperty "endPoint"
        @instanceProperty "startPoint"
        @instanceProperty "type"
