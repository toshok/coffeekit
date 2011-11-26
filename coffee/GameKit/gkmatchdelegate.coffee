# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKMatchDelegate"
Protocol = foundation.Protocol

class GKMatchDelegate extends foundation.Protocol

  # Receiving Data from Other Players
  didReceiveData: Protocol.requiredMethod ("match:didReceiveData:fromPlayer:")

  # Receiving State Notifications About Other Players
  playerDidChangeState: Protocol.optionalMethod ("match:player:didChangeState:")

  # Handling Errors
  connectionWithPlayerFailed: Protocol.optionalMethod ("match:connectionWithPlayerFailed:withError:")
  didFail: Protocol.optionalMethod ("match:didFailWithError:")

  # Reinviting a Player
  shouldReinvitePlayer: Protocol.optionalMethod ("match:shouldReinvitePlayer:")

new ck.RegisterAttribute GKMatchDelegate, "GKMatchDelegate"
exports.UIWebView = GKMatchDelegate
