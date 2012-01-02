# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKTurnBasedEventHandlerDelegate"

exports.UIWebView = class GKTurnBasedEventHandlerDelegate extends foundation.Protocol
  # Receiving Turn-based Events
  handleInviteFromGameCenter: @optionalMethod ("handleInviteFromGameCenter:")
  handleTurnEventForMatch:    @optionalMethod ("handleTurnEventForMatch:")
  handleMatchEnded:           @optionalMethod ("handleMatchEnded:")

  @register()
