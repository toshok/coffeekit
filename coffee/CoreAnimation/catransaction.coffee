# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CATransaction extends foundation.NSObject

  # Creating and Committing Transactions
  @begin: objc.invokeSelector "begin"
  @commit: objc.invokeSelector "commit"
  @flush: objc.invokeSelector "flush"

  # Overriding Animation Duration and Timing
  ck.addProperty @, "animationDuration"
  ck.addProperty @, "animationTimingFunction"

  # Temporarily Disabling Property Animations
  ck.addProperty @, "disableActions"

  # Getting and Setting Completion Block Objects
  ck.addProperty @, "completionBlock"

  # Managing Concurrency
  @lock: objc.invokeSelector "lock"
  @unlock: objc.invokeSelector "unlock"

  # Getting and Setting Transaction Properties
  @setValue: objc.invokeSelector "setValue:forKey:"
  @valueForKey: objc.invokeSelector "valueForKey:"

new ck.RegisterAttribute CATransaction, "CATransaction"
exports.CATransaction = CATransaction