# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.CAKeyFrameAnimation = class CAKeyFrameAnimation extends CAAnimation
        # Providing Keyframe Values
        @instanceProperty "path"
        @instanceProperty "values"

        # Keyframe Timing
        @instanceProperty "keyTimes"
        @instanceProperty "timingFunctions"
        @instanceProperty "calculationMode"

        # Rotation Mode Attribute
        @instanceProperty "rotationMode"

        # Cubic Mode Attributes
        @instanceProperty "tensionValues"
        @instanceProperty "continuityValues"
        @instanceProperty "biasValues"
