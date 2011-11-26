# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKTurnBasedEventHandler extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Retrieving the Shared Instance
  @sharedTurnBasedEventHandler: objc.invokeSelector ("sharedTurnBasedEventHandler")

  # Getting and Setting the Delegate
  ck.addProperty @::, "delegate", set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKTurnBasedEventHandlerDelegate)

new ck.RegisterAttribute GKTurnBasedEventHandler, "GKTurnBasedEventHandler"
exports.GKTurnBasedEventHandler = GKTurnBasedEventHandler
