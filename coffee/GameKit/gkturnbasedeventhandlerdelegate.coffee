# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKTurnBasedEventHandlerDelegate"
Protocol = foundation.Protocol

class GKTurnBasedEventHandlerDelegate extends foundation.Protocol

  # Receiving Turn-based Events
  handleInviteFromGameCenter: Protocol.optionalMethod ("handleInviteFromGameCenter:")
  handleTurnEventForMatch:    Protocol.optionalMethod ("handleTurnEventForMatch:")
  handleMatchEnded:           Protocol.optionalMethod ("handleMatchEnded:")

new ck.RegisterAttribute GKTurnBasedEventHandlerDelegate, "GKTurnBasedEventHandlerDelegate"
exports.UIWebView = GKTurnBasedEventHandlerDelegate
