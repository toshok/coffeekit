# This file is part of coffeekit.  for licensing information, see the LICENSE file

exports.GKTurnBasedParticipant = class GKTurnBasedParticipant extends foundation.NSObject
  # Participant Information
  @instanceProperty "playerID"
  @instanceProperty "lastTurnDate"
  @instanceProperty "status"

  # Setting the Match Outcome
  @instanceProperty "matchOutcome"

  @register()
