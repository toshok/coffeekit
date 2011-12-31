# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKTurnBasedParticipant = class GKTurnBasedParticipant extends foundation.NSObject
  @register()

  # Participant Information
  ck.instanceProperty @, "playerID"
  ck.instanceProperty @, "lastTurnDate"
  ck.instanceProperty @, "status"

  # Setting the Match Outcome
  ck.instanceProperty @, "matchOutcome"
