# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKLocalPlayer extends GKPlayer
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Accessing the Shared Local Player
  @localPlayer: objc.invokeSelector ("localPlayer")

  # Authentication
  authenticate: objc.invokeSelector ("authenticateWithCompletionHandler:")
  ck.addProperty @::, "authenticated"

  # Accessing Friends
  loadFriends: objc.invokeSelector ("loadFriendsWithCompletionHandler:")
  ck.addProperty @::, "friends"

  # Age-Restricted Content
  ck.addProperty @::, "underage"

new ck.RegisterAttribute GKLocalPlayer, "GKLocalPlayer"
exports.GKLocalPlayer = GKLocalPlayer
