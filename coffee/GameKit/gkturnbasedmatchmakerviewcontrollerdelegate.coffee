# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKTurnBasedMatchmakerViewControllerDelegate"
Protocol = foundation.Protocol

class GKTurnBasedMatchmakerViewControllerDelegate extends foundation.Protocol

  # Events
  didFindMatch:       Protocol.requiredMethod ("turnBasedMatchmakerViewController:didFindMatch:")
  playerQuitForMatch: Protocol.requiredMethod ("turnBasedMatchmakerViewController:playerQuitForMatch:")
  didFailWithError:   Protocol.requiredMethod ("turnBasedMatchmakerViewController:didFailWithError:")
  wasCancelled:       Protocol.requiredMethod ("turnBasedMatchmakerViewControllerWasCancelled:")

new ck.RegisterAttribute GKTurnBasedMatchmakerViewControllerDelegate, "GKTurnBasedMatchmakerViewControllerDelegate"
exports.UIWebView = GKTurnBasedMatchmakerViewControllerDelegate
