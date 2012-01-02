# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CADisplayLink = class CADisplayLink extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else throw "use @displayLink instead of new CADisplayLink")

  # Creating Instances
  @displayLink: objc.invokeSelector "displayLinkWithTarget:selector:"

  # Scheduling the Display Link to Send Notifications
  addToRunLoop: @nativeSelector "addToRunLoop:forMode:"
  removeFromRunLoop: @nativeSelector "removeFromRunLoop:forMode:"
  invalidate: @nativeSelector "invalidate"

  # Configuring the Display Link
  @instanceProperty "duration"
  @instanceProperty "frameInterval"
  @instanceProperty "paused"
  @instanceProperty "timestamp"

  @register()
