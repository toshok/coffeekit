# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKMatchRequest extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Restricting the Number of Players
  ck.addProperty @::, "maxPlayers"
  ck.addProperty @::, "minPlayers"

  # Creating Subsets of Players
  ck.addProperty @::, "playerGroup"
  ck.addProperty @::, "playerAttributes"

  # Inviting an Initial Group of Players
  ck.addProperty @::, "playersToInvite"

new ck.RegisterAttribute GKMatchRequest, "GKMatchRequest"
exports.GKMatchRequest = GKMatchRequest
