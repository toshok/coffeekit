# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKTurnBasedMatchmakerViewControllerDelegate"
Protocol = foundation.Protocol

exports.GKTurnBasedMatchmakerViewControllerDelegate = class GKTurnBasedMatchmakerViewControllerDelegate extends foundation.Protocol
  @register()

  # Events
  didFindMatch:       Protocol.requiredMethod ("turnBasedMatchmakerViewController:didFindMatch:")
  playerQuitForMatch: Protocol.requiredMethod ("turnBasedMatchmakerViewController:playerQuitForMatch:")
  didFailWithError:   Protocol.requiredMethod ("turnBasedMatchmakerViewController:didFailWithError:")
  wasCancelled:       Protocol.requiredMethod ("turnBasedMatchmakerViewControllerWasCancelled:")
