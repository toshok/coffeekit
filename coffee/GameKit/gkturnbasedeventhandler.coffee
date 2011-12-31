# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKTurnBasedEventHandler = class GKTurnBasedEventHandler extends foundation.NSObject
  @register()

  # Retrieving the Shared Instance
  @sharedTurnBasedEventHandler: objc.invokeSelector "sharedTurnBasedEventHandler"

  # Getting and Setting the Delegate
  ck.instanceProperty @, "delegate", { set: (v) -> objc.invokeSelector("setDelegate:").call this, (ck.autobox v, GKTurnBasedEventHandlerDelegate) }
