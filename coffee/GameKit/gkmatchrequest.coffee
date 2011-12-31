# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKMatchRequest = class GKMatchRequest extends foundation.NSObject
  @register()

  # Restricting the Number of Players
  ck.instanceProperty @, "maxPlayers"
  ck.instanceProperty @, "minPlayers"

  # Creating Subsets of Players
  ck.instanceProperty @, "playerGroup"
  ck.instanceProperty @, "playerAttributes"

  # Inviting an Initial Group of Players
  ck.instanceProperty @, "playersToInvite"
