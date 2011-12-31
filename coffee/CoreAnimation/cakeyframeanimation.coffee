# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CAKeyFrameAnimation = class CAKeyFrameAnimation extends CAAnimation
  @register()

  # Providing Keyframe Values
  ck.instanceProperty @, "path"
  ck.instanceProperty @, "values"

  # Keyframe Timing
  ck.instanceProperty @, "keyTimes"
  ck.instanceProperty @, "timingFunctions"
  ck.instanceProperty @, "calculationMode"

  # Rotation Mode Attribute
  ck.instanceProperty @, "rotationMode"

  # Cubic Mode Attributes
  ck.instanceProperty @, "tensionValues"
  ck.instanceProperty @, "continuityValues"
  ck.instanceProperty @, "biasValues"
