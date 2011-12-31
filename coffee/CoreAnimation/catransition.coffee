# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CATransition = class CATransition extends foundation.NSObject
  @register()

  # Transition Start and End Point
  ck.instanceProperty @, "startProgress"
  ck.instanceProperty @, "endProgress"

  # Transition Properties
  ck.instanceProperty @, "type"
  ck.instanceProperty @, "subtype"

  # Custom Transition Filter
  ck.instanceProperty @, "filter"
