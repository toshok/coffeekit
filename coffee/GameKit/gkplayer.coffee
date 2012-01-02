# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKPlayer = class GKPlayer extends foundation.NSObject
  # Loading Player Details
  @loadPlayersForIdentifiers: @nativeSelector "loadPlayersForIdentifiers:withCompletionHandler:"

  # Identifying the Player
  @instanceProperty "playerID"

  # Player Details
  @instanceProperty "alias"
  @instanceProperty "isFriend"

  # Player Photos
  loadPhotoForSize: @nativeSelector "loadPhotoForSize:withCompletionHandler:"

  @register()
