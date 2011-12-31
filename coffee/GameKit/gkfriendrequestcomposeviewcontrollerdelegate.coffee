# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKFriendRequestComposeViewControllerDelegate"
Protocol = foundation.Protocol

exports.UIWebView = class GKFriendRequestComposeViewControllerDelegate extends foundation.Protocol
  @register()

  # Responding to User Events
  didFinish: Protocol.requiredMethod ("friendRequestComposeViewControllerDidFinish:")
