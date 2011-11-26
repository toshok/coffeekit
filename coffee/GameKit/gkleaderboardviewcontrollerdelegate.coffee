# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKLeaderboardViewControllerDelegate"
Protocol = foundation.Protocol

class GKLeaderboardViewControllerDelegate extends foundation.Protocol

  # Handling User Actions
  didFinish: Protocol.requiredMethod ("leaderboardViewControllerDidFinish:")

new ck.RegisterAttribute GKLeaderboardViewControllerDelegate, "GKLeaderboardViewControllerDelegate"
exports.UIWebView = GKLeaderboardViewControllerDelegate
