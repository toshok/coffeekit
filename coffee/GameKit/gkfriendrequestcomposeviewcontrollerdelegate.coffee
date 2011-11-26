# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKFriendRequestComposeViewControllerDelegate"
Protocol = foundation.Protocol

class GKFriendRequestComposeViewControllerDelegate extends foundation.Protocol

  # Responding to User Events
  didFinish: Protocol.requiredMethod ("friendRequestComposeViewControllerDidFinish:")


new ck.RegisterAttribute GKFriendRequestComposeViewControllerDelegate, "GKFriendRequestComposeViewControllerDelegate"
exports.UIWebView = GKFriendRequestComposeViewControllerDelegate
