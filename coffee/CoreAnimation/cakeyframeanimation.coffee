# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CAKeyFrameAnimation extends CAAnimation

  # Providing Keyframe Values
  ck.addProperty @::, "path"
  ck.addProperty @::, "values"

  # Keyframe Timing
  ck.addProperty @::, "keyTimes"
  ck.addProperty @::, "timingFunctions"
  ck.addProperty @::, "calculationMode"

  # Rotation Mode Attribute
  ck.addProperty @::, "rotationMode"

  # Cubic Mode Attributes
  ck.addProperty @::, "tensionValues"
  ck.addProperty @::, "continuityValues"
  ck.addProperty @::, "biasValues"

new ck.RegisterAttribute CAKeyFrameAnimation, "CAKeyFrameAnimation"
exports.CAKeyFrameAnimation = CAKeyFrameAnimation