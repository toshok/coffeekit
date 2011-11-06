# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CABasicAnimation extends CAAnimation

  # Interpolation Values
  ck.addProperty @::, "fromValue"
  ck.addProperty @::, "toValue"
  ck.addProperty @::, "byValue"

new ck.RegisterAttribute CABasicAnimation, "CABasicAnimation"
exports.CABasicAnimation = CABasicAnimation