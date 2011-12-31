# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKInvite = class GKInvite extends foundation.NSObject
  @register()

  # Invitation Properties
  ck.instanceProperty @, "hosted"
  ck.instanceProperty @, "inviter"
