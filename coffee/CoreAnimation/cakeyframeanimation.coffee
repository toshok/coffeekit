class CAKeyFrameAnimation extends CAAnimation

  # Providing Keyframe Values
  ck.objcProperty @::, "path"
  ck.objcProperty @::, "values"

  # Keyframe Timing
  ck.objcProperty @::, "keyTimes"
  ck.objcProperty @::, "timingFunctions"
  ck.objcProperty @::, "calculationMode"

  # Rotation Mode Attribute
  ck.objcProperty @::, "rotationMode"

  # Cubic Mode Attributes
  ck.objcProperty @::, "tensionValues"
  ck.objcProperty @::, "continuityValues"
  ck.objcProperty @::, "biasValues"

new ck.RegisterAttribute CAKeyFrameAnimation, "CAKeyFrameAnimation"
exports.CAKeyFrameAnimation = CAKeyFrameAnimation