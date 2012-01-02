# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKMatchmakerViewControllerDelegate"

exports.UIWebView = class GKMatchmakerViewControllerDelegate extends foundation.Protocol
  # Completing a Match Request
  didFindMatch:                     @optionalMethod "matchmakerViewController:didFindMatch:"
  didFindPlayers:                   @optionalMethod "matchmakerViewController:didFindPlayers:"

  # Handling Cancellations
  wasCancelled:                     @requiredMethod "matchmakerViewControllerWasCancelled:"

  # Handling Errors
  didFail:                          @requiredMethod "matchmakerViewController:didFailWithError:"

  # Hosted Matches
  didReceiveAcceptFromHostedPlayer: @optionalMethod "matchmakerViewController:didReceiveAcceptFromHostedPlayer:"

  @register()
