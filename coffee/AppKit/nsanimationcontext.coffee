# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.NSAnimationContext = class NSAnimationContext extends foundation.NSObject
  @register()

  # Grouping Transactions
  beginGrouping: objc.invokeSelector "beginGrouping"
  endGrouping: objc.invokeSelector "endGrouping"

  # Getting the Current Animation Context
  currentContext: objc.invokeSelector "currentContext"

  # Animation Completion Handlers
  setCompletionHandler: objc.invokeSelector "setCompletionHandler:"
  completionHandler: objc.invokeSelector "completionHandler"
  runAnimationGroup: objc.invokeSelector "runAnimationGroup:completionHandler:"

  # Modifying the Animation Duration
  ck.instanceProperty @, "duration"
  ck.instanceProperty @, "timingFunction"
