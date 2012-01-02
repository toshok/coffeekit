# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKInvite = class GKInvite extends foundation.NSObject
  # Invitation Properties
  @instanceProperty "hosted"
  @instanceProperty "inviter"

  @register()
