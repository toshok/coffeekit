# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKLocalPlayer = class GKLocalPlayer extends GKPlayer
  # Accessing the Shared Local Player
  @localPlayer: @nativeSelector "localPlayer"

  # Authentication
  authenticate: @nativeSelector "authenticateWithCompletionHandler:"
  @instanceProperty "authenticated"

  # Accessing Friends
  loadFriends: @nativeSelector "loadFriendsWithCompletionHandler:"
  @instanceProperty "friends"

  # Age-Restricted Content
  @instanceProperty "underage"

  @register()
