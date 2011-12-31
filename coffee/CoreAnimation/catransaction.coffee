# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CATransaction = class CATransaction extends foundation.NSObject
  @register()

  # Creating and Committing Transactions
  @begin: objc.invokeSelector "begin"
  @commit: objc.invokeSelector "commit"
  @flush: objc.invokeSelector "flush"

  # Overriding Animation Duration and Timing
  ck.staticProperty @, "animationDuration"
  ck.staticProperty @, "animationTimingFunction"

  # Temporarily Disabling Property Animations
  ck.staticProperty @, "disableActions"

  # Getting and Setting Completion Block Objects
  ck.staticProperty @, "completionBlock"

  # Managing Concurrency
  @lock: objc.invokeSelector "lock"
  @unlock: objc.invokeSelector "unlock"

  # Getting and Setting Transaction Properties
  @setValue: objc.invokeSelector "setValue:forKey:"
  @valueForKey: objc.invokeSelector "valueForKey:"
