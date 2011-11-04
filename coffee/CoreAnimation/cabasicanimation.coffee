# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CABasicAnimation extends CAAnimation

  # Interpolation Values
  ck.objcProperty @::, "fromValue"
  ck.objcProperty @::, "toValue"
  ck.objcProperty @::, "byValue"

new ck.RegisterAttribute CABasicAnimation, "CABasicAnimation"
exports.CABasicAnimation = CABasicAnimation