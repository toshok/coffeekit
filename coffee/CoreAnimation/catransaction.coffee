# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CATransaction = class CATransaction extends foundation.NSObject
  # Creating and Committing Transactions
  @begin: @nativeSelector "begin"
  @commit: @nativeSelector "commit"
  @flush: @nativeSelector "flush"

  # Overriding Animation Duration and Timing
  @staticProperty "animationDuration"
  @staticProperty "animationTimingFunction"

  # Temporarily Disabling Property Animations
  @staticProperty "disableActions"

  # Getting and Setting Completion Block Objects
  @staticProperty "completionBlock"

  # Managing Concurrency
  @lock: @nativeSelector "lock"
  @unlock: @nativeSelector "unlock"

  # Getting and Setting Transaction Properties
  @setValue: @nativeSelector "setValue:forKey:"
  @valueForKey: @nativeSelector "valueForKey:"

  @register()
