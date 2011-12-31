# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKLocalPlayer = class GKLocalPlayer extends GKPlayer
  @register()

  # Accessing the Shared Local Player
  @localPlayer: objc.invokeSelector "localPlayer"

  # Authentication
  authenticate: objc.invokeSelector "authenticateWithCompletionHandler:"
  ck.instanceProperty @, "authenticated"

  # Accessing Friends
  loadFriends: objc.invokeSelector "loadFriendsWithCompletionHandler:"
  ck.instanceProperty @, "friends"

  # Age-Restricted Content
  ck.instanceProperty @, "underage"
