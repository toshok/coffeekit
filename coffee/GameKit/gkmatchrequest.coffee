# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKMatchRequest = class GKMatchRequest extends foundation.NSObject
  # Restricting the Number of Players
  @instanceProperty "maxPlayers"
  @instanceProperty "minPlayers"

  # Creating Subsets of Players
  @instanceProperty "playerGroup"
  @instanceProperty "playerAttributes"

  # Inviting an Initial Group of Players
  @instanceProperty "playersToInvite"

  @register()
