# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKMatchmakerViewControllerDelegate"
Protocol = foundation.Protocol

exports.UIWebView = class GKMatchmakerViewControllerDelegate extends foundation.Protocol
  @register()

  # Completing a Match Request
  didFindMatch: Protocol.optionalMethod ("matchmakerViewController:didFindMatch:")
  didFindPlayers: Protocol.optionalMethod ("matchmakerViewController:didFindPlayers:")

  # Handling Cancellations
  wasCancelled: Protocol.requiredMethod ("matchmakerViewControllerWasCancelled:")

  # Handling Errors
  didFail: Protocol.requiredMethod ("matchmakerViewController:didFailWithError:")

  # Hosted Matches
  didReceiveAcceptFromHostedPlayer: Protocol.optionalMethod ("matchmakerViewController:didReceiveAcceptFromHostedPlayer:")
