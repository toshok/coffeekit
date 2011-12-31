# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKMatchmaker = class GKMatchmaker extends foundation.NSObject
  @register()

  # Retrieving the Shared Matchmaker
  @sharedMatchmaker: objc.invokeSelector "sharedMatchmaker"

  # Receiving Invitations From Other Players
  ck.instanceProperty @, "inviteHandler"

  # Matching Players
  findMatchForRequest: objc.invokeSelector "findMatchForRequest:withCompletionHandler:"
  findPlayersForHostedMatchRequest: objc.invokeSelector "findPlayersForHostedMatchRequest:withCompletionHandler:"
  addPlayersToMatch: objc.invokeSelector "addPlayersToMatch:matchRequest:completionHandler:"
  cancel: objc.invokeSelector "cancel"
  queryPlayerGroupActivity: objc.invokeSelector "queryPlayerGroupActivity:withCompletionHandler:"
  queryActivity: objc.invokeSelector "queryActivityWithCompletionHandler:"
