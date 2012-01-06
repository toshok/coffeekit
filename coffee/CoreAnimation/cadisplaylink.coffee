# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.CADisplayLink = class CADisplayLink extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else throw "use @displayLink instead of new CADisplayLink")

  # Creating Instances
  @displayLink: objc.invokeSelector "displayLinkWithTarget:selector:"

  # Scheduling the Display Link to Send Notifications
  addToRunLoop: @nativeSelector("addToRunLoop:forMode:").
                     returnType( -> ck.sig.Void ).
                     paramTypes( -> [ foundation.NSRunLoop, ck.sig.NSString ] )
  removeFromRunLoop: @nativeSelector("removeFromRunLoop:forMode:").
                          returnType( -> ck.sig.Void ).
                          paramTypes( -> [ foundation.NSRunLoop, ck.sig.NSString ] )
  invalidate: @nativeSelector("invalidate").
                   returnType( -> ck.sig.Void )

  # Configuring the Display Link
  @instanceProperty "duration"
  @instanceProperty "frameInterval"
  @instanceProperty "paused"
  @instanceProperty "timestamp"

  @register()
