# This file is part of coffeekit.  for licensing information, see the LICENSE file

#console.log "GKMatchDelegate"

exports.UIWebView = class GKMatchDelegate extends foundation.Protocol
  # Receiving Data from Other Players
  didReceiveData:             @requiredMethod "match:didReceiveData:fromPlayer:"

  # Receiving State Notifications About Other Players
  playerDidChangeState:       @optionalMethod "match:player:didChangeState:"

  # Handling Errors
  connectionWithPlayerFailed: @optionalMethod "match:connectionWithPlayerFailed:withError:"
  didFail:                    @optionalMethod "match:didFailWithError:"

  # Reinviting a Player
  shouldReinvitePlayer:       @optionalMethod "match:shouldReinvitePlayer:"

  @register()
