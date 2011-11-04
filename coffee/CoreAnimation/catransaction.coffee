# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CATransaction extends NSObject

  # Creating and Committing Transactions
  @begin: objc.generateFunctionFromSelector ("begin")
  @commit: objc.generateFunctionFromSelector ("commit")
  @flush: objc.generateFunctionFromSelector ("flush")

  # Overriding Animation Duration and Timing
  ck.objcProperty @, "animationDuration"
  ck.objcProperty @, "animationTimingFunction"

  # Temporarily Disabling Property Animations
  ck.objcProperty @, "disableActions"

  # Getting and Setting Completion Block Objects
  ck.objcProperty @, "completionBlock"

  # Managing Concurrency
  @lock: objc.generateFunctionFromSelector ("lock")
  @unlock: objc.generateFunctionFromSelector ("unlock")

  # Getting and Setting Transaction Properties
  @setValue: objc.generateFunctionFromSelector ("setValue:forKey:")
  @valueForKey: objc.generateFunctionFromSelector ("valueForKey:")

new ck.RegisterAttribute CATransaction, "CATransaction"
exports.CATransaction = CATransaction