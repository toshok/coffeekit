# This file is part of coffeekit.  for licensing information, see the LICENSE file

ck.register exports.NSAnimationContext = class NSAnimationContext extends foundation.NSObject
  # Grouping Transactions
  beginGrouping: @nativeSelector "beginGrouping"
  endGrouping: @nativeSelector "endGrouping"

  # Getting the Current Animation Context
  currentContext: @nativeSelector "currentContext"

  # Animation Completion Handlers
  setCompletionHandler: @nativeSelector "setCompletionHandler:"
  completionHandler: @nativeSelector "completionHandler"
  runAnimationGroup: @nativeSelector "runAnimationGroup:completionHandler:"

  # Modifying the Animation Duration
  @instanceProperty "duration"
  @instanceProperty "timingFunction"
