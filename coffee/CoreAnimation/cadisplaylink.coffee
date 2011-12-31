# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CADisplayLink = class CADisplayLink extends foundation.NSObject
  @register()

  constructor: (handle) -> super (if handle then handle else throw "use @displayLink instead of new CADisplayLink")

  # Creating Instances
  @displayLink: objc.invokeSelector "displayLinkWithTarget:selector:"

  # Scheduling the Display Link to Send Notifications
  addToRunLoop: objc.invokeSelector "addToRunLoop:forMode:"
  removeFromRunLoop: objc.invokeSelector "removeFromRunLoop:forMode:"
  invalidate: objc.invokeSelector "invalidate"

  # Configuring the Display Link
  ck.instanceProperty @, "duration"
  ck.instanceProperty @, "frameInterval"
  ck.instanceProperty @, "paused"
  ck.instanceProperty @, "timestamp"

