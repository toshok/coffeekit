# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CATransition = class CATransition extends foundation.NSObject
  # Transition Start and End Point
  @instanceProperty "startProgress"
  @instanceProperty "endProgress"

  # Transition Properties
  @instanceProperty "type"
  @instanceProperty "subtype"

  # Custom Transition Filter
  @instanceProperty "filter"

  @register()
