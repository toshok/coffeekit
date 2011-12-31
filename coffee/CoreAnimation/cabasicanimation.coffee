# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CABasicAnimation = class CABasicAnimation extends CAAnimation
  @register()

  # Interpolation Values
  ck.instanceProperty @, "fromValue"
  ck.instanceProperty @, "toValue"
  ck.instanceProperty @, "byValue"
