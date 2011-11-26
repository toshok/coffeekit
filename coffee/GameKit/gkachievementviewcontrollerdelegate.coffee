# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKAchievementViewControllerDelegate"
Protocol = foundation.Protocol

class GKAchievementViewControllerDelegate extends foundation.Protocol

  # Responding to a Dismiss Action
  didFinish: Protocol.requiredMethod ("achievementViewControllerDidFinish:")

new ck.RegisterAttribute GKAchievementViewControllerDelegate, "GKAchievementViewControllerDelegate"
exports.UIWebView = GKAchievementViewControllerDelegate
