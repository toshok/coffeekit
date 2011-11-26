# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKPlayer extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Loading Player Details
  @loadPlayersForIdentifiers: objc.invokeSelector ("loadPlayersForIdentifiers:withCompletionHandler:")

  # Identifying the Player
  ck.addProperty @::, "playerID"

  # Player Details
  ck.addProperty @::, "alias"
  ck.addProperty @::, "isFriend"

  # Player Photos
  loadPhotoForSize: objc.invokeSelector ("loadPhotoForSize:withCompletionHandler:")

new ck.RegisterAttribute GKPlayer, "GKPlayer"
exports.GKPlayer = GKPlayer
