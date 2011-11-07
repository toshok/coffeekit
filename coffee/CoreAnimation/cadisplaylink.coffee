# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CADisplayLink extends foundation.NSObject

  constructor: (handle) -> super (if handle then handle else throw "use @displayLink instead of new CADisplayLink")

  # Creating Instances
  @displayLink: objc.invokeSelector "displayLinkWithTarget:selector:"

  # Scheduling the Display Link to Send Notifications
  addToRunLoop: objc.invokeSelector "addToRunLoop:forMode:"
  removeFromRunLoop: objc.invokeSelector "removeFromRunLoop:forMode:"
  invalidate: objc.invokeSelector "invalidate"

  # Configuring the Display Link
  ck.addProperty @::, "duration"
  ck.addProperty @::, "frameInterval"
  ck.addProperty @::, "paused"
  ck.addProperty @::, "timestamp"

new ck.RegisterAttribute CADisplayLink, "CADisplayLink"
exports.CADisplayLink = CADisplayLink

