# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKInvite extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Invitation Properties
  ck.addProperty @::, "hosted"
  ck.addProperty @::, "inviter"

new ck.RegisterAttribute GKInvite, "GKInvite"
exports.GKInvite = GKInvite
