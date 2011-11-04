# This file is part of coffeekit.  for licensing information, see the LICENSE file

class CADisplayLink extends foundation.NSObject

  constructor: -> throw "use @displayLink instead of new CADisplayLink"

  # Creating Instances
  @displayLink: objc.generateFunctionFromSelector ("displayLinkWithTarget:selector:")

  # Scheduling the Display Link to Send Notifications
  addToRunLoop: objc.generateFunctionFromSelector ("addToRunLoop:forMode:")
  removeFromRunLoop: objc.generateFunctionFromSelector ("removeFromRunLoop:forMode:")
  invalidate: objc.generateFunctionFromSelector ("invalidate")

  # Configuring the Display Link
  ck.objcProperty @::, "duration"
  ck.objcProperty @::, "frameInterval"
  ck.objcProperty @::, "paused"
  ck.objcProperty @::, "timestamp"

new ck.RegisterAttribute CADisplayLink, "CADisplayLink"
exports.CADisplayLink = CADisplayLink

