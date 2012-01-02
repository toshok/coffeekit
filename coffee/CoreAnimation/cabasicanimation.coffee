# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CABasicAnimation = class CABasicAnimation extends CAAnimation
  # Interpolation Values
  @instanceProperty "fromValue"
  @instanceProperty "toValue"
  @instanceProperty "byValue"

  @register()
