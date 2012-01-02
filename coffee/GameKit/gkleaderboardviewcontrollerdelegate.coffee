# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKLeaderboardViewControllerDelegate"
Protocol = foundation.Protocol

exports.UIWebView = class GKLeaderboardViewControllerDelegate extends foundation.Protocol
  # Handling User Actions
  didFinish: Protocol.requiredMethod ("leaderboardViewControllerDidFinish:")

  @register()
