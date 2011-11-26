# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKMatchmaker extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Retrieving the Shared Matchmaker
  @sharedMatchmaker: objc.invokeSelector ("sharedMatchmaker")

  # Receiving Invitations From Other Players
  ck.addProperty @::, "inviteHandler"

  # Matching Players
  findMatchForRequest: objc.invokeSelector ("findMatchForRequest:withCompletionHandler:")
  findPlayersForHostedMatchRequest: objc.invokeSelector ("findPlayersForHostedMatchRequest:withCompletionHandler:")
  addPlayersToMatch: objc.invokeSelector ("addPlayersToMatch:matchRequest:completionHandler:")
  cancel: objc.invokeSelector ("cancel")
  queryPlayerGroupActivity: objc.invokeSelector ("queryPlayerGroupActivity:withCompletionHandler:")
  queryActivity: objc.invokeSelector ("queryActivityWithCompletionHandler:")

new ck.RegisterAttribute GKMatchmaker, "GKMatchmaker"
exports.GKMatchmaker = GKMatchmaker
