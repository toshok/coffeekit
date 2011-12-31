# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKPlayer = class GKPlayer extends foundation.NSObject
  @register()

  # Loading Player Details
  @loadPlayersForIdentifiers: objc.invokeSelector "loadPlayersForIdentifiers:withCompletionHandler:"

  # Identifying the Player
  ck.instanceProperty @, "playerID"

  # Player Details
  ck.instanceProperty @, "alias"
  ck.instanceProperty @, "isFriend"

  # Player Photos
  loadPhotoForSize: objc.invokeSelector "loadPhotoForSize:withCompletionHandler:"
