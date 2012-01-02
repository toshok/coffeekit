# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKMatchmaker = class GKMatchmaker extends foundation.NSObject
  # Retrieving the Shared Matchmaker
  @sharedMatchmaker: @nativeSelector "sharedMatchmaker"

  # Receiving Invitations From Other Players
  @instanceProperty "inviteHandler"

  # Matching Players
  findMatchForRequest: @nativeSelector "findMatchForRequest:withCompletionHandler:"
  findPlayersForHostedMatchRequest: @nativeSelector "findPlayersForHostedMatchRequest:withCompletionHandler:"
  addPlayersToMatch: @nativeSelector "addPlayersToMatch:matchRequest:completionHandler:"
  cancel: @nativeSelector "cancel"
  queryPlayerGroupActivity: @nativeSelector "queryPlayerGroupActivity:withCompletionHandler:"
  queryActivity: @nativeSelector "queryActivityWithCompletionHandler:"

  @register()
