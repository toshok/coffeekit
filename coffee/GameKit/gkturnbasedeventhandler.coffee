# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKTurnBasedEventHandler = class GKTurnBasedEventHandler extends foundation.NSObject
  # Retrieving the Shared Instance
  @sharedTurnBasedEventHandler: @nativeSelector "sharedTurnBasedEventHandler"

  # Getting and Setting the Delegate
  @autoboxProperty "delegate", GKTurnBasedEventHandlerDelegate

  @register()
