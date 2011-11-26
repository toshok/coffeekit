# This file is part of coffeekit.  for licensing information, see the LICENSE file

class GKTurnBasedParticipant extends foundation.NSObject
  constructor: (handle) -> super (if handle then handle else @.constructor.name)

  # Participant Information
  ck.addProperty @::, "playerID"
  ck.addProperty @::, "lastTurnDate"
  ck.addProperty @::, "status"

  # Setting the Match Outcome
  ck.addProperty @::, "matchOutcome"

new ck.RegisterAttribute GKTurnBasedParticipant, "GKTurnBasedParticipant"
exports.GKTurnBasedParticipant = GKTurnBasedParticipant
